.class public Lcom/htc/widget/NumberTableView;
.super Landroid/widget/RelativeLayout;
.source "NumberTableView.java"

# interfaces
.implements Lcom/htc/view/table/AbstractTableView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/NumberTableView$TableAdapter;,
        Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;
    }
.end annotation


# instance fields
.field private AM:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private PM:Ljava/lang/String;

.field private isRightIdle:Z

.field private mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

.field private mAmPmTextSize:I

.field private mChangeBkg:Z

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mDigits:I

.field private mHtcContext:Landroid/content/Context;

.field private mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

.field private mLayoutParams:Lcom/htc/view/table/TableLayoutParams;

.field private mScrollControl:Lcom/htc/widget/TableViewScrollControl;

.field private mTableHeight:I

.field private mTableInflater:Landroid/view/LayoutInflater;

.field private mTableView:Lcom/htc/widget/MyTableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/NumberTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/NumberTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-string v3, "NumberTableView"

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->LOG_TAG:Ljava/lang/String;

    .line 50
    iput-object v4, p0, Lcom/htc/widget/NumberTableView;->mScrollControl:Lcom/htc/widget/TableViewScrollControl;

    .line 57
    iput-boolean v6, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    .line 59
    iput-object v4, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    .line 60
    iput-boolean v6, p0, Lcom/htc/widget/NumberTableView;->mChangeBkg:Z

    .line 76
    iput-object p1, p0, Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/NumberTableView;->mTableHeight:I

    .line 83
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/NumberTableView;->mAmPmTextSize:I

    .line 84
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableInflater:Landroid/view/LayoutInflater;

    .line 85
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableInflater:Landroid/view/LayoutInflater;

    const v4, 0x20900a2

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 87
    const v3, 0x2020177

    invoke-virtual {p0, v3}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MyTableView;

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    .line 88
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 90
    new-instance v1, Lcom/htc/view/table/TableLayoutParams;

    invoke-direct {v1}, Lcom/htc/view/table/TableLayoutParams;-><init>()V

    .line 91
    .local v1, mLayoutParams:Lcom/htc/view/table/TableLayoutParams;
    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableLayoutParams;->enableScrollOverBoundary(Z)V

    .line 92
    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl(Z)V

    .line 93
    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableLayoutParams;->setOrientation(I)V

    .line 94
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v6, v1}, Lcom/htc/widget/MyTableView;->setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V

    .line 95
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/MyTableView;->setNumColumnRows(I)V

    .line 96
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 97
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 98
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 99
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    .line 101
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    new-instance v2, Lcom/htc/widget/TableViewScrollControl;

    .end local v2           #mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    invoke-direct {v2}, Lcom/htc/widget/TableViewScrollControl;-><init>()V

    .line 105
    .restart local v2       #mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    invoke-virtual {v2, v5}, Lcom/htc/widget/TableViewScrollControl;->setOrientation(I)V

    .line 106
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/TableViewScrollControl;->setTableView(Lcom/htc/view/table/TableView;)V

    .line 108
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v2}, Lcom/htc/widget/MyTableView;->setScrollControl(Lcom/htc/view/ScrollControl;)V

    .line 110
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    const v4, 0x20a0015

    invoke-virtual {v3, v4}, Lcom/htc/widget/MyTableView;->setSelector(I)V

    .line 112
    const v3, 0x20c0175

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->AM:Ljava/lang/String;

    .line 113
    const v3, 0x20c0176

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->PM:Ljava/lang/String;

    .line 116
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/MyTableView;->setOnScrollListener(Lcom/htc/view/table/AbstractTableView$OnScrollListener;)V

    .line 117
    :cond_0
    return-void

    .line 79
    .end local v1           #mLayoutParams:Lcom/htc/view/table/TableLayoutParams;
    .end local v2           #mScrollControl:Lcom/htc/widget/TableViewScrollControl;
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "NumberTableView"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/NumberTableView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/NumberTableView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/widget/NumberTableView;->mChangeBkg:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/NumberTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/widget/NumberTableView;->mDigits:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/NumberTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->AM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/NumberTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->PM:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeBkg()V
    .locals 2

    .prologue
    .line 125
    const v0, 0x2020175

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x2080b01

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    const v0, 0x2020178

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x2080b00

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 127
    const v0, 0x2020176

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x2080b02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/NumberTableView;->mChangeBkg:Z

    .line 129
    return-void
.end method

.method public getCenterAmPmView()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0}, Lcom/htc/widget/MyTableView;->getCenterChildPosition()I

    move-result v0

    return v0
.end method

.method public getCenterView()I
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView$TableAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v1}, Lcom/htc/widget/MyTableView;->getCenterChildPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/NumberTableView$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getTableView()Lcom/htc/widget/MyTableView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    return-object v0
.end method

.method public onScroll(Lcom/htc/view/table/AbstractTableView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 222
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    if-ne v1, p1, :cond_0

    .line 190
    if-ne v2, p2, :cond_1

    .line 191
    iput-boolean v2, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-boolean v1, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    if-ne v2, v1, :cond_2

    if-nez p2, :cond_2

    .line 195
    iput-boolean v3, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    .line 196
    invoke-virtual {p0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    .line 198
    .local v0, target:I
    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;->onDataSet(Lcom/htc/widget/NumberTableView;I)V

    goto :goto_0

    .line 200
    .end local v0           #target:I
    :cond_2
    if-nez p2, :cond_0

    .line 201
    iput-boolean v3, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iput-object v1, p0, Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;

    .line 315
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView$TableAdapter;->onDestroy()V

    .line 317
    iput-object v1, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    .line 319
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    .line 320
    return-void
.end method

.method public setCenter(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    iget v1, p0, Lcom/htc/widget/NumberTableView;->mTableHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/MyTableView;->setCenterView(II)V

    .line 162
    return-void
.end method

.method public setCenterAmPmView(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/htc/widget/NumberTableView;->setCenter(I)V

    .line 157
    iput p1, p0, Lcom/htc/widget/NumberTableView;->mCurrent:I

    .line 158
    return-void
.end method

.method public setCenterView(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView$TableAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/NumberTableView$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/NumberTableView;->mCurrent:I

    .line 148
    iget v0, p0, Lcom/htc/widget/NumberTableView;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->setCenter(I)V

    .line 149
    return-void
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    iput-object p1, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    .line 122
    :cond_0
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    .line 133
    :cond_0
    new-instance v0, Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/widget/NumberTableView$TableAdapter;-><init>(Lcom/htc/widget/NumberTableView;II)V

    iput-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    .line 134
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public setShowNumberDigits(I)V
    .locals 0
    .parameter "d"

    .prologue
    .line 139
    iput p1, p0, Lcom/htc/widget/NumberTableView;->mDigits:I

    .line 140
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    .line 166
    return-void
.end method

.method public slideWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->slideWithOffset(I)V

    .line 174
    return-void
.end method
