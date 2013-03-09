.class public Lcom/htc/android/htcime/ui/WordCandsListEX2;
.super Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;
.source "WordCandsListEX2.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;,
        Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;
    }
.end annotation


# static fields
.field private static final MARK_DEBUG:Z = false

.field public static final NON_SELECTED_INDEX:I = -0x1

.field private static final PAGE_THRESOLD:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WCLEX"

.field public static WCV_MIN_WIDTH:I = 0x0

.field private static final mMoveThrshold:I = 0x28


# instance fields
.field private isEnableScroll:Z

.field private isMultiLine:Z

.field private isScrolling:Z

.field private mCandidates:[Ljava/lang/CharSequence;

.field private mCurrentRow:I

.field private mFirstTouchDownX:F

.field private mFirstTouchDownY:F

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field public mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field private mHandler:Landroid/os/Handler;

.field protected mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field mNewHeight:I

.field mRatio:F

.field private mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedIndex:I

.field private mSize:I

.field private mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

.field protected mWCLBarVisible:Z

.field mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

.field sendSelectIndex:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x3b

    sput v0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->WCV_MIN_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    .line 72
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 75
    sget-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    .line 80
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    .line 82
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWCLBarVisible:Z

    .line 84
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isEnableScroll:Z

    .line 91
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScroller:Landroid/widget/Scroller;

    .line 96
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isScrolling:Z

    .line 97
    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;-><init>(Lcom/htc/android/htcime/ui/WordCandsListEX2;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    .line 117
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 118
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 119
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 120
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHandler:Landroid/os/Handler;

    .line 125
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    .line 129
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    .line 130
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mRatio:F

    .line 132
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 263
    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX2$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2$1;-><init>(Lcom/htc/android/htcime/ui/WordCandsListEX2;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->sendSelectIndex:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScroller:Landroid/widget/Scroller;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/WordCandsListEX2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/WordCandsListEX2;)Lcom/htc/android/htcime/HTCIMEService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ui/WordCandsListEX2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    return v0
.end method

.method private home()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 571
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 573
    invoke-virtual {p0, v0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 575
    return-void
.end method

.method private resetWCRows()V
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setScrollOrientation(I)V

    .line 566
    :goto_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->home()V

    .line 567
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setScrollOrientation(I)V

    goto :goto_0
.end method

.method private scrollToRow(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 588
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    .line 592
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-eqz v0, :cond_1

    .line 594
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 598
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->start(I)V

    .line 608
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->start(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    .line 455
    return-void
.end method

.method public enableScroll(Z)V
    .locals 0
    .parameter "isEnableScroll"

    .prologue
    .line 930
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isEnableScroll:Z

    .line 931
    return-void
.end method

.method public findLineSelection(Z)I
    .locals 2
    .parameter "toNextLine"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->findLineSelection(ZI)I

    move-result v0

    return v0
.end method

.method public final getLineCount()I
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v0

    return v0
.end method

.method public getSelectionIndex()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    return v0
.end method

.method public final getTotalLineCount()I
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v0

    return v0
.end method

.method public hasNextPrevPage(Z)Z
    .locals 4
    .parameter "testNextPage"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1088
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 1
    .parameter "htcIMM"
    .parameter "htcIMMView"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 181
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 182
    iput-object p2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 185
    return-void
.end method

.method public nextPage()V
    .locals 4

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLineCount()I

    move-result v0

    .line 462
    .local v0, mLineCount:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v1

    .line 464
    .local v1, mRowCount:I
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-eqz v2, :cond_3

    .line 468
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/2addr v2, v0

    if-ge v2, v1, :cond_2

    .line 471
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 475
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    .line 476
    sub-int v2, v1, v0

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 480
    :cond_0
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    goto :goto_0

    .line 493
    :cond_3
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_1

    .line 495
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 497
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    goto :goto_0
.end method

.method public nextSelection()V
    .locals 3

    .prologue
    .line 297
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 304
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setSelection(I)V

    .line 305
    return-void

    .line 301
    .end local v0           #index:I
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    add-int/lit8 v0, v1, 0x1

    .restart local v0       #index:I
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 613
    invoke-super {p0, p1}, Lcom/htc/android/htcime/ezsip/common/GeneralScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 619
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/SimpleWCL;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 162
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setEndDrawListenner(Ljava/util/Observer;)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setHorizontalFadingEdgeEnabled(Z)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setHorizontalScrollBarEnabled(Z)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setVerticalFadingEdgeEnabled(Z)V

    .line 170
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setVerticalScrollBarEnabled(Z)V

    .line 171
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/16 v8, 0x28

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 824
    .local v0, action:I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 921
    :goto_0
    return v5

    .line 835
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 836
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 837
    .local v3, y:F
    packed-switch v0, :pswitch_data_0

    .line 921
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    goto :goto_0

    .line 849
    :pswitch_0
    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionX:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v2, v7

    .line 850
    .local v2, xDiff:I
    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v4, v7

    .line 852
    .local v4, yDiff:I
    iget-boolean v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-eqz v7, :cond_3

    if-le v4, v8, :cond_3

    .line 853
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLineCount()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 854
    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    sub-float/2addr v7, v3

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollBy(II)V

    .line 855
    :cond_2
    sget-object v6, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    iput-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    .line 856
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    .line 857
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    goto :goto_1

    .line 869
    :cond_3
    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-nez v6, :cond_1

    if-le v2, v8, :cond_1

    .line 870
    sget-object v6, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    iput-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    .line 871
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    .line 872
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionX:F

    goto :goto_1

    .line 881
    .end local v2           #xDiff:I
    .end local v4           #yDiff:I
    :pswitch_1
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/SimpleWCL;->isFitViewBound()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 882
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v7, v6}, Lcom/htc/android/htcime/ui/SimpleWCL;->setFitViewBound(Z)V

    .line 884
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->resetWCRows()V

    .line 889
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget-object v8, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCandidates:[Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/ui/SimpleWCL;->setCandidates([Ljava/lang/CharSequence;)Z

    .line 890
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/SimpleWCL;->getCandsSize()I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    .line 896
    :cond_4
    sget-object v7, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    iput-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    .line 897
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownX:F

    .line 898
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionX:F

    .line 899
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownY:F

    .line 900
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    .line 906
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_2
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_2

    .line 913
    :pswitch_2
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    goto :goto_1

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 624
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 625
    .local v7, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 626
    .local v0, action:I
    iget-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v9}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v9

    iget-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v10}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v10

    if-le v9, v10, :cond_1

    const/4 v3, 0x1

    .line 628
    .local v3, isFullWCL:Z
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 804
    :cond_0
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 626
    .end local v3           #isFullWCL:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 631
    .restart local v3       #isFullWCL:Z
    :pswitch_0
    iget-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    sget-object v10, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    if-ne v9, v10, :cond_3

    .line 632
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionX:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v6, v9

    .line 633
    .local v6, xDiff:I
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v8, v9

    .line 635
    .local v8, yDiff:I
    iget-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-eqz v9, :cond_2

    const/16 v9, 0x28

    if-le v8, v9, :cond_2

    .line 636
    sget-object v9, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    iput-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    .line 637
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    goto :goto_1

    .line 645
    :cond_2
    iget-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-nez v9, :cond_0

    const/16 v9, 0x28

    if-le v6, v9, :cond_0

    .line 646
    sget-object v9, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    iput-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    .line 647
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    goto :goto_1

    .line 654
    .end local v6           #xDiff:I
    .end local v8           #yDiff:I
    :cond_3
    iget-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    sget-object v10, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    if-ne v9, v10, :cond_6

    .line 655
    if-eqz v3, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v9

    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLineCount()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v10}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/lit8 v1, v9, 0x50

    .line 662
    .local v1, bottomBound:I
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    iget-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v10}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/lit8 v4, v9, 0x50

    .line 667
    .local v4, topBound:I
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownY:F

    sub-float v9, v7, v9

    int-to-float v10, v4

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 674
    const/4 v9, 0x0

    const/16 v10, -0x50

    invoke-virtual {p0, v9, v10}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 677
    const/high16 v9, 0x42a0

    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownY:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    goto :goto_1

    .line 683
    :cond_4
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownY:F

    sub-float/2addr v9, v7

    int-to-float v10, v1

    cmpl-float v9, v9, v10

    if-lez v9, :cond_5

    .line 687
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v10

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLineCount()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v10}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/lit8 v2, v9, 0x50

    .line 694
    .local v2, endPos:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 695
    const/high16 v9, -0x3d60

    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownY:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    goto/16 :goto_1

    .line 704
    .end local v2           #endPos:I
    :cond_5
    const/4 v9, 0x0

    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    sub-float/2addr v10, v7

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollBy(II)V

    .line 705
    iput v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionY:F

    goto/16 :goto_1

    .line 719
    .end local v1           #bottomBound:I
    .end local v4           #topBound:I
    :cond_6
    iget-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    sget-object v10, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    if-ne v9, v10, :cond_0

    .line 722
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-nez v9, :cond_7

    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownX:F

    sub-float v9, v5, v9

    const/high16 v10, 0x42a0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 723
    const/16 v9, -0x50

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 724
    const/high16 v9, 0x42a0

    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownX:F

    add-float/2addr v9, v10

    iput v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionX:F

    goto/16 :goto_1

    .line 726
    :cond_7
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_8

    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownX:F

    sub-float/2addr v9, v5

    const/high16 v10, 0x42a0

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 729
    :cond_8
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionX:F

    sub-float/2addr v9, v5

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollBy(II)V

    .line 730
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mLastMotionX:F

    goto/16 :goto_1

    .line 754
    :pswitch_1
    iget-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    sget-object v10, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    if-ne v9, v10, :cond_c

    .line 755
    if-eqz v3, :cond_9

    .line 757
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v10

    if-ge v9, v10, :cond_a

    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownY:F

    sub-float/2addr v9, v7

    const/high16 v10, 0x42a0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->hasNextPrevPage(Z)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 758
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->nextPage()V

    .line 801
    :cond_9
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 759
    :cond_a
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-lez v9, :cond_b

    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownY:F

    sub-float v9, v7, v9

    const/high16 v10, 0x42a0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->hasNextPrevPage(Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 760
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->prePage()V

    goto :goto_2

    .line 762
    :cond_b
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v9}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    goto :goto_2

    .line 782
    :cond_c
    iget-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    sget-object v10, Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX2$touchState;

    if-ne v9, v10, :cond_9

    .line 783
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v10

    if-ge v9, v10, :cond_d

    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownX:F

    sub-float/2addr v9, v5

    const/high16 v10, 0x42a0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_d

    .line 784
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->nextPage()V

    .line 793
    :goto_3
    iget-object v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;

    #calls: Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->endScroll()V
    invoke-static {v9}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->access$200(Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;)V

    goto :goto_2

    .line 785
    :cond_d
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-lez v9, :cond_e

    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mFirstTouchDownX:F

    sub-float v9, v5, v9

    const/high16 v10, 0x42a0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_e

    .line 786
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->prePage()V

    goto :goto_3

    .line 788
    :cond_e
    iget v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v9}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    goto :goto_3

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prePage()V
    .locals 2

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLineCount()I

    move-result v0

    .line 510
    .local v0, mLineCount:I
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-eqz v1, :cond_2

    .line 512
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_1

    .line 513
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 515
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 520
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    goto :goto_0

    .line 525
    :cond_2
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-lez v1, :cond_0

    .line 526
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 528
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    goto :goto_0
.end method

