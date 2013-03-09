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

    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/FastScroller;->MIN_PAGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/AbsSpinner;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    iput-object v2, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    iput v1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    iput v1, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    new-instance v0, Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$RecycleBin;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    new-instance v0, Lcom/htc/widget/FastScroller$CountObserver;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/FastScroller$CountObserver;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    invoke-direct {p0, p1}, Lcom/htc/widget/FastScroller;->init(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    iput-boolean v3, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    new-instance v0, Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/FastScroller$FlingRunnable;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/FastScroller;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->endAnimation(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mItemCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/FastScroller;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/widget/FastScroller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/widget/FastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/widget/FastScroller;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return p1
.end method

.method static synthetic access$512(Lcom/htc/widget/FastScroller;I)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/FastScroller;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/FastScroller;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/FastScroller$FlingRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    return-object v0
.end method

.method private cancel()V
    .locals 21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v8, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_0

    add-int/lit8 v10, v14, -0x1

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

    int-to-float v0, v3

    move/from16 v17, v0

    sub-float v12, v5, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    if-gez v17, :cond_1

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v10, -0x1

    :cond_1
    mul-int v17, v14, v9

    sub-int v17, v17, v6

    if-lez v17, :cond_2

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    mul-int v17, v10, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v7, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    sub-int v18, v7, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v7, v10}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_0
.end method

.method private endAnimation(IZ)V
    .locals 6

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/AbsSpinner;->getFirstVisiblePosition()I

    move-result v3

    sub-int v1, p1, v3

    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v3, v1}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, p1, v4, v5}, Lcom/htc/widget/AbsSpinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    :cond_1
    return-void

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

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const v3, 0x2010028

    const v4, 0x2080083

    const-string v5, "common_subnav_selector_tab"

    invoke-static {p1, v3, v4, v5}, Lcom/htc/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/htc/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-boolean v6, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    new-instance v3, Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-direct {v3, p0}, Lcom/htc/widget/FastScroller$ScrollFade;-><init>(Lcom/htc/widget/FastScroller;)V

    iput-object v3, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v6, [I

    const/4 v5, 0x0

    const v6, 0x1010036

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/widget/FastScroller;->setState(I)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int v3, v2, v2

    iput v3, p0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    iput v2, p0, Lcom/htc/widget/FastScroller;->mTouchSlop:I

    return-void
.end method

.method private removeLongPressCallback()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resetThumbPos()V
    .locals 6

    iget v0, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v5, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p2, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/AbsSpinner;->setDragBinGridView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mThumbPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    return-void
.end method


# virtual methods
.method addSelectedView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method adjustGallery(I)V
    .locals 8

    iget v2, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v4, v6, v7

    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v6}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

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

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v6, v4, v6

    if-gez v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    iget-object v6, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v6, Lcom/htc/widget/Gallery;

    float-to-int v7, v3

    invoke-virtual {v6, v7}, Lcom/htc/widget/Gallery;->scrollTo(I)V

    return-void
.end method

