.class public Lcom/htc/Weather/widget/DaysForecastView;
.super Landroid/widget/RelativeLayout;
.source "DaysForecastView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DaysForecastView"


# instance fields
.field private final SET_LOADING_TIME_OUT:I

.field private final SET_LOADING_TXT:I

.field private final SET_REMOVE_LODING_TXT:I

.field private dayItem:[Lcom/htc/Weather/widget/ViewFolder;

.field private fLayout:Landroid/widget/LinearLayout;

.field private mAnimTxt:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field public mDetailOnline:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mUpdateStr:Ljava/lang/String;

.field private mUpdateTime:Landroid/widget/TextView;

.field public mVenderLogo:Landroid/widget/ImageView;

.field private numberOfDay:I

.field private root:Landroid/widget/LinearLayout;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->SET_LOADING_TXT:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->SET_LOADING_TIME_OUT:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->SET_REMOVE_LODING_TXT:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->numberOfDay:I

    .line 195
    new-instance v0, Lcom/htc/Weather/widget/DaysForecastView$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/DaysForecastView$1;-><init>(Lcom/htc/Weather/widget/DaysForecastView;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/DaysForecastView;->initView(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/Weather/data/CityInfo;I)V
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "total_cities"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->SET_LOADING_TXT:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->SET_LOADING_TIME_OUT:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->SET_REMOVE_LODING_TXT:I

    .line 32
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->numberOfDay:I

    .line 195
    new-instance v0, Lcom/htc/Weather/widget/DaysForecastView$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/DaysForecastView$1;-><init>(Lcom/htc/Weather/widget/DaysForecastView;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/DaysForecastView;->initView(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/DaysForecastView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const v10, 0x7f080064

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03001a

    invoke-virtual {v7, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->view:Landroid/view/View;

    .line 64
    const v7, 0x7f0c006f

    invoke-virtual {p0, v7}, Lcom/htc/Weather/widget/DaysForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->root:Landroid/widget/LinearLayout;

    .line 65
    const v7, 0x7f0c000a

    invoke-virtual {p0, v7}, Lcom/htc/Weather/widget/DaysForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mAnimTxt:Landroid/widget/TextView;

    .line 66
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateStr:Ljava/lang/String;

    .line 67
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->view:Landroid/view/View;

    const v8, 0x7f0c0009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateTime:Landroid/widget/TextView;

    .line 70
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->view:Landroid/view/View;

    const v8, 0x7f0c0070

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mVenderLogo:Landroid/widget/ImageView;

    .line 72
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->view:Landroid/view/View;

    const v8, 0x7f0c0072

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->fLayout:Landroid/widget/LinearLayout;

    .line 74
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->numberOfDay:I

    .line 75
    iget v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->numberOfDay:I

    new-array v7, v7, [Lcom/htc/Weather/widget/ViewFolder;

    iput-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    .line 76
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 77
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, item:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    new-instance v8, Lcom/htc/Weather/widget/ViewFolder;

    invoke-direct {v8}, Lcom/htc/Weather/widget/ViewFolder;-><init>()V

    aput-object v8, v7, v1

    .line 80
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c0074

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lcom/htc/Weather/widget/ViewFolder;->day_title:Landroid/widget/TextView;

    .line 81
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c0075

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lcom/htc/Weather/widget/ViewFolder;->date:Landroid/widget/TextView;

    .line 82
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c0073

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v8, Lcom/htc/Weather/widget/ViewFolder;->conicon:Landroid/widget/ImageView;

    .line 83
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c003c

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lcom/htc/Weather/widget/ViewFolder;->temp:Landroid/widget/TextView;

    .line 85
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080063

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v3, itemp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->fLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    .line 91
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    .local v6, v:Landroid/view/View;
    const v7, 0x2080701

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 93
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/htc/Weather/widget/DaysForecastView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .local v5, p:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->fLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .end local v5           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 98
    .end local v2           #item:Landroid/view/View;
    .end local v3           #itemp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const v7, 0x7f0c0071

    invoke-virtual {p0, v7}, Lcom/htc/Weather/widget/DaysForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, bottom_info_more_online:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateStr:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateTime:Landroid/widget/TextView;

    invoke-static {v7, v8, v9}, Lcom/htc/Weather/util/RefreshUtil;->getStringMoreDetail(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, more_txt:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_2
    return-void
.end method


# virtual methods
.method public adjustLayoutMargin(Z)V
    .locals 10
    .parameter "isPortrait"

    .prologue
    const v9, 0x7f080064

    const v8, 0x7f080062

    const/4 v7, -0x1

    .line 106
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v4, pLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #pLayout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    .restart local v4       #pLayout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->fLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, item:Landroid/view/View;
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    new-instance v7, Lcom/htc/Weather/widget/ViewFolder;

    invoke-direct {v7}, Lcom/htc/Weather/widget/ViewFolder;-><init>()V

    aput-object v7, v6, v0

    .line 120
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c0074

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/htc/Weather/widget/ViewFolder;->day_title:Landroid/widget/TextView;

    .line 121
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c0075

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/htc/Weather/widget/ViewFolder;->date:Landroid/widget/TextView;

    .line 122
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c0073

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v7, Lcom/htc/Weather/widget/ViewFolder;->conicon:Landroid/widget/ImageView;

    .line 123
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c003c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/htc/Weather/widget/ViewFolder;->temp:Landroid/widget/TextView;

    .line 125
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080063

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, itemp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->fLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 131
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    .local v5, v:Landroid/view/View;
    const v6, 0x2080701

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/htc/Weather/widget/DaysForecastView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v3, p:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/Weather/widget/DaysForecastView;->fLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .end local v3           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 137
    .end local v1           #item:Landroid/view/View;
    .end local v2           #itemp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public showUpdating()V
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    return-void
.end method

.method public updateData()V
    .locals 11

    .prologue
    .line 149
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v5

    .line 152
    .local v5, data:Lcom/htc/Weather/data/CityInfo;
    iget-boolean v0, v5, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v0, :cond_2

    if-nez v5, :cond_3

    .line 153
    :cond_2
    const-string v0, "DaysForecastView"

    const-string v1, "data.hasWeatherData=false || mCityInfo==null"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateTime:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/htc/Weather/data/CityInfo;->getFormatUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/DaysForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 161
    .local v9, mTextView_More:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/Weather/widget/DaysForecastView;->mUpdateTime:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/htc/Weather/util/RefreshUtil;->getStringMoreDetail(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, more_txt:Ljava/lang/String;
    if-eqz v9, :cond_4

    if-eqz v10, :cond_4

    .line 163
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mVenderLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/Weather/widget/DaysForecastView;->mVenderLogo:Landroid/widget/ImageView;

    const/16 v2, 0x96

    const/16 v3, 0x19

    const v4, 0x7f020036

    invoke-static/range {v0 .. v5}, Lcom/htc/Weather/util/RefreshUtil;->setVenderLogo(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/htc/Weather/data/CityInfo;)V

    .line 169
    :cond_5
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->numberOfDay:I

    if-ge v8, v0, :cond_0

    .line 171
    invoke-virtual {v5}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v0

    iget v0, v0, Lcom/htc/Weather/data/City;->todayIndex:I

    add-int/2addr v0, v8

    add-int/lit8 v6, v0, 0x1

    .line 172
    .local v6, day_idx:I
    const-string v0, "DaysForecastView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-ltz v6, :cond_6

    invoke-virtual {v5}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v0}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 175
    invoke-virtual {v5}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v0, v6}, Lcom/htc/Weather/data/City$Condition;->get(I)Lcom/htc/Weather/data/DayForecast;

    move-result-object v7

    .line 176
    .local v7, forecast:Lcom/htc/Weather/data/DayForecast;
    const-string v0, "DaysForecastView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getWeekDay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/htc/Weather/data/DayForecast;->getWeekDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "DaysForecastView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getDate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/htc/Weather/data/DayForecast;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/htc/Weather/widget/ViewFolder;->day_title:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/htc/Weather/data/DayForecast;->getWeekDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/htc/Weather/widget/ViewFolder;->date:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/htc/Weather/data/DayForecast;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/htc/Weather/widget/ViewFolder;->conicon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/Weather/widget/DaysForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/htc/Weather/data/DayForecast;->getForecastIcon()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/Weather/widget/IconPicker;->getForecastLargeIconId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/htc/Weather/widget/ViewFolder;->temp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/htc/Weather/data/DayForecast;->getDayHighTemp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/htc/Weather/data/DayForecast;->getDayLowTemp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const-string v0, "DaysForecastView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v2, v2, v8

    iget-object v2, v2, Lcom/htc/Weather/widget/ViewFolder;->day_title:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v7           #forecast:Lcom/htc/Weather/data/DayForecast;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 188
    :cond_6
    iget-object v0, p0, Lcom/htc/Weather/widget/DaysForecastView;->dayItem:[Lcom/htc/Weather/widget/ViewFolder;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/htc/Weather/widget/ViewFolder;->hideView()V

    goto :goto_2
.end method
