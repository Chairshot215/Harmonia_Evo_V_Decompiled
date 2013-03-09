.class public Lcom/htc/widget/HtcNumberPicker;
.super Landroid/widget/RelativeLayout;
.source "HtcNumberPicker.java"

# interfaces
.implements Lcom/htc/view/table/AbstractTableView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcNumberPicker$TableAdapter;,
        Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;
    }
.end annotation


# instance fields
.field private AM:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private PM:Ljava/lang/String;

.field private isRightIdle:Z

.field private mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

.field private mAmPmTextSize:I

.field private mChangeBkg:Z

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mDigits:I

.field mEnd:I

.field private final mHandler:Landroid/os/Handler;

.field private mHtcContext:Landroid/content/Context;

.field private mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

.field mIsNeverSlidedBeforeSet:Z

.field mIsOnInitState:Z

.field private mLayoutParams:Lcom/htc/view/table/TableLayoutParams;

.field private mPos:I

.field mReadyToSet:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mScrollControl:Lcom/htc/widget/TableViewScrollControl;

.field mStart:I

.field private mTableHeight:I

.field private mTableInflater:Landroid/view/LayoutInflater;

.field private mTableView:Lcom/htc/widget/MyTableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-string v2, "NumberTableView"

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->LOG_TAG:Ljava/lang/String;

    .line 49
    iput-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mScrollControl:Lcom/htc/widget/TableViewScrollControl;

    .line 57
    iput-boolean v5, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 59
    iput-object v3, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 60
    iput-boolean v5, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z

    .line 129
    new-instance v2, Lcom/htc/widget/HtcNumberPicker$1;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcNumberPicker$1;-><init>(Lcom/htc/widget/HtcNumberPicker;)V

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 136
    iput-boolean v5, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 172
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mHandler:Landroid/os/Handler;

    .line 173
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 175
    iput-boolean v5, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    .line 77
    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    .line 78
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2050106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableHeight:I

    .line 80
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableInflater:Landroid/view/LayoutInflater;

    .line 81
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableInflater:Landroid/view/LayoutInflater;

    const v3, 0x20900a1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 83
    const v2, 0x2020177

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/MyTableView;

    iput-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    .line 86
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 88
    new-instance v0, Lcom/htc/view/table/TableLayoutParams;

    invoke-direct {v0}, Lcom/htc/view/table/TableLayoutParams;-><init>()V

    .line 89
    .local v0, mLayoutParams:Lcom/htc/view/table/TableLayoutParams;
    invoke-virtual {v0, v4}, Lcom/htc/view/table/TableLayoutParams;->enableScrollOverBoundary(Z)V

    .line 90
    invoke-virtual {v0, v4}, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl(Z)V

    .line 91
    invoke-virtual {v0, v4}, Lcom/htc/view/table/TableLayoutParams;->setOrientation(I)V

    .line 92
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v5, v0}, Lcom/htc/widget/MyTableView;->setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V

    .line 93
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/MyTableView;->setNumColumnRows(I)V

    .line 94
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 95
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 96
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v6}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 97
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v5}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 99
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v4}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    new-instance v1, Lcom/htc/widget/TableViewScrollControl;

    .end local v1           #mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    invoke-direct {v1}, Lcom/htc/widget/TableViewScrollControl;-><init>()V

    .line 103
    .restart local v1       #mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    invoke-virtual {v1, v4}, Lcom/htc/widget/TableViewScrollControl;->setOrientation(I)V

    .line 104
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/TableViewScrollControl;->setTableView(Lcom/htc/view/table/TableView;)V

    .line 106
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/MyTableView;->setScrollControl(Lcom/htc/view/ScrollControl;)V

    .line 108
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Lcom/htc/widget/MyTableView;->setSelector(I)V

    .line 114
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/MyTableView;->setOnScrollListener(Lcom/htc/view/table/AbstractTableView$OnScrollListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcNumberPicker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcNumberPicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcNumberPicker;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcNumberPicker;->updateAmPmSize(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mDigits:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->AM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/HtcNumberPicker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->PM:Ljava/lang/String;

    return-object v0
.end method

.method private updateAmPmSize(Landroid/widget/TextView;)V
    .locals 8
    .parameter "tv"

    .prologue
    const/16 v7, 0x320

    const/16 v6, 0x1e0

    const/16 v5, 0x140

    const/16 v4, 0xf0

    .line 388
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 391
    .local v1, manager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 393
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 397
    :cond_1
    const/high16 v2, 0x41b0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 406
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #manager:Landroid/view/WindowManager;
    :cond_2
    :goto_0
    return-void

    .line 399
    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #manager:Landroid/view/WindowManager;
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v7, :cond_4

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-eq v2, v6, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 401
    :cond_5
    const/high16 v2, 0x4228

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 403
    :cond_6
    const/high16 v2, 0x41d0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method


# virtual methods
.method public changeBkg()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x2020175

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x2080b01

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    const v0, 0x2020178

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x2080b00

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 125
    const v0, 0x2020176

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x2080b02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mChangeBkg:Z

    .line 127
    return-void
.end method

.method public getCenterView()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v1}, Lcom/htc/widget/MyTableView;->getCenterChildPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getTableView()Lcom/htc/view/table/TableView;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    return-object v0
.end method

.method public notifyOnInitState()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    .line 198
    return-void
.end method

.method public onScroll(Lcom/htc/view/table/AbstractTableView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 283
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 245
    if-ne p2, v3, :cond_0

    .line 246
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {p0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/MyTableView;->setStopExcept(I)V

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    if-ne v1, p1, :cond_1

    .line 251
    if-ne v3, p2, :cond_2

    .line 252
    iput-boolean v3, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    if-ne v3, v1, :cond_3

    if-nez p2, :cond_3

    .line 256
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    .line 257
    invoke-virtual {p0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 259
    .local v0, target:I
    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;->onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_0

    .line 261
    .end local v0           #target:I
    :cond_3
    if-nez p2, :cond_1

    .line 262
    iput-boolean v4, p0, Lcom/htc/widget/HtcNumberPicker;->isRightIdle:Z

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mContext:Landroid/content/Context;

    .line 409
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->onDestroy()V

    .line 411
    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 413
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    .line 414
    return-void
.end method

.method public setCenter(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker;->mTableHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/MyTableView;->setCenterView(II)V

    .line 209
    return-void
.end method

.method public setCenterView(I)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    if-eqz v0, :cond_2

    .line 182
    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 183
    :cond_1
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 184
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcNumberPicker;->mCurrent:I

    .line 186
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcNumberPicker;->setCenter(I)V

    .line 187
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 189
    iput-boolean v2, p0, Lcom/htc/widget/HtcNumberPicker;->mIsOnInitState:Z

    goto :goto_0

    .line 191
    :cond_2
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 192
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setMultiStopDistance(I)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setMultiStopDistance(I)Z

    move-result v0

    return v0
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/htc/widget/HtcNumberPicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 120
    :cond_0
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 140
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mStart:I

    .line 141
    iput p2, p0, Lcom/htc/widget/HtcNumberPicker;->mEnd:I

    .line 142
    new-instance v0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/widget/HtcNumberPicker;II)V

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 143
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 146
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "candidates"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 150
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mStart:I

    .line 151
    iput p2, p0, Lcom/htc/widget/HtcNumberPicker;->mEnd:I

    .line 152
    new-instance v0, Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker$TableAdapter;-><init>(Lcom/htc/widget/HtcNumberPicker;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    .line 153
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/widget/HtcNumberPicker;->mAdapter:Lcom/htc/widget/HtcNumberPicker$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    .line 156
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setRepeatEnable(Z)V

    .line 426
    return-void
.end method

.method public setShowNumberDigits(I)V
    .locals 0
    .parameter "d"

    .prologue
    .line 159
    iput p1, p0, Lcom/htc/widget/HtcNumberPicker;->mDigits:I

    .line 160
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    .line 213
    return-void
.end method

.method public slideWithOffset(I)V
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->slideWithOffset(I)V

    .line 224
    if-lez p1, :cond_0

    .line 226
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    iget v1, p0, Lcom/htc/widget/HtcNumberPicker;->mStart:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    .line 229
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/htc/widget/HtcNumberPicker;->mIsNeverSlidedBeforeSet:Z

    .line 230
    iget-object v0, p0, Lcom/htc/widget/HtcNumberPicker;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 231
    return-void

    .line 227
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcNumberPicker;->mEnd:I

    iput v0, p0, Lcom/htc/widget/HtcNumberPicker;->mPos:I

    goto :goto_0
.end method
