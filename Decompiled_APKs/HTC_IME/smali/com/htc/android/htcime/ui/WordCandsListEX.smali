.class public Lcom/htc/android/htcime/ui/WordCandsListEX;
.super Landroid/widget/ScrollView;
.source "WordCandsListEX.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;,
        Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;
    }
.end annotation


# static fields
.field private static final MARK_DEBUG:Z = false

.field public static final NON_SELECTED_INDEX:I = -0x1

#the value of this static final field might be set in the static constructor
.field private static final PAGE_THRESOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WCLEX"

.field public static WCV_MIN_WIDTH:I

.field private static final mMoveThrshold:I


# instance fields
.field private isEnableScroll:Z

.field private isMultiLine:Z

.field private isScrolling:Z

.field private lastLineMask:I

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

.field private mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedIndex:I

.field private mSize:I

.field private mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

.field protected mWCLBarVisible:Z

.field private mWCLID:I

.field mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

.field sendSelectIndex:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    sput v0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mMoveThrshold:I

    .line 86
    sget v0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mMoveThrshold:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    .line 108
    const/16 v0, 0x3b

    sput v0, Lcom/htc/android/htcime/ui/WordCandsListEX;->WCV_MIN_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    .line 73
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 76
    sget-object v0, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    .line 81
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    .line 83
    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWCLBarVisible:Z

    .line 85
    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isEnableScroll:Z

    .line 92
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScroller:Landroid/widget/Scroller;

    .line 97
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isScrolling:Z

    .line 98
    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;-><init>(Lcom/htc/android/htcime/ui/WordCandsListEX;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;

    .line 106
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    .line 118
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 119
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 120
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 121
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHandler:Landroid/os/Handler;

    .line 126
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    .line 130
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    .line 131
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mRatio:F

    .line 133
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 134
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->lastLineMask:I

    .line 138
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWCLID:I

    .line 260
    new-instance v0, Lcom/htc/android/htcime/ui/WordCandsListEX$1;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/WordCandsListEX$1;-><init>(Lcom/htc/android/htcime/ui/WordCandsListEX;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->sendSelectIndex:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScroller:Landroid/widget/Scroller;

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/WordCandsListEX;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/WordCandsListEX;)Lcom/htc/android/htcime/HTCIMEService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ui/WordCandsListEX;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ui/WordCandsListEX;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    return v0
.end method

.method private home()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 584
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 586
    invoke-virtual {p0, v0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 588
    return-void
.end method

.method private resetWCRows()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->home()V

    .line 580
    return-void
.end method

.method private scrollToRow(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 601
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    if-nez v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    .line 605
    :cond_0
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-eqz v0, :cond_1

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 611
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->start(I)V

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->start(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 442
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    .line 445
    return-void
.end method

.method public enableScroll(Z)V
    .locals 0
    .parameter "isEnableScroll"

    .prologue
    .line 962
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isEnableScroll:Z

    .line 963
    return-void
.end method

.method public findLineSelection(Z)I
    .locals 2
    .parameter "toNextLine"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->findLineSelection(ZI)I

    move-result v0

    return v0
.end method

.method public final getFirstPageCandNum(I)I
    .locals 1
    .parameter "idWCL"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getFirstPageCandNum(I)I

    move-result v0

    return v0
.end method

.method public final getLineCount()I
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v0

    return v0
.end method

.method public final getPerPageCandNum(I)I
    .locals 1
    .parameter "nPage"

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getPerPageCandNum(I)I

    move-result v0

    return v0
.end method

.method public getSelectionIndex()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    return v0
.end method

.method public final getTotalLineCount()I
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v0

    return v0
.end method

.method public final getTotalVisibleCandPage()I
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalVisibleCandPage()I

    move-result v0

    return v0
.end method

.method public hasNextPrevPage(Z)Z
    .locals 4
    .parameter "testNextPage"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1150
    if-eqz p1, :cond_2

    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

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
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 1
    .parameter "htcIMM"
    .parameter "htcIMMView"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 178
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 179
    iput-object p2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 180
    return-void
.end method

.method public nextPage()V
    .locals 6

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLineCount()I

    move-result v0

    .line 452
    .local v0, mLineCount:I
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v1

    .line 454
    .local v1, mRowCount:I
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-eqz v2, :cond_4

    .line 458
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/2addr v2, v0

    if-ge v2, v1, :cond_3

    .line 462
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v2, :cond_2

    .line 463
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/2addr v2, v0

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 476
    :cond_0
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    .line 479
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v2, :cond_1

    .line 480
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWCLID:I

    iget v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    div-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getPerPageCandNum(I)I

    move-result v4

    aput v4, v2, v3

    .line 481
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v3, 0x712

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWCLID:I

    aget v4, v4, v5

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 504
    :cond_1
    :goto_1
    return-void

    .line 466
    :cond_2
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 470
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    .line 471
    sub-int v2, v1, v0

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    goto :goto_0

    .line 491
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    goto :goto_1

    .line 495
    :cond_4
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_1

    .line 497
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 499
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    goto :goto_1
.end method

.method public nextSelection()V
    .locals 3

    .prologue
    .line 295
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 302
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setSelection(I)V

    .line 303
    return-void

    .line 299
    .end local v0           #index:I
    :cond_0
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    add-int/lit8 v0, v1, 0x1

    .restart local v0       #index:I
    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 626
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 632
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/ui/SimpleWCL;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    .line 158
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setEndDrawListenner(Ljava/util/Observer;)V

    .line 165
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setScrollEventListerner(Ljava/util/Observer;)V

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setOverScrollMode(I)V

    .line 168
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 851
    .local v0, action:I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    if-eqz v7, :cond_0

    .line 953
    :goto_0
    return v5

    .line 862
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 863
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 864
    .local v3, y:F
    packed-switch v0, :pswitch_data_0

    .line 953
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    goto :goto_0

    .line 876
    :pswitch_0
    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionX:F

    sub-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v2, v7

    .line 877
    .local v2, xDiff:I
    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v4, v7

    .line 879
    .local v4, yDiff:I
    iget-boolean v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-eqz v7, :cond_3

    sget v7, Lcom/htc/android/htcime/ui/WordCandsListEX;->mMoveThrshold:I

    if-le v4, v7, :cond_3

    .line 880
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLineCount()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 881
    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    sub-float/2addr v7, v3

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollBy(II)V

    .line 882
    :cond_2
    sget-object v6, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    iput-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    .line 883
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    .line 884
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    goto :goto_1

    .line 896
    :cond_3
    iget-boolean v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-nez v6, :cond_1

    sget v6, Lcom/htc/android/htcime/ui/WordCandsListEX;->mMoveThrshold:I

    if-le v2, v6, :cond_1

    .line 897
    sget-object v6, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    iput-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    .line 898
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    .line 899
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionX:F

    goto :goto_1

    .line 908
    .end local v2           #xDiff:I
    .end local v4           #yDiff:I
    :pswitch_1
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/SimpleWCL;->isFitViewBound()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 909
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v7, v6}, Lcom/htc/android/htcime/ui/SimpleWCL;->setFitViewBound(Z)V

    .line 911
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->resetWCRows()V

    .line 916
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget-object v8, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCandidates:[Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/ui/SimpleWCL;->setCandidates([Ljava/lang/CharSequence;)Z

    .line 917
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/SimpleWCL;->getCandsSize()I

    move-result v7

    iput v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    .line 923
    :cond_4
    sget-object v7, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    iput-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    .line 924
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownX:F

    .line 925
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionX:F

    .line 926
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownY:F

    .line 927
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    .line 933
    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_2
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    .line 935
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLastLineMaskWidth()I

    move-result v5

    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->lastLineMask:I

    .line 936
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->lastLineMask:I

    const/4 v7, -0x1

    if-le v5, v7, :cond_1

    .line 937
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ui/SimpleWCL;->setLastLineMaskWidth(I)V

    .line 938
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/SimpleWCL;->invalidate()V

    goto/16 :goto_1

    :cond_5
    move v5, v6

    .line 933
    goto :goto_2

    .line 945
    :pswitch_2
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 637
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 638
    .local v7, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 639
    .local v0, action:I
    iget-object v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v11}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v11

    iget-object v12, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v12

    if-le v11, v12, :cond_1

    move v3, v9

    .line 641
    .local v3, isFullWCL:Z
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 823
    :cond_0
    :goto_1
    return v9

    .end local v3           #isFullWCL:Z
    :cond_1
    move v3, v10

    .line 639
    goto :goto_0

    .line 644
    .restart local v3       #isFullWCL:Z
    :pswitch_0
    iget-object v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    sget-object v12, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    if-ne v11, v12, :cond_3

    .line 645
    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionX:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v6, v10

    .line 646
    .local v6, xDiff:I
    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v8, v10

    .line 648
    .local v8, yDiff:I
    iget-boolean v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-eqz v10, :cond_2

    sget v10, Lcom/htc/android/htcime/ui/WordCandsListEX;->mMoveThrshold:I

    if-le v8, v10, :cond_2

    .line 649
    sget-object v10, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    iput-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    .line 650
    iput-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    goto :goto_1

    .line 658
    :cond_2
    iget-boolean v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-nez v10, :cond_0

    sget v10, Lcom/htc/android/htcime/ui/WordCandsListEX;->mMoveThrshold:I

    if-le v6, v10, :cond_0

    .line 659
    sget-object v10, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    iput-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    .line 660
    iput-boolean v9, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    goto :goto_1

    .line 667
    .end local v6           #xDiff:I
    .end local v8           #yDiff:I
    :cond_3
    iget-object v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    sget-object v12, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    if-ne v11, v12, :cond_6

    .line 668
    if-eqz v3, :cond_0

    .line 674
    sget v11, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v12

    iget v13, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLineCount()I

    move-result v13

    sub-int/2addr v12, v13

    iget-object v13, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v13}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v13

    mul-int/2addr v12, v13

    add-int v1, v11, v12

    .line 675
    .local v1, bottomBound:I
    sget v11, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    iget v12, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    iget-object v13, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v13}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v13

    mul-int/2addr v12, v13

    add-int v4, v11, v12

    .line 680
    .local v4, topBound:I
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownY:F

    sub-float v11, v7, v11

    int-to-float v12, v4

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 687
    sget v11, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    neg-int v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 690
    sget v10, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v10, v10

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownY:F

    add-float/2addr v10, v11

    iput v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    goto :goto_1

    .line 696
    :cond_4
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownY:F

    sub-float/2addr v11, v7

    int-to-float v12, v1

    cmpl-float v11, v11, v12

    if-lez v11, :cond_5

    .line 700
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v11

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLineCount()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v12, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v12}, Lcom/htc/android/htcime/ui/SimpleWCL;->getLineHeight()I

    move-result v12

    mul-int/2addr v11, v12

    sget v12, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    add-int v2, v11, v12

    .line 707
    .local v2, endPos:I
    invoke-virtual {p0, v10, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 708
    sget v10, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    neg-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownY:F

    add-float/2addr v10, v11

    iput v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    goto/16 :goto_1

    .line 717
    .end local v2           #endPos:I
    :cond_5
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    sub-float/2addr v11, v7

    float-to-int v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollBy(II)V

    .line 718
    iput v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionY:F

    goto/16 :goto_1

    .line 732
    .end local v1           #bottomBound:I
    .end local v4           #topBound:I
    :cond_6
    iget-boolean v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    sget-object v12, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    if-ne v11, v12, :cond_0

    .line 735
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-nez v11, :cond_7

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownX:F

    sub-float v11, v5, v11

    sget v12, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    .line 736
    sget v11, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    neg-int v11, v11

    invoke-virtual {p0, v11, v10}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollTo(II)V

    .line 737
    sget v10, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v10, v10

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownX:F

    add-float/2addr v10, v11

    iput v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionX:F

    goto/16 :goto_1

    .line 739
    :cond_7
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_8

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownX:F

    sub-float/2addr v11, v5

    sget v12, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_0

    .line 742
    :cond_8
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionX:F

    sub-float/2addr v11, v5

    float-to-int v11, v11

    invoke-virtual {p0, v11, v10}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollBy(II)V

    .line 743
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mLastMotionX:F

    goto/16 :goto_1

    .line 767
    :pswitch_1
    iget-object v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    sget-object v12, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveY:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    if-ne v11, v12, :cond_c

    .line 768
    if-eqz v3, :cond_9

    .line 770
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v12

    if-ge v11, v12, :cond_a

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownY:F

    sub-float/2addr v11, v7

    sget v12, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_a

    invoke-virtual {p0, v9}, Lcom/htc/android/htcime/ui/WordCandsListEX;->hasNextPrevPage(Z)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 771
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->nextPage()V

    .line 814
    :cond_9
    :goto_2
    iput-boolean v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mIsBeingDragged:Z

    .line 816
    iget v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->lastLineMask:I

    if-le v10, v13, :cond_0

    .line 817
    iget-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->lastLineMask:I

    invoke-virtual {v10, v11}, Lcom/htc/android/htcime/ui/SimpleWCL;->setLastLineMaskWidth(I)V

    .line 818
    iput v13, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->lastLineMask:I

    .line 819
    iget-object v10, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v10}, Lcom/htc/android/htcime/ui/SimpleWCL;->invalidate()V

    goto/16 :goto_1

    .line 772
    :cond_a
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-lez v11, :cond_b

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownY:F

    sub-float v11, v7, v11

    sget v12, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_b

    invoke-virtual {p0, v10}, Lcom/htc/android/htcime/ui/WordCandsListEX;->hasNextPrevPage(Z)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 773
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->prePage()V

    goto :goto_2

    .line 775
    :cond_b
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v11}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    goto :goto_2

    .line 795
    :cond_c
    iget-boolean v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    sget-object v12, Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;->moveX:Lcom/htc/android/htcime/ui/WordCandsListEX$touchState;

    if-ne v11, v12, :cond_9

    .line 796
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v12

    if-ge v11, v12, :cond_d

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownX:F

    sub-float/2addr v11, v5

    sget v12, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_d

    .line 797
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->nextPage()V

    .line 806
    :goto_3
    iget-object v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;

    #calls: Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->endScroll()V
    invoke-static {v11}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->access$200(Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;)V

    goto :goto_2

    .line 798
    :cond_d
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-lez v11, :cond_e

    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mFirstTouchDownX:F

    sub-float v11, v5, v11

    sget v12, Lcom/htc/android/htcime/ui/WordCandsListEX;->PAGE_THRESOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_e

    .line 799
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->prePage()V

    goto :goto_3

    .line 801
    :cond_e
    iget v11, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v11}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    goto :goto_3

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public prePage()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLineCount()I

    move-result v0

    .line 512
    .local v0, mLineCount:I
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-eqz v2, :cond_4

    .line 514
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    sub-int/2addr v2, v0

    if-ltz v2, :cond_3

    .line 516
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v2, :cond_1

    .line 517
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    sub-int/2addr v2, v0

    div-int/2addr v2, v0

    mul-int/2addr v2, v0

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 522
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    .line 525
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v2, :cond_0

    .line 526
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWCLID:I

    iget v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_2

    :goto_1
    aput v1, v2, v3

    .line 527
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v2, 0x712

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWCLID:I

    aget v3, v3, v4

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 545
    :cond_0
    :goto_2
    return-void

    .line 520
    :cond_1
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    goto :goto_0

    .line 526
    :cond_2
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getPerPageCandNum(I)I

    move-result v1

    goto :goto_1

    .line 532
    :cond_3
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 533
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    goto :goto_2

    .line 538
    :cond_4
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-lez v1, :cond_0

    .line 539
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 541
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    goto :goto_2
.end method

