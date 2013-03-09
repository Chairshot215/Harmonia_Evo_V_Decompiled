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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/NumberTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/NumberTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v3, "NumberTableView"

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->LOG_TAG:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/widget/NumberTableView;->mScrollControl:Lcom/htc/widget/TableViewScrollControl;

    iput-boolean v6, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    iput-object v4, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    iput-boolean v6, p0, Lcom/htc/widget/NumberTableView;->mChangeBkg:Z

    iput-object p1, p0, Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/NumberTableView;->mTableHeight:I

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/widget/NumberTableView;->mAmPmTextSize:I

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mHtcContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableInflater:Landroid/view/LayoutInflater;

    const v4, 0x20900a2

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x2020177

    invoke-virtual {p0, v3}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/MyTableView;

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    new-instance v1, Lcom/htc/view/table/TableLayoutParams;

    invoke-direct {v1}, Lcom/htc/view/table/TableLayoutParams;-><init>()V

    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableLayoutParams;->enableScrollOverBoundary(Z)V

    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl(Z)V

    invoke-virtual {v1, v5}, Lcom/htc/view/table/TableLayoutParams;->setOrientation(I)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v6, v1}, Lcom/htc/widget/MyTableView;->setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/MyTableView;->setNumColumnRows(I)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/MyTableView;->setHorizontalSpacing(I)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/MyTableView;->setVerticalSpacing(I)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    const/4 v2, 0x0

    new-instance v2, Lcom/htc/widget/TableViewScrollControl;

    invoke-direct {v2}, Lcom/htc/widget/TableViewScrollControl;-><init>()V

    invoke-virtual {v2, v5}, Lcom/htc/widget/TableViewScrollControl;->setOrientation(I)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v2, v3}, Lcom/htc/widget/TableViewScrollControl;->setTableView(Lcom/htc/view/table/TableView;)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, v2}, Lcom/htc/widget/MyTableView;->setScrollControl(Lcom/htc/view/ScrollControl;)V

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    const v4, 0x20a0015

    invoke-virtual {v3, v4}, Lcom/htc/widget/MyTableView;->setSelector(I)V

    const v3, 0x20c0175

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->AM:Ljava/lang/String;

    const v3, 0x20c0176

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/NumberTableView;->PM:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/MyTableView;->setOnScrollListener(Lcom/htc/view/table/AbstractTableView$OnScrollListener;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "NumberTableView"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/NumberTableView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/widget/NumberTableView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/NumberTableView;->mChangeBkg:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/NumberTableView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/NumberTableView;->mDigits:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/NumberTableView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->AM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/NumberTableView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->PM:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeBkg()V
    .locals 2

    const v0, 0x2020175

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x2080b01

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x2020178

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x2080b00

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x2020176

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x2080b02

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/NumberTableView;->mChangeBkg:Z

    return-void
.end method

.method public getCenterAmPmView()I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0}, Lcom/htc/widget/MyTableView;->getCenterChildPosition()I

    move-result v0

    return v0
.end method

.method public getCenterView()I
    .locals 2

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

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    return-object v0
.end method

.method public onScroll(Lcom/htc/view/table/AbstractTableView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/view/table/AbstractTableView;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    if-ne v1, p1, :cond_0

    if-ne v2, p2, :cond_1

    iput-boolean v2, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    if-ne v2, v1, :cond_2

    if-nez p2, :cond_2

    iput-boolean v3, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    invoke-virtual {p0}, Lcom/htc/widget/NumberTableView;->getCenterView()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    invoke-interface {v1, p0, v0}, Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;->onDataSet(Lcom/htc/widget/NumberTableView;I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/NumberTableView;->isRightIdle:Z

    goto :goto_0
.end method

.method public releaseResource()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/NumberTableView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/NumberTableView$TableAdapter;->onDestroy()V

    iput-object v1, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    return-void
.end method

.method public setCenter(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    iget v1, p0, Lcom/htc/widget/NumberTableView;->mTableHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/widget/MyTableView;->setCenterView(II)V

    return-void
.end method

.method public setCenterAmPmView(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/htc/widget/NumberTableView;->setCenter(I)V

    iput p1, p0, Lcom/htc/widget/NumberTableView;->mCurrent:I

    return-void
.end method

.method public setCenterView(I)V
    .locals 2

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

    iget v0, p0, Lcom/htc/widget/NumberTableView;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/NumberTableView;->setCenter(I)V

    return-void
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/htc/widget/NumberTableView;->mIdleScrollListener:Lcom/htc/widget/NumberTableView$OnScrollIdleStateListener;

    :cond_0
    return-void
.end method

.method public setRange(II)V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    :cond_0
    new-instance v0, Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/widget/NumberTableView$TableAdapter;-><init>(Lcom/htc/widget/NumberTableView;II)V

    iput-object v0, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/widget/NumberTableView;->mAdapter:Lcom/htc/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/MyTableView;->setVisibility(I)V

    return-void
.end method

.method public setShowNumberDigits(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/NumberTableView;->mDigits:I

    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->setTableEnabled(Z)V

    return-void
.end method

.method public slideWithOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/NumberTableView;->mTableView:Lcom/htc/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MyTableView;->slideWithOffset(I)V

    return-void
.end method
