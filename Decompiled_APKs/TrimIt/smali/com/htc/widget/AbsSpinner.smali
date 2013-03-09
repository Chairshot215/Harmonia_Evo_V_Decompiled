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

    .prologue
    .line 619
    const/4 v0, 0x4

    sput v0, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/htc/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 56
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 57
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 58
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 59
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    .line 655
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    .line 656
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    .line 658
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    .line 659
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    .line 660
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 662
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    .line 663
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 731
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    .line 732
    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    .line 734
    new-instance v0, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    .line 830
    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 832
    new-instance v0, Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    .line 949
    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 85
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->initAbsSpinner()V

    .line 87
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setMaxAverageCount()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    .line 57
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    .line 58
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    .line 59
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    .line 60
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 62
    new-instance v3, Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/htc/widget/AbsSpinner$RecycleBin;-><init>(Lcom/htc/widget/AbsSpinner;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    .line 655
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    .line 656
    const/4 v3, 0x1

    iput v3, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    .line 658
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    .line 659
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    .line 660
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 662
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    .line 663
    iput v5, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 731
    iput v4, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    .line 732
    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    .line 734
    new-instance v3, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    invoke-direct {v3, p0, v6}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    .line 830
    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    .line 832
    new-instance v3, Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-direct {v3, p0, v6}, Lcom/htc/widget/AbsSpinner$WaveRunnable;-><init>(Lcom/htc/widget/AbsSpinner;Lcom/htc/widget/AbsSpinner$1;)V

    iput-object v3, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    .line 949
    iput-boolean v4, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 97
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->initAbsSpinner()V

    .line 99
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setMaxAverageCount()V

    .line 102
    sget-object v3, Lcom/android/internal/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 106
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 107
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 110
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/htc/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/AbsSpinner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    return p1
.end method

.method static synthetic access$312(Lcom/htc/widget/AbsSpinner;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/widget/AbsSpinner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return p1
.end method

.method static synthetic access$720(Lcom/htc/widget/AbsSpinner;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/widget/AbsSpinner;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return p1
.end method

.method static synthetic access$812(Lcom/htc/widget/AbsSpinner;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/widget/AbsSpinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return p1
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setFocusable(Z)V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setWillNotDraw(Z)V

    .line 124
    return-void
.end method

.method private setMaxAverageCount()V
    .locals 3

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/htc/widget/AbsSpinner;->wm:Landroid/view/WindowManager;

    .line 935
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->wm:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    .line 936
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 937
    .local v0, rotation:I
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 938
    :cond_0
    const/4 v1, 0x4

    sput v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    .line 942
    .end local v0           #rotation:I
    :cond_1
    :goto_0
    return-void

    .line 940
    .restart local v0       #rotation:I
    :cond_2
    const/4 v1, 0x7

    sput v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    goto :goto_0
.end method


# virtual methods
.method cancelAnimation()V
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    #calls: Lcom/htc/widget/AbsSpinner$WaveRunnable;->end()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->access$1200(Lcom/htc/widget/AbsSpinner$WaveRunnable;)V

    .line 946
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    #calls: Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->end()V
    invoke-static {v0}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->access$1300(Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;)V

    .line 947
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 557
    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 563
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method getDragBinGridView()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    return v0
.end method

.method getExpandedPosition()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    return v0
.end method

.method getExpandedWidth()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    return v0
.end method

.method getIndicatorIndex()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    return v0
.end method

.method getLastIndicatorIndex()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    return v0
.end method

.method getLayoutParamsWidth()I
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthAnimation:Z

    if-eqz v0, :cond_0

    .line 631
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mAnimationWidth:I

    .line 634
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    goto :goto_0
.end method

.method getLayoutParamsWidthWithNoAnimation()I
    .locals 3

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 640
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 641
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getDragBinGridView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    add-int/lit8 v0, v0, 0x1

    .line 645
    :cond_0
    sget v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v1, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 651
    .end local v0           #count:I
    :goto_0
    return v1

    .line 648
    .restart local v0       #count:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getMeasuredWidth()I

    move-result v1

    sget v2, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 651
    .end local v0           #count:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method getReducedPosition()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    return v0
.end method

.method getReducedWidth()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mReducedWidth:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 346
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 347
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getShrinkedPosition()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    return v0
.end method

.method getShrinkedWidth()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedWidth:I

    return v0
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/AbsSpinner;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/htc/widget/FastScroller;->onScroll(Lcom/htc/widget/AbsSpinner;III)V

    .line 584
    :cond_0
    return-void
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScrollEnabled:Z

    return v0
.end method

.method isWaveRunnableRunning()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnableRunning:Z

    return v0
.end method

.method abstract layout(IZ)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 588
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onAttachedToWindow()V

    .line 589
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->onAttachedToWindow()V

    .line 592
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 606
    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 608
    invoke-direct {p0}, Lcom/htc/widget/AbsSpinner;->setMaxAverageCount()V

    .line 610
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 613
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->onDetachedFromWindow()V

    .line 600
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onDetachedFromWindow()V

    .line 601
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 567
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 569
    .local v0, intercepted:Z
    if-eqz v0, :cond_0

    .line 570
    const/4 v1, 0x1

    .line 574
    .end local v0           #intercepted:Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 201
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 205
    .local v6, widthMode:I
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingLeft:I

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 207
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingTop:I

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 209
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingRight:I

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 211
    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    iget v10, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mPaddingBottom:I

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 214
    iget-boolean v8, p0, Lcom/htc/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->handleDataChanged()V

    .line 218
    :cond_0
    const/4 v2, 0x0

    .line 219
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 220
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 222
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 223
    .local v4, selectedPosition:I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 225
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/htc/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 226
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_1

    .line 228
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 231
    :cond_1
    if-eqz v5, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 239
    :cond_2
    if-eqz v5, :cond_4

    .line 240
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 241
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 242
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 245
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/htc/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 247
    invoke-virtual {p0, v5}, Lcom/htc/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 248
    invoke-virtual {p0, v5}, Lcom/htc/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 250
    const/4 v1, 0x0

    .line 251
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v8, :cond_4

    .line 252
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v8, p0, v5, p1, p2}, Lcom/htc/widget/FastScroller;->measureTmumbView(Lcom/htc/widget/AbsSpinner;Landroid/view/View;II)V

    .line 253
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v8}, Lcom/htc/widget/FastScroller;->getOffset()I

    move-result v8

    iput v8, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    iput v8, p0, Lcom/htc/widget/AbsSpinner;->mHighBorder:I

    .line 254
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/htc/widget/AbsSpinner;->mLowBorder:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v9}, Lcom/htc/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/htc/widget/AbsSpinner;->mFirstItemX:I

    .line 260
    .end local v5           #view:Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 262
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 263
    if-nez v6, :cond_5

    .line 264
    iget-object v8, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 269
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 271
    invoke-static {v2, p2}, Lcom/htc/widget/AbsSpinner;->resolveSize(II)I

    move-result v0

    .line 272
    .local v0, heightSize:I
    invoke-static {v3, p1}, Lcom/htc/widget/AbsSpinner;->resolveSize(II)I

    move-result v7

    .line 274
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lcom/htc/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 275
    iput p2, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 276
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 277
    return-void

    .line 205
    .end local v0           #heightSize:I
    .end local v1           #needsMeasuring:Z
    .end local v2           #preferredHeight:I
    .end local v3           #preferredWidth:I
    .end local v4           #selectedPosition:I
    .end local v7           #widthSize:I
    :cond_6
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 207
    :cond_7
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 209
    :cond_8
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 211
    :cond_9
    iget v8, p0, Lcom/htc/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 466
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/AbsSpinner$SavedState;

    .line 468
    .local v0, ss:Lcom/htc/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 470
    iget-wide v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 471
    iput-boolean v5, p0, Lcom/htc/widget/AbsSpinner;->mDataChanged:Z

    .line 472
    iput-boolean v5, p0, Lcom/htc/widget/AbsSpinner;->mNeedSync:Z

    .line 473
    iget-wide v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/htc/widget/AbsSpinner;->mSyncRowId:J

    .line 474
    iget v1, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSyncPosition:I

    .line 475
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mSyncMode:I

    .line 476
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 478
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 453
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 454
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/htc/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/htc/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 455
    .local v0, ss:Lcom/htc/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    .line 456
    iget-wide v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    .line 461
    :goto_0
    return-object v0

    .line 459
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/htc/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/widget/FastScroller;->onSizeChanged(IIII)V

    .line 551
    :cond_0
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/AbsSpinner;->onMeasure(II)V

    .line 553
    return-void
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 385
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 386
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 387
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 388
    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v1

    .line 392
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 393
    invoke-virtual {p0, v3}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 395
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 396
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    iget v4, p0, Lcom/htc/widget/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 401
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 392
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 401
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method recycleAllViews()V
    .locals 6

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v0

    .line 296
    .local v0, childCount:I
    iget-object v4, p0, Lcom/htc/widget/AbsSpinner;->mRecycler:Lcom/htc/widget/AbsSpinner$RecycleBin;

    .line 297
    .local v4, recycleBin:Lcom/htc/widget/AbsSpinner$RecycleBin;
    iget v3, p0, Lcom/htc/widget/AbsSpinner;->mFirstPosition:I

    .line 300
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Lcom/htc/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 302
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 303
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/htc/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v2           #index:I
    .end local v5           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 362
    invoke-super {p0}, Lcom/htc/widget/AdapterView;->requestLayout()V

    .line 364
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 179
    iput-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mDataChanged:Z

    .line 180
    iput-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mNeedSync:Z

    .line 182
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->removeAllViewsInLayout()V

    .line 183
    iput v2, p0, Lcom/htc/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 184
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/htc/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 186
    invoke-virtual {p0, v2}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 188
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    .line 189
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 134
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 136
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->resetList()V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1, p1}, Lcom/htc/widget/FastScroller;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 144
    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mOldSelectedPosition:I

    .line 145
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/htc/widget/AbsSpinner;->mOldSelectedRowId:J

    .line 147
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_4

    .line 148
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mItemCount:I

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mOldItemCount:I

    .line 149
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mItemCount:I

    .line 150
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkFocus()V

    .line 152
    new-instance v1, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/widget/AdapterView$AdapterDataSetObserver;-><init>(Lcom/htc/widget/AdapterView;)V

    iput-object v1, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 153
    iget-object v1, p0, Lcom/htc/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/htc/widget/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 155
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_2

    const/4 v0, 0x0

    .line 157
    .local v0, position:I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 160
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkSelectionChanged()V

    .line 172
    .end local v0           #position:I
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 173
    return-void

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkFocus()V

    .line 167
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->resetList()V

    .line 169
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method setDragBinGridView(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 622
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mIsDragBinGridView:Z

    .line 623
    return-void
.end method

.method setExpandedPosition(I)V
    .locals 2
    .parameter "expos"

    .prologue
    .line 666
    iget v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getLayoutParamsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/AbsSpinner;->mExpandedWidth:I

    .line 668
    :cond_0
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mExpandedPos:I

    .line 669
    return-void
.end method

.method setFastScrollEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/htc/widget/AbsSpinner;->mFastScrollEnabled:Z

    .line 523
    if-eqz p1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/htc/widget/FastScroller;

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/htc/widget/FastScroller;-><init>(Landroid/content/Context;Lcom/htc/widget/AbsSpinner;)V

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->stop()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/AbsSpinner;->mFastScroller:Lcom/htc/widget/FastScroller;

    goto :goto_0
.end method

.method setIndicatorIndex(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 712
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mIndicatorIndex:I

    .line 713
    return-void
.end method

.method setLastIndicatorIndex(I)V
    .locals 0
    .parameter "lastin"

    .prologue
    .line 720
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mLastIndicatorIndex:I

    .line 721
    return-void
.end method

.method setLateShrinkedFlag()V
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/AbsSpinner;->mLateShrinkedFlag:Z

    .line 952
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 320
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 321
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->invalidate()V

    .line 322
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 312
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 314
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/AbsSpinner;->setSelectionInt(IZ)V

    .line 315
    return-void

    .line 312
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 333
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 335
    iget v1, p0, Lcom/htc/widget/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 336
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 337
    invoke-virtual {p0, v0, p2}, Lcom/htc/widget/AbsSpinner;->layout(IZ)V

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 340
    .end local v0           #delta:I
    :cond_0
    return-void
.end method

.method setShrinkedPosition(I)V
    .locals 2
    .parameter "shpos"

    .prologue
    const/4 v1, -0x1

    .line 683
    iput p1, p0, Lcom/htc/widget/AbsSpinner;->mShrinkedPos:I

    .line 684
    if-eq p1, v1, :cond_0

    .line 685
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setIndicatorIndex(I)V

    .line 686
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/AbsSpinner;->setLastIndicatorIndex(I)V

    .line 688
    :cond_0
    iput v1, p0, Lcom/htc/widget/AbsSpinner;->mReducedPos:I

    .line 689
    return-void
.end method

.method setShrinkedPosition(IZ)V
    .locals 0
    .parameter "shpos"
    .parameter "isRequestLayout"

    .prologue
    .line 676
    invoke-virtual {p0, p1}, Lcom/htc/widget/AbsSpinner;->setShrinkedPosition(I)V

    .line 677
    if-eqz p2, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/htc/widget/AbsSpinner;->requestLayout()V

    .line 680
    :cond_0
    return-void
.end method

.method startWaveRunnable()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mWaveRunnable:Lcom/htc/widget/AbsSpinner$WaveRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/AbsSpinner$WaveRunnable;->start()V

    .line 824
    return-void
.end method

.method startWidthAnimation(II)V
    .locals 1
    .parameter "orgWidth"
    .parameter "targetWidth"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/widget/AbsSpinner;->mChangeWidthRunnable:Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/AbsSpinner$ChangeWidthRunnable;->start(II)V

    .line 729
    return-void
.end method