.method public preSelection()V
    .locals 3

    .prologue
    .line 311
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    if-nez v1, :cond_1

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 319
    .local v0, index:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setSelection(I)V

    .line 320
    return-void

    .line 316
    .end local v0           #index:I
    :cond_1
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #index:I
    goto :goto_0
.end method

.method public sendCandsStringToWCL(Ljava/lang/String;I)Z
    .locals 8
    .parameter "str"
    .parameter "defaultIndex"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->clear()V

    .line 345
    iput v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    .line 346
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setVisibility(I)V

    .line 351
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->clear()V

    .line 353
    iput-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCandidates:[Ljava/lang/CharSequence;

    move v3, v4

    .line 426
    :goto_0
    return v3

    .line 357
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setVisibility(I)V

    .line 359
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->resetWCRows()V

    .line 362
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v5, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v5, v4, v4}, Lcom/htc/android/htcime/Intf/IHTCIM;->getWCLCount(IZ)I

    move-result v5

    sget v6, Lcom/htc/android/htcime/ui/SimpleWCL;->WCV_COUNT:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    .line 367
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    if-nez v5, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getMeasuredHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getLineCount()I

    move-result v2

    .line 372
    .local v2, mLineCount:I
    iget-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    div-int v1, v5, v2

    .line 378
    .local v1, height:I
    :goto_1
    iput-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCandidates:[Ljava/lang/CharSequence;

    .line 379
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 380
    .local v0, cands:[Ljava/lang/CharSequence;
    iput-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCandidates:[Ljava/lang/CharSequence;

    .line 394
    if-gez p2, :cond_3

    .line 395
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v5, v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setFitViewBound(Z)V

    .line 398
    :cond_3
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v5, v0}, Lcom/htc/android/htcime/ui/SimpleWCL;->setCandidates([Ljava/lang/CharSequence;)Z

    .line 399
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v5}, Lcom/htc/android/htcime/ui/SimpleWCL;->getCandsSize()I

    move-result v5

    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    .line 402
    iput v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 403
    invoke-direct {p0, v4}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    .line 407
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setSelection(I)V

    goto :goto_0

    .line 372
    .end local v0           #cands:[Ljava/lang/CharSequence;
    .end local v1           #height:I
    :cond_4
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    goto :goto_1
.end method

.method public sendWordToEditText(II)V
    .locals 3
    .parameter "Index"
    .parameter "idWCL"

    .prologue
    const/4 v2, 0x2

    .line 1068
    const/4 v0, 0x0

    .line 1071
    .local v0, command:I
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getWCLID()I

    move-result v1

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getPressAtBottomLine()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1073
    :cond_0
    const/high16 v1, 0x70b

    or-int v0, v1, p1

    .line 1079
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 1080
    return-void

    .line 1074
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 1075
    const/high16 v1, 0x749

    or-int v0, v1, p1

    goto :goto_0

    .line 1076
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getWCLID()I

    move-result v1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getPressAtBottomLine()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1077
    const/high16 v1, 0x750

    or-int v0, v1, p1

    goto :goto_0
.end method

.method public setLineCount(I)V
    .locals 2
    .parameter "lineCount"

    .prologue
    const/4 v0, 0x1

    .line 553
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setVisibleLineNum(I)V

    .line 554
    if-le p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    .line 555
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollEventListerner(Ljava/util/Observer;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/WordCandsListEX$ScrollRunnable;->addObserver(Ljava/util/Observer;)V

    .line 1179
    return-void
.end method

.method public setSelection(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, -0x1

    .line 197
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->getTotalLineCount()I

    move-result v1

    .line 204
    .local v1, mRowCount:I
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->isFitViewBound()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eq p1, v5, :cond_0

    if-ltz p1, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->resetWCRows()V

    .line 207
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->setFitViewBound(Z)V

    .line 209
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCandidates:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->setCandidates([Ljava/lang/CharSequence;)Z

    .line 210
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getCandsSize()I

    move-result v3

    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    .line 214
    :cond_0
    if-eq p1, v5, :cond_5

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSize:I

    if-ge p1, v3, :cond_5

    if-ltz p1, :cond_5

    .line 215
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->getRowIDofIndx(I)I

    move-result v2

    .line 216
    .local v2, targetRow:I
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v0

    .line 223
    .local v0, mLineCount:I
    if-eq v2, v5, :cond_2

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-eq v2, v3, :cond_2

    .line 225
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/2addr v3, v0

    if-le v3, v2, :cond_1

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-lt v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->isMultiLine:Z

    if-nez v3, :cond_2

    .line 227
    :cond_1
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_CMCC_Request:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 228
    div-int v3, v2, v0

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 235
    :goto_0
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    .line 245
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setSelectedIndx(I)V

    .line 246
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    .line 258
    .end local v0           #mLineCount:I
    .end local v2           #targetRow:I
    :goto_1
    return-void

    .line 229
    .restart local v0       #mLineCount:I
    .restart local v2       #targetRow:I
    :cond_3
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    if-le v2, v3, :cond_4

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->getTotalRowNum()I

    move-result v3

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/SimpleWCL;->getVisibleLineNum()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 230
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    goto :goto_0

    .line 234
    :cond_4
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    goto :goto_0

    .line 250
    .end local v0           #mLineCount:I
    .end local v2           #targetRow:I
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/SimpleWCL;->setUnSelected()V

    .line 251
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    goto :goto_1
.end method

.method public setSelectionWithoutScroll(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 278
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    .line 282
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->sendSelectIndex:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method public setWCLID(I)V
    .locals 0
    .parameter "idx"

    .prologue
    .line 1114
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWCLID:I

    .line 1115
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1182
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ui/SimpleWCL;->getSelectedIndx()I

    move-result v1

    .line 1183
    .local v1, selIndx:I
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    if-eq v1, v2, :cond_0

    .line 1184
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setSelectionWithoutScroll(I)V

    .line 1186
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1187
    .local v0, forceScrollUp:Z
    if-eqz v0, :cond_1

    .line 1190
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    .line 1191
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mCurrentRow:I

    invoke-direct {p0, v2}, Lcom/htc/android/htcime/ui/WordCandsListEX;->scrollToRow(I)V

    .line 1193
    :cond_1
    return-void
.end method

.method public updateWCView(II)V
    .locals 1
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 1126
    iput p2, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mNewHeight:I

    .line 1131
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->resetWCRows()V

    .line 1132
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p1}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewWidth(I)V

    .line 1133
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mWcvArea:Lcom/htc/android/htcime/ui/SimpleWCL;

    invoke-virtual {v0, p2}, Lcom/htc/android/htcime/ui/SimpleWCL;->setViewHeight(I)V

    .line 1135
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsListEX;->mSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsListEX;->setSelection(I)V

    .line 1136
    return-void
.end method
