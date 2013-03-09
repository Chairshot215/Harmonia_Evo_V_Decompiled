.class public Lcom/htc/Weather/widget/NowForecastView;
.super Landroid/widget/RelativeLayout;
.source "NowForecastView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NowForecastView"


# instance fields
.field private final SET_LOADING_TIME_OUT:I

.field private final SET_LOADING_TXT:I

.field private final SET_REMOVE_LODING_TXT:I

.field private dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

.field private mAnimTxt:Landroid/widget/TextView;

.field private mCityInfo:Lcom/htc/Weather/data/CityInfo;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mToday_CurTemp:Landroid/widget/TextView;

.field private mToday_Date:Landroid/widget/TextView;

.field private mToday_Descrip:Landroid/widget/TextView;

.field private mToday_Icon:Landroid/widget/ImageView;

.field private mTomorrow_CurTemp:Landroid/widget/TextView;

.field private mTomorrow_Date:Landroid/widget/TextView;

.field private mTomorrow_Descrip:Landroid/widget/TextView;

.field private mTomorrow_Icon:Landroid/widget/ImageView;

.field private mTonight_CurTemp:Landroid/widget/TextView;

.field private mTonight_Date:Landroid/widget/TextView;

.field private mTonight_Descrip:Landroid/widget/TextView;

.field private mTonight_Icon:Landroid/widget/ImageView;

.field private mUpdateStr:Ljava/lang/String;

.field private mUpdate_Time:Landroid/widget/TextView;

.field public mVenderLogo:Landroid/widget/ImageView;

.field private nLayout:Landroid/widget/LinearLayout;

.field private numberOfDay:I

.field private root:Landroid/widget/RelativeLayout;

.field private tab_l:Landroid/widget/RelativeLayout$LayoutParams;