.method calibrateThumb(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    return-void
.end method

.method cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$RecycleBin;->clear()V

    return-void
.end method

.method closeScreen(I)V
    .locals 6

    const-string v4, "FastScroller"

    const-string v5, "closeScreen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v4}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v4, v1, Lcom/htc/widget/CarouselActivity;

    if-eqz v4, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v4, p1}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/CarouselActivity;->onTabEndSliding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method closeThumb()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    iget v10, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v8, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    const/4 v0, -0x1

    iget v10, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-virtual {v5}, Lcom/htc/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v0

    const/16 v10, 0x7f

    if-ge v0, v10, :cond_2

    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    int-to-float v10, v8

    iget v11, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int v3, v4, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xff

    sub-int v6, v3, v10

    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    invoke-virtual {v10, v11, v6, v12, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    :cond_3
    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    if-nez v10, :cond_4

    int-to-float v10, v9

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v10, v9

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    add-int v1, v9, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v10, v1

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    neg-int v10, v1

    int-to-float v10, v10

    neg-int v11, v2

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget v10, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    if-nez v0, :cond_5

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/FastScroller;->setState(I)V

    goto :goto_0

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

    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    return v0
.end method

.method getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    return v0
.end method

.method getOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    return v0
.end method

.method public isDragging()Z
    .locals 2

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

    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 2

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

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    div-int/lit8 v7, v2, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v5, v0}, Lcom/htc/widget/FastScroller$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v5, v0, v4, v4}, Lcom/htc/widget/BinAdapter;->getSeletedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mRecycler:Lcom/htc/widget/FastScroller$RecycleBin;

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/FastScroller$RecycleBin;->put(ILandroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    :goto_0
    return-object v1

    :cond_1
    if-eqz p1, :cond_2

    iput-object v4, p0, Lcom/htc/widget/FastScroller;->mView:Landroid/view/View;

    :cond_2
    move-object v1, v4

    goto :goto_0
.end method

.method final measureTmumbView(Lcom/htc/widget/AbsSpinner;Landroid/view/View;II)V
    .locals 13

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mItemHeight:I

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

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-static {v9, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    const/4 v9, 0x0

    move/from16 v0, p4

    invoke-static {v9, v0}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingTop:I

    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    iget-object v9, p1, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iput v9, p0, Lcom/htc/widget/FastScroller;->mPaddingBottom:I

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

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbH:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    iget v2, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v1, v9, v10

    iget v9, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v6, v9, v10

    iget-object v9, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    invoke-interface {v9}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ltz v1, :cond_0

    if-gez v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    :cond_1
    mul-int v9, v8, v4

    sub-int/2addr v9, v1

    if-lez v9, :cond_3

    iget v3, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    int-to-float v9, v3

    add-int/lit8 v10, v8, -0x1

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v10, v6, v10

    int-to-float v10, v10

    mul-float v7, v9, v10

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float v9, v7, v9

    mul-int v10, v8, v4

    sub-int/2addr v10, v1

    int-to-float v10, v10

    mul-float v5, v9, v10

    iget v9, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    sub-int v9, v6, v9

    if-gez v9, :cond_2

    const/4 v7, 0x0

    const/4 v5, 0x0

    :cond_2
    int-to-float v9, v4

    div-float v9, v5, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    neg-int v9, v4

    iget v10, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v10, v4

    int-to-float v10, v10

    sub-float/2addr v10, v5

    float-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    float-to-int v9, v7

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    :goto_0
    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    return-void

    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisiblePosition:I

    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/widget/FastScroller;->mFirstVisibleOffset:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    mul-int v9, v3, v4

    iget v10, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0
.end method

.method moveNext()Z
    .locals 21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_2

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    if-ge v9, v0, :cond_1

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    int-to-float v0, v3

    move/from16 v17, v0

    sub-float v12, v4, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    if-gez v17, :cond_3

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v9, -0x1

    :goto_0
    mul-int v17, v14, v8

    sub-int v17, v17, v5

    if-lez v17, :cond_0

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

    :goto_1
    const/16 v17, 0x1

    :goto_2
    return v17

    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    mul-int v17, v9, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v6, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    sub-int v18, v6, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6, v9}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    :cond_1
    move v9, v10

    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    :cond_3
    move v9, v10

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v16, v17, v18

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_2

    add-int/lit8 v10, v9, -0x1

    if-lez v9, :cond_1

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v13, v17, v18

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v3, v17, v18

    int-to-float v0, v3

    move/from16 v17, v0

    sub-float v12, v4, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    if-gez v17, :cond_3

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v9, -0x1

    :goto_0
    mul-int v17, v14, v8

    sub-int v17, v17, v5

    if-lez v17, :cond_0

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

    :goto_1
    const/16 v17, 0x1

    :goto_2
    return v17

    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    mul-int v17, v9, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v18, v0

    add-int v6, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v17, v0

    sub-int v18, v6, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6, v9}, Lcom/htc/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    goto :goto_1

    :cond_1
    move v9, v10

    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    :cond_3
    move v9, v10

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090031

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    :cond_1
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mFirstAdd:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    return-void
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/AbsSpinner;III)V
    .locals 10

    const/4 v9, 0x0

    sub-int v6, p4, p3

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    invoke-virtual {p1, v9}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iget v4, p0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int v5, v6, v7

    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/widget/FastScroller;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    mul-int v6, p4, v4

    sub-int/2addr v6, v0

    if-lez v6, :cond_0

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

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    if-ge v6, v7, :cond_2

    iget v6, p0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    :goto_0
    iput v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

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

    :cond_0
    iget-boolean v6, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    iput-boolean v9, p0, Lcom/htc/widget/FastScroller;->mChangedBounds:Z

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    iget v6, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    if-ne p2, v6, :cond_4

    :goto_2
    return-void

    :cond_2
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    goto :goto_1

    :cond_4
    iput p2, p0, Lcom/htc/widget/FastScroller;->mVisibleItem:I

    goto :goto_2