.method public preSelection()V
    .locals 3

    .prologue
    .line 313
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    if-nez v1, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x0

    .line 323
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setSelection(I)V

    .line 324
    return-void

    .line 319
    .end local v0           #index:I
    :cond_1
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #index:I
    goto :goto_0
.end method

.method public sendCandsStringToWCL(Ljava/lang/String;I)Z
    .locals 9
    .parameter "str"
    .parameter "defaultIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->clear()V

    .line 349
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    .line 350
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setVisibility(I)V

    .line 355
    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->clear()V

    .line 357
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCandidates:[Ljava/lang/CharSequence;

    move v4, v5

    .line 436
    :goto_0
    return v4

    .line 361
    :cond_1
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setVisibility(I)V

    .line 363
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->resetWCRows()V

    .line 373
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v6, v5, v5}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCount(IZ)I

    move-result v6

    sget v7, Lcom/htc/android/htcime/ui/SimpleWCL;->WCV_COUNT:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    .line 377
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    if-nez v6, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getLineCount()I

    move-result v2

    .line 382
    .local v2, mLineCount:I
    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    div-int v1, v6, v2

    .line 388
    .local v1, height:I
    :goto_1
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    new-array v0, v6, [Ljava/lang/CharSequence;

    .line 394
    .local v0, cands:[Ljava/lang/CharSequence;
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCandidates:[Ljava/lang/CharSequence;

    .line 408
    if-gez p2, :cond_3

    .line 409
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v6, v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->setFitViewBound(Z)V

    .line 412
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v6, v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setCandidates([Ljava/lang/CharSequence;)Z

    .line 413
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/SimpleWCL;->getCandsSize()I

    move-result v6

    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    .line 415
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 416
    invoke-virtual {p0, v5, v5}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollTo(II)V

    .line 418
    if-eq p2, v8, :cond_4

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    if-gt p2, v6, :cond_4

    .line 420
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v6, p2}, Lcom/htc/android/htcime/ui/SimpleWCL;->getRowIDofIndx(I)I

    move-result v3

    .line 421
    .local v3, targetRow:I
    if-eq v3, v8, :cond_6

    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-eq v3, v6, :cond_6

    .line 422
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 423
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setSelection(I)V

    .line 429
    .end local v3           #targetRow:I
    :cond_4
    :goto_2
    iput p2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    goto :goto_0

    .line 382
    .end local v0           #cands:[Ljava/lang/CharSequence;
    .end local v1           #height:I
    :cond_5
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    goto :goto_1

    .line 427
    .restart local v0       #cands:[Ljava/lang/CharSequence;
    .restart local v1       #height:I
    .restart local v3       #targetRow:I
    :cond_6
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v5, p2}, Lcom/htc/android/htcime/ui/SimpleWCL;->setSelectedIndx(I)V

    goto :goto_2
.end method

.method public sendWordToEditText(I)V
    .locals 2
    .parameter "Index"

    .prologue
    .line 1036
    const/high16 v1, 0x70b

    or-int v0, v1, p1

    .line 1037
    .local v0, command:I
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1038
    return-void
.end method

.method public setEndScrollEventListerner(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX2$ScrollRunnable;->addObserver(Ljava/util/Observer;)V

    .line 1117
    return-void
.end method

.method public setLineCount(I)V
    .locals 2
    .parameter "lineCount"

    .prologue
    const/4 v0, 0x1

    .line 540
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setVisibleLineNum(I)V

    .line 541
    if-le p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    .line 542
    return-void

    .line 541
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 202
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->getTotalLineCount()I

    move-result v1

    .line 209
    .local v1, mRowCount:I
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->isFitViewBound()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq p1, v5, :cond_0

    if-ltz p1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->resetWCRows()V

    .line 212
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3, v6}, Lcom/htc/android/htcime/ui/SimpleWCL;->setFitViewBound(Z)V

    .line 214
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCandidates:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->setCandidates([Ljava/lang/CharSequence;)Z

    .line 215
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getCandsSize()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    .line 219
    :cond_0
    if-eq p1, v5, :cond_7

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSize:I

    if-ge p1, v3, :cond_7

    if-ltz p1, :cond_7

    .line 220
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getRowIDofIndx(I)I

    move-result v2

    .line 221
    .local v2, targetRow:I
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v0

    .line 228
    .local v0, mLineCount:I
    if-eq v2, v5, :cond_2

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-eq v2, v3, :cond_2

    .line 230
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    add-int/2addr v3, v0

    if-le v3, v2, :cond_1

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-lt v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->isMultiLine:Z

    if-nez v3, :cond_5

    .line 232
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    if-le v2, v3, :cond_4

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 234
    sub-int v3, v1, v2

    if-le v3, v0, :cond_3

    .end local v2           #targetRow:I
    :goto_0
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 238
    :goto_1
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    .line 248
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setSelectedIndx(I)V

    .line 249
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    .line 261
    .end local v0           #mLineCount:I
    :goto_3
    return-void

    .line 234
    .restart local v0       #mLineCount:I
    .restart local v2       #targetRow:I
    :cond_3
    sub-int v3, v1, v0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 237
    :cond_4
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    goto :goto_1

    .line 240
    :cond_5
    sub-int v3, v1, v2

    if-le v3, v0, :cond_6

    .end local v2           #targetRow:I
    :goto_4
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    .line 241
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mCurrentRow:I

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->scrollToRow(I)V

    goto :goto_2

    .line 240
    .restart local v2       #targetRow:I
    :cond_6
    sub-int v3, v1, v0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    .line 253
    .end local v0           #mLineCount:I
    .end local v2           #targetRow:I
    :cond_7
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setUnSelected()V

    .line 254
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    goto :goto_3
.end method

.method public setSelectionWithoutScroll(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 280
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    .line 284
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->sendSelectIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getSelectedIndx()I

    move-result v0

    .line 1121
    .local v0, selIndx:I
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    if-eq v0, v1, :cond_0

    .line 1122
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setSelectionWithoutScroll(I)V

    .line 1123
    :cond_0
    return-void
.end method

.method public updateWCView(II)V
    .locals 1
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 1064
    iput p2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mNewHeight:I

    .line 1069
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->resetWCRows()V

    .line 1070
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewWidth(I)V

    .line 1071
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p2}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewHeight(I)V

    .line 1073
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX2;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX2;->setSelection(I)V

    .line 1074
    return-void
.end method