.field private tab_p:Landroid/widget/RelativeLayout$LayoutParams;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->SET_LOADING_TXT:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->SET_LOADING_TIME_OUT:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->SET_REMOVE_LODING_TXT:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->numberOfDay:I

    .line 240
    new-instance v0, Lcom/htc/Weather/widget/NowForecastView$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/NowForecastView$1;-><init>(Lcom/htc/Weather/widget/NowForecastView;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/NowForecastView;->initView(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/Weather/data/CityInfo;I)V
    .locals 1
    .parameter "context"
    .parameter "data"
    .parameter "total_cities"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->SET_LOADING_TXT:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->SET_LOADING_TIME_OUT:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->SET_REMOVE_LODING_TXT:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/Weather/widget/NowForecastView;->numberOfDay:I

    .line 240
    new-instance v0, Lcom/htc/Weather/widget/NowForecastView$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/NowForecastView$1;-><init>(Lcom/htc/Weather/widget/NowForecastView;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/htc/Weather/widget/NowForecastView;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 77
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/NowForecastView;->initView(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/NowForecastView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/NowForecastView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/Weather/widget/TabNowFolder;->hideView()V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method

.method private getPrecipPercent(Ljava/lang/String;)I
    .locals 3
    .parameter "p"

    .prologue
    .line 165
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 166
    .local v1, precip:F
    const/4 v0, 0x0

    .line 167
    .local v0, percent:I
    const/high16 v2, 0x42c8

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 169
    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const v10, 0x7f080067

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03001c

    invoke-virtual {v7, v8, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->view:Landroid/view/View;

    .line 85
    const v7, 0x7f0c0076

    invoke-virtual {p0, v7}, Lcom/htc/Weather/widget/NowForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->root:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->view:Landroid/view/View;

    const v8, 0x7f0c0009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdate_Time:Landroid/widget/TextView;

    .line 88
    const v7, 0x7f0c000a

    invoke-virtual {p0, v7}, Lcom/htc/Weather/widget/NowForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mAnimTxt:Landroid/widget/TextView;

    .line 89
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdateStr:Ljava/lang/String;

    .line 92
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->view:Landroid/view/View;

    const v8, 0x7f0c0070

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mVenderLogo:Landroid/widget/ImageView;

    .line 94
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->view:Landroid/view/View;

    const v8, 0x7f0c0079

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->nLayout:Landroid/widget/LinearLayout;

    .line 95
    iget v7, p0, Lcom/htc/Weather/widget/NowForecastView;->numberOfDay:I

    new-array v7, v7, [Lcom/htc/Weather/widget/TabNowFolder;

    iput-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    .line 96
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 97
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03001d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 99
    .local v2, item:Landroid/view/View;
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    new-instance v8, Lcom/htc/Weather/widget/TabNowFolder;

    invoke-direct {v8}, Lcom/htc/Weather/widget/TabNowFolder;-><init>()V

    aput-object v8, v7, v1

    .line 100
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c007b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lcom/htc/Weather/widget/TabNowFolder;->day_txt:Landroid/widget/TextView;

    .line 101
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c007a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v8, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    .line 102
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c007e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    .line 103
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v8, v7, v1

    const v7, 0x7f0c007c

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    .line 105
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v3, itemp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->nLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    .line 111
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 112
    .local v6, v:Landroid/view/View;
    const v7, 0x2080701

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/htc/Weather/widget/NowForecastView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v5, p:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->nLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .end local v5           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 118
    .end local v2           #item:Landroid/view/View;
    .end local v3           #itemp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const v7, 0x7f0c0077

    invoke-virtual {p0, v7}, Lcom/htc/Weather/widget/NowForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    .local v0, bottom_info_more_online:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdateStr:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdate_Time:Landroid/widget/TextView;

    invoke-static {v7, v8, v9}, Lcom/htc/Weather/util/RefreshUtil;->getStringMoreDetail(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, more_txt:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public adjustLayoutMargin(Z)V
    .locals 12
    .parameter "isPortrait"

    .prologue
    const v11, 0x7f080067

    const v10, 0x7f080066

    const/4 v7, -0x1

    const v9, 0x7f080065

    .line 126
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v4, pLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xc

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v4           #pLayout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    .restart local v4       #pLayout:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->root:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->nLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 139
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, item:Landroid/view/View;
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    new-instance v7, Lcom/htc/Weather/widget/TabNowFolder;

    invoke-direct {v7}, Lcom/htc/Weather/widget/TabNowFolder;-><init>()V

    aput-object v7, v6, v0

    .line 142
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c007b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/htc/Weather/widget/TabNowFolder;->day_txt:Landroid/widget/TextView;

    .line 143
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c007a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v7, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    .line 144
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    .line 145
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c007c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    .line 146
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v7, v6, v0

    const v6, 0x7f0c007d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    .line 148
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v2, itemp:Landroid/widget/LinearLayout$LayoutParams;
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->nLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 156
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 157
    .local v5, v:Landroid/view/View;
    const v6, 0x2080701

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 158
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/htc/Weather/widget/NowForecastView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v3, p:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/htc/Weather/widget/NowForecastView;->nLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .end local v3           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 162
    .end local v1           #item:Landroid/view/View;
    .end local v2           #itemp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public showUpdating()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdate_Time:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdate_Time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    return-void
.end method

.method public updateData()V
    .locals 15

    .prologue
    const v14, 0x7f0a000f

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 179
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v1, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v5

    .line 182
    .local v5, data:Lcom/htc/Weather/data/CityInfo;
    if-eqz v5, :cond_2

    iget-boolean v0, v5, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-nez v0, :cond_3

    .line 183
    :cond_2
    invoke-direct {p0}, Lcom/htc/Weather/widget/NowForecastView;->clearData()V

    .line 184
    const-string v0, "NowForecastView"

    const-string v1, "data.hasWeatherData=false || mCityInfo==null"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdate_Time:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/htc/Weather/data/CityInfo;->getFormatUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mVenderLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mVenderLogo:Landroid/widget/ImageView;

    const/16 v2, 0x96

    const/16 v3, 0x19

    const v4, 0x7f020036

    invoke-static/range {v0 .. v5}, Lcom/htc/Weather/util/RefreshUtil;->setVenderLogo(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/htc/Weather/data/CityInfo;)V

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->view:Landroid/view/View;

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 195
    .local v7, mTextView_More:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdateStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/Weather/widget/NowForecastView;->mUpdate_Time:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/htc/Weather/util/RefreshUtil;->getStringMoreDetail(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, more_txt:Ljava/lang/String;
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 197
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_5
    invoke-virtual {v5}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v6

    .line 201
    .local v6, forecast:Lcom/htc/Weather/data/City;
    iget-object v0, v6, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v0}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v9

    .line 203
    .local v9, today:Lcom/htc/Weather/data/DayForecast;
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v12

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->day_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v12

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/htc/Weather/data/DayForecast;->getDayHighTemp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v12

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v12

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/htc/Weather/data/DayForecast;->getForecastIcon()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/Weather/widget/IconPicker;->getForecastLargeIconId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v12

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/htc/Weather/data/DayForecast;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v12

    invoke-virtual {v0}, Lcom/htc/Weather/widget/TabNowFolder;->showView()V

    .line 212
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v13

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->day_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v13

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/htc/Weather/data/DayForecast;->getNightLowTemp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v13

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v13

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/htc/Weather/data/DayForecast;->getNightForecaseIcon()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/Weather/widget/IconPicker;->getForecastLargeIconId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v13

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/htc/Weather/data/DayForecast;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/htc/Weather/widget/TabNowFolder;->showView()V

    .line 222
    iget-object v0, v6, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    iget v1, v6, Lcom/htc/Weather/data/City;->todayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/data/City$Condition;->get(I)Lcom/htc/Weather/data/DayForecast;

    move-result-object v10

    .line 223
    .local v10, tomorrow:Lcom/htc/Weather/data/DayForecast;
    if-eqz v10, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->day_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->curTemp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/htc/Weather/data/DayForecast;->getDayHighTemp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->hl_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/Weather/widget/NowForecastView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Lcom/htc/Weather/data/DayForecast;->getForecastIcon()I

    move-result v2

    invoke-static {v1, v2}, Lcom/htc/Weather/widget/IconPicker;->getForecastLargeIconId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/htc/Weather/widget/TabNowFolder;->date_txt:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/htc/Weather/data/DayForecast;->getFormatDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/htc/Weather/widget/NowForecastView;->dayItem:[Lcom/htc/Weather/widget/TabNowFolder;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/htc/Weather/widget/TabNowFolder;->showView()V

    goto/16 :goto_0
.end method