.end method

.method onSizeChanged(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller$CountObserver;->onChanged()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/widget/FastScroller;->mThumbTop:I

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    :cond_0
    const/16 v30, 0x0

    :goto_0
    return v30

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

    :cond_2
    const/16 v30, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    and-int/lit16 v0, v6, 0xff

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    const/16 v30, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v30

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/FastScroller$FlingRunnable;->isRunning()Z

    move-result v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mFlingRunnable:Lcom/htc/widget/FastScroller$FlingRunnable;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/FastScroller$FlingRunnable;->stop(Z)V

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

    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->setState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

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

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->showScreen()V

    float-to-int v0, v9

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mTouchX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    new-instance v30, Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/FastScroller$CheckForLongPress;-><init>(Lcom/htc/widget/FastScroller;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/FastScroller$CheckForLongPress;->rememberSelectedTab()V

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

    const/16 v30, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v30, v0

    if-nez v30, :cond_a

    new-instance v30, Lcom/htc/widget/FastScroller$CheckForTap;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/htc/widget/FastScroller$CheckForTap;-><init>(Lcom/htc/widget/FastScroller;Lcom/htc/widget/FastScroller$1;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

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

    const/16 v30, 0x1

    goto/16 :goto_0

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-nez v30, :cond_b

    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/htc/widget/AbsSpinner;->requestDisallowInterceptTouchEvent(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    add-int v29, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v31, v0

    sub-int v5, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    div-int/lit8 v31, v28, 0x2

    move-object/from16 v0, v30

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v25, v30, v31

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v26

    const/16 v30, -0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    add-int/lit8 v20, v26, -0x1

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

    int-to-float v0, v5

    move/from16 v30, v0

    sub-float v23, v8, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v30, v0

    sub-int v30, v25, v30

    if-gez v30, :cond_e

    const/4 v8, 0x0

    const/16 v23, 0x0

    const/16 v20, -0x1

    :cond_e
    mul-int v30, v26, v18

    sub-int v30, v30, v11

    if-lez v30, :cond_f

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

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    const/16 v30, 0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v22, v0

    mul-int v30, v20, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v31, v0

    add-int v16, v30, v31

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

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    if-nez v30, :cond_10

    const/16 v30, 0x0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    sub-float v30, v9, v30

    move/from16 v0, v30

    float-to-int v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/MotionEvent;->getY()F

    move-result v30

    sub-float v30, v10, v30

    move/from16 v0, v30

    float-to-int v14, v0

    mul-int v30, v13, v13

    mul-int v31, v14, v14

    add-int v15, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    move/from16 v30, v0

    sub-float v23, v30, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    move/from16 v30, v0

    sub-float v24, v30, v10

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

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/FastScroller;->mScrollCompleted:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v15, v0, :cond_12

    move-object/from16 v0, p0

    iput v9, v0, Lcom/htc/widget/FastScroller;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v10, v0, Lcom/htc/widget/FastScroller;->mLastMotionY:F

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mItemWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mGalleryWidth:I

    move/from16 v17, v0

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v31, v0

    sub-int v25, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v26

    mul-int v30, v26, v18

    sub-int v30, v30, v11

    if-lez v30, :cond_18

    float-to-int v0, v9

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    div-int/lit8 v31, v31, 0x2

    sub-int v19, v30, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v30, v0

    move/from16 v0, v19

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingLeft:I

    move/from16 v19, v0

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

    const/16 v30, 0x1

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mPaddingRight:I

    move/from16 v30, v0

    sub-int v30, v17, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbW:I

    move/from16 v31, v0

    sub-int v19, v30, v31

    goto :goto_3

    :cond_15
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->adjustGallery(I)V

    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForLongPress:Lcom/htc/widget/FastScroller$CheckForLongPress;

    move-object/from16 v30, v0

    if-eqz v30, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v15, v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeLongPressCallback()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->updateScreen()V

    const/16 v30, 0x1

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v21, v0

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

    :cond_1a
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    move-object/from16 v30, v0

    check-cast v30, Lcom/htc/widget/Gallery;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    move/from16 v30, v0

    sub-int v12, v30, v21

    if-lez v12, :cond_1b

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

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/FastScroller;->mPendingCheckForTap:Lcom/htc/widget/FastScroller$CheckForTap;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/FastScroller;->mTouchSlopSquare:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v15, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->removeTapCallback()V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/widget/FastScroller;->cancel()V

    goto/16 :goto_1

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

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3}, Lcom/htc/widget/CarouselUtil;->isDataStorageFull(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/widget/CarouselSkinUtil;->isDefaultNoEditorMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0, v1, v1}, Lcom/htc/widget/AbsSpinner;->performHapticFeedback(II)Z

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->onStartTemporaryDetach()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->closeScreen(I)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    check-cast v0, Lcom/htc/widget/CarouselWidget;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    move v0, v1

    goto :goto_0
.end method

.method setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    check-cast p1, Lcom/htc/widget/BinAdapter;

    iput-object p1, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mContext:Landroid/content/Context;

    const v2, 0x2090031

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/BinAdapter;->newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mCountObserver:Lcom/htc/widget/FastScroller$CountObserver;

    invoke-virtual {v0, v1}, Lcom/htc/widget/BinAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "borranx somethins wrong"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    goto :goto_0
.end method

.method setCurrentThumb(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/FastScroller;->mCurrentTab:I

    return-void
.end method

.method setEditorMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/FastScroller;->mEnableEditorMode:Z

    return-void
.end method

.method public setState(I)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/FastScroller;->mState:I

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/htc/widget/FastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->resetThumbPos()V

    :cond_1
    :pswitch_3
    iget-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/FastScroller;->mScrollFade:Lcom/htc/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

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

    const/4 v9, -0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/widget/FastScroller;->mIsWindowClose:Z

    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v7, v1, Lcom/htc/widget/CarouselActivity;

    if-eqz v7, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget v7, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v8, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    iget v5, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v8, v5, 0x2

    invoke-virtual {v7, v6, v8}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v3

    if-eq v3, v9, :cond_1

    iget v7, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    if-eq v3, v7, :cond_1

    :cond_1
    if-eq v3, v9, :cond_2

    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    invoke-virtual {v7, v3}, Lcom/htc/widget/BinAdapter;->getTaskTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    iput v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    iget-object v7, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v8, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v7, v3, v8}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/CarouselActivity;->onTabStartSliding(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method showThumb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/FastScroller;->mEditorMode:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/FastScroller;->setState(I)V

    return-void
.end method

.method updateScreen()V
    .locals 5

    iget v3, p0, Lcom/htc/widget/FastScroller;->mThumbLeft:I

    iget v4, p0, Lcom/htc/widget/FastScroller;->mThumbW:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    iget v1, p0, Lcom/htc/widget/FastScroller;->mGalleryHeight:I

    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v2, v4}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/FastScroller;->ensureAdapter()V

    iput v0, p0, Lcom/htc/widget/FastScroller;->mPreviousPos:I

    iget-object v3, p0, Lcom/htc/widget/FastScroller;->mListAdapter:Lcom/htc/widget/BinAdapter;

    iget-object v4, p0, Lcom/htc/widget/FastScroller;->mInfoView:Landroid/view/View;

    invoke-virtual {v3, v0, v4}, Lcom/htc/widget/BinAdapter;->bindCoverView(ILandroid/view/View;)V

    :cond_0
    return-void
.end method
