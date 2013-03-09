.class public Lcom/htc/android/worldclock/widget/NumberTableView;
.super Landroid/widget/RelativeLayout;
.source "NumberTableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;
    }
.end annotation


# instance fields
.field private AM:Ljava/lang/String;

.field private PM:Ljava/lang/String;

.field private mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

.field private mAmPmTextSize:I

.field private mChangeBkg:Z

.field private mContext:Landroid/content/Context;

.field private mCurrent:I

.field private mTableHeight:I

.field private mTableInflater:Landroid/view/LayoutInflater;

.field private mTableView:Lcom/htc/android/worldclock/widget/MyTableView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/worldclock/widget/NumberTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/worldclock/widget/NumberTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-boolean v6, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mChangeBkg:Z

    .line 51
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 52
    iput-object p1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mContext:Landroid/content/Context;

    .line 54
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableHeight:I

    .line 55
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAmPmTextSize:I

    .line 56
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableInflater:Landroid/view/LayoutInflater;

    .line 57
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030012

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 59
    const v3, 0x7f0b0043

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/android/worldclock/widget/MyTableView;

    iput-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    .line 60
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/android/worldclock/widget/MyTableView;->setVisibility(I)V

    .line 62
    new-instance v0, Lcom/htc/view/table/TableLayoutParams;

    invoke-direct {v0}, Lcom/htc/view/table/TableLayoutParams;-><init>()V

    .line 63
    .local v0, mLayoutParams:Lcom/htc/view/table/TableLayoutParams;
    invoke-virtual {v0, v5}, Lcom/htc/view/table/TableLayoutParams;->enableScrollOverBoundary(Z)V

    .line 64
    invoke-virtual {v0, v5}, Lcom/htc/view/table/TableLayoutParams;->initialWithScrollControl(Z)V

    .line 65
    invoke-virtual {v0, v5}, Lcom/htc/view/table/TableLayoutParams;->setOrientation(I)V

    .line 66
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v6, v0}, Lcom/htc/android/worldclock/widget/MyTableView;->setTableLayoutParams(ILcom/htc/view/table/TableLayoutParams;)V

    .line 67
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/android/worldclock/widget/MyTableView;->setNumColumnRows(I)V

    .line 68
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v7}, Lcom/htc/android/worldclock/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 69
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v6}, Lcom/htc/android/worldclock/widget/MyTableView;->setVerticalSpacing(I)V

    .line 70
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v7}, Lcom/htc/android/worldclock/widget/MyTableView;->setHorizontalSpacing(I)V

    .line 71
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v6}, Lcom/htc/android/worldclock/widget/MyTableView;->setVerticalSpacing(I)V

    .line 73
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v5}, Lcom/htc/android/worldclock/widget/MyTableView;->setTableEnabled(Z)V

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, mScrollControl:Lcom/htc/android/worldclock/widget/TableViewScrollControl;
    new-instance v1, Lcom/htc/android/worldclock/widget/TableViewScrollControl;

    .end local v1           #mScrollControl:Lcom/htc/android/worldclock/widget/TableViewScrollControl;
    invoke-direct {v1}, Lcom/htc/android/worldclock/widget/TableViewScrollControl;-><init>()V

    .line 77
    .restart local v1       #mScrollControl:Lcom/htc/android/worldclock/widget/TableViewScrollControl;
    invoke-virtual {v1, v5}, Lcom/htc/android/worldclock/widget/TableViewScrollControl;->setOrientation(I)V

    .line 78
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v1, v3}, Lcom/htc/android/worldclock/widget/TableViewScrollControl;->setTableView(Lcom/htc/view/table/TableView;)V

    .line 80
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v3, v1}, Lcom/htc/android/worldclock/widget/MyTableView;->setScrollControl(Lcom/htc/view/ScrollControl;)V

    .line 82
    iget-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Lcom/htc/android/worldclock/widget/MyTableView;->setSelector(I)V

    .line 84
    const v3, 0x7f08001c

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->AM:Ljava/lang/String;

    .line 85
    const v3, 0x7f08001d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->PM:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->drawable_timer_tumblers01()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 87
    .local v2, tumblers:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 88
    const v3, 0x7f0b0041

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/worldclock/widget/NumberTableView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/widget/NumberTableView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mChangeBkg:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/widget/NumberTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->AM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/widget/NumberTableView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->PM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/widget/NumberTableView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAmPmTextSize:I

    return v0
.end method


# virtual methods
.method public changeBkg()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 93
    invoke-virtual {p0}, Lcom/htc/android/worldclock/widget/NumberTableView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->drawable_timer_w_tumblers01()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, tumblers:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 96
    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->drawable_timer_w_shadow01()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    const v1, 0x7f0b0042

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/widget/NumberTableView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/htc/android/worldclock/ResUtils;->drawable_timer_w_tumblers_line01()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mChangeBkg:Z

    .line 100
    return-void
.end method

.method public getCenterAmPmView()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 122
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/MyTableView;->getCenterChildPosition()I

    move-result v0

    return v0
.end method

.method public getCenterView()I
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 111
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/widget/MyTableView;->getCenterChildPosition()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getTableView()Lcom/htc/android/worldclock/widget/MyTableView;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 143
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    return-object v0
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 230
    iput-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mContext:Landroid/content/Context;

    .line 231
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->onDestroy()V

    .line 233
    iput-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    .line 235
    :cond_0
    iput-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    .line 236
    return-void
.end method

.method public setCenter(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 132
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 133
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    iget v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/worldclock/widget/MyTableView;->setCenterView(II)V

    .line 134
    return-void
.end method

.method public setCenterAmPmView(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 126
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/htc/android/worldclock/widget/NumberTableView;->setCenter(I)V

    .line 128
    iput p1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mCurrent:I

    .line 129
    return-void
.end method

.method public setCenterView(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 115
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 116
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    invoke-virtual {v1}, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mCurrent:I

    .line 117
    iget v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mCurrent:I

    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/widget/NumberTableView;->setCenter(I)V

    .line 118
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 103
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 104
    new-instance v0, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;-><init>(Lcom/htc/android/worldclock/widget/NumberTableView;II)V

    iput-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    .line 105
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    iget-object v1, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mAdapter:Lcom/htc/android/worldclock/widget/NumberTableView$TableAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/widget/MyTableView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/widget/MyTableView;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 137
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 138
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/MyTableView;->setTableEnabled(Z)V

    .line 139
    return-void
.end method

.method public slideWithOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 147
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 148
    iget-object v0, p0, Lcom/htc/android/worldclock/widget/NumberTableView;->mTableView:Lcom/htc/android/worldclock/widget/MyTableView;

    invoke-virtual {v0, p1}, Lcom/htc/android/worldclock/widget/MyTableView;->slideWithOffset(I)V

    .line 149
    return-void
.end method
