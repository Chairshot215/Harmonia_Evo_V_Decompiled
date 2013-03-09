.class public abstract Lcom/htc/widget/AbsSpinner;
.super Lcom/htc/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AbsSpinner$1;,
        Lcom/htc/widget/AbsSpinner$WaveRunnable;,
        Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;,
        Lcom/htc/widget/AbsSpinner$RecycleBin;,
        Lcom/htc/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAND_MAX:I = 0x7

.field static MAX_AVERAGE_COUNT:I = 0x0

.field private static final PORT_MAX:I = 0x4


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field private mAnimationWidth:I

.field mBlockLayoutRequests:Z

.field private mChangeWidthAnimation:Z

.field private mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mExpandedPos:I

.field private mExpandedWidth:I

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/htc/widget/FastScroller;

.field mFirstItemX:I

.field mHeightMeasureSpec:I

.field mHighBorder:I

.field private mIndicatorIndex:I

.field private mIsDragBinGridView:Z

.field private mLastIndicatorIndex:I

.field private mLateShrinkedFlag:Z

.field mLowBorder:I

.field final mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

.field mReducedPos:I

.field private mReducedWidth:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mShrinkedPos:I

.field private mShrinkedWidth:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

.field private mWaveRunnableRunning:Z

.field mWidthMeasureSpec:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/AdapterView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v0, Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    new-instance v0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    new-instance v0, Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->initAbsSpinner()V

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setMaxAverageCount()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    new-instance v3, Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/AbsSpinner;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    new-instance v3, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    invoke-direct {v3, p0, v6}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    new-instance v3, Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v3, p0, v6}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->initAbsSpinner()V

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setMaxAverageCount()V

    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/AbsSpinner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/AbsSpinner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    return p1
.end method

.method static synthetic access$312(Lcom/htc/widget/AbsSpinner;I)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/widget/AbsSpinner;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return p1
.end method

.method static synthetic access$720(Lcom/htc/widget/AbsSpinner;I)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0

    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return p1
.end method

.method static synthetic access$812(Lcom/htc/widget/AbsSpinner;I)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return p1
.end method

.method private initAbsSpinner()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setWillNotDraw(Z)V

    return-void
.end method

.method private setMaxAverageCount()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/widget/AbsSpinner;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->wm:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v1, 0x4

    sput v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x7

    sput v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    goto :goto_0
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    #calls: Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->access$1200(Lcom/htc/widget/AbsSpinner$WaveRunnable;)V

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    #calls: Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->end()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->access$1300(Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method getDragBinGridView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method getExpandedPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    return v0
.end method

.method getExpandedWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method getIndicatorIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    return v0
.end method

.method getLastIndicatorIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    return v0
.end method

.method getLayoutParamsWidth()I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsWidthWithNoAnimation()I
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    sget v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    sget v2, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method getMaxAverageCount()I
    .locals 1

    sget v0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    return v0
.end method

.method getReducedPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    return v0
.end method

.method getReducedWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    iget v0, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getShrinkedPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    return v0
.end method

.method getShrinkedWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/FastScroller;->onScroll(Lcom/htc/widget/AbsSpinner;III)V

    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScrollEnabled:Z

    return v0
.end method

.method isWaveRunnableRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setMaxAverageCount()V

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->onDetachedFromWindow()V

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    iget-boolean v8, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->handleDataChanged()V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/htc/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, v5}, Lcom/htc/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    invoke-virtual {p0, v5}, Lcom/htc/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v8, p0, v5, p1, p2}, Lcom/htc/widget/FastScroller;->measureTmumbView(Lcom/htc/widget/AbsSpinner;Landroid/view/View;II)V

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v8}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    iput v8, p0, Lcom/htc/widget/AbsSpinner;->mHighBorder:I

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v9}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    :cond_4
    if-eqz v1, :cond_5

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    if-nez v6, :cond_5

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, p2}, Lcom/htc/widget/AbsSpinner;->resolveSize(II)I

    move-result v0

    invoke-static {v3, p1}, Lcom/htc/widget/AbsSpinner;->resolveSize(II)I

    move-result v7

    invoke-virtual {p0, v7, v0}, Lcom/htc/widget/AbsSpinner;->setMeasuredDimension(II)V

    iput p2, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    return-void

    :cond_6
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    :cond_7
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    :cond_8
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    :cond_9
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p1

    check-cast v0, Lcom/htc/widget/AbsSpinner$SavedState;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-wide v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iput-boolean v5, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    iput-boolean v5, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    iget-wide v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/AdapterView;->mSyncRowId:J

    iget v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/AdapterView;->mSyncPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/AdapterView;->mSyncMode:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/htc/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    iget-wide v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/FastScroller;->onSizeChanged(IIII)V

    :cond_0
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/AbsSpinner;->onMeasure(II)V

    return-void
.end method

.method public pointToPosition(II)I
    .locals 5

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p0, v3}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v0

    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    iget v3, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v2, v3, v1

    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/htc/widget/AdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mDataChanged:Z

    iput-boolean v0, p0, Lcom/htc/widget/AdapterView;->mNeedSync:Z

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->removeAllViewsInLayout()V

    iput v2, p0, Lcom/htc/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/AdapterView;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->resetList()V

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/FastScroller;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_1
    iput-object p1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iput v0, p0, Lcom/htc/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/AdapterView;->mOldSelectedRowId:J

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/AdapterView;->mOldItemCount:I

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkFocus()V

    new-instance v1, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/AdapterView;)V

    iput-object v1, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    iget v1, p0, Lcom/htc/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkSelectionChanged()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkFocus()V

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->resetList()V

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method setDragBinGridView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    return-void
.end method

.method setExpandedPosition(I)V
    .locals 2

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    :cond_0
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    return-void
.end method

.method setFastScrollEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mFastScrollEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/widget/FastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/FastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    goto :goto_0
.end method

.method setIndicatorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    return-void
.end method

.method setLastIndicatorIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    return-void
.end method

.method setLateShrinkedFlag()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    return-void
.end method

.method public setSelection(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/AbsSpinner;->setSelectionInt(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2

    iget v1, p0, Lcom/htc/widget/AdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    iget v1, p0, Lcom/htc/widget/AdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0, v0, p2}, Lcom/htc/widget/AbsSpinner;->layout(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    :cond_0
    return-void
.end method

.method setShrinkedPosition(I)V
    .locals 2

    const/4 v1, -0x1

    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setIndicatorIndex(I)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setLastIndicatorIndex(I)V

    :cond_0
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    return-void
.end method

.method setShrinkedPosition(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    :cond_0
    return-void
.end method

.method startWaveRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->start()V

    return-void
.end method

.method startWidthAnimation(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->start(II)V

    return-void
.end method
