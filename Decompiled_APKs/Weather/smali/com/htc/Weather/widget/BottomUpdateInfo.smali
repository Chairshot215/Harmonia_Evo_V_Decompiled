.class public Lcom/htc/Weather/widget/BottomUpdateInfo;
.super Landroid/widget/LinearLayout;
.source "BottomUpdateInfo.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final TAG:Ljava/lang/String; = "WeatherMaGroup"


# instance fields
.field private final SET_LOADING_TIME_OUT:I

.field private final SET_LOADING_TXT:I

.field private mAnimTxt:Landroid/widget/TextView;

.field private mCityInfo:Lcom/htc/Weather/data/CityInfo;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mLoadingStr:Ljava/lang/String;

.field private mUpdateIcon:Landroid/widget/ImageView;

.field private mUpdateStr:Ljava/lang/String;

.field private mUpdateTime:Landroid/widget/TextView;

.field private mVenderInfo:Landroid/view/View;

.field private mVenderLogo:Landroid/widget/ImageView;

.field private mainHandler:Landroid/os/Handler;

.field private myMoreOnlineClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->SET_LOADING_TXT:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->SET_LOADING_TIME_OUT:I

    .line 210
    new-instance v0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/BottomUpdateInfo$1;-><init>(Lcom/htc/Weather/widget/BottomUpdateInfo;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/htc/Weather/widget/BottomUpdateInfo$2;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/BottomUpdateInfo$2;-><init>(Lcom/htc/Weather/widget/BottomUpdateInfo;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    .line 58
    iput-object p1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/BottomUpdateInfo;->initLayout(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->SET_LOADING_TXT:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->SET_LOADING_TIME_OUT:I

    .line 210
    new-instance v0, Lcom/htc/Weather/widget/BottomUpdateInfo$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/BottomUpdateInfo$1;-><init>(Lcom/htc/Weather/widget/BottomUpdateInfo;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Lcom/htc/Weather/widget/BottomUpdateInfo$2;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/BottomUpdateInfo$2;-><init>(Lcom/htc/Weather/widget/BottomUpdateInfo;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    .line 52
    iput-object p1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/BottomUpdateInfo;->initLayout(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/Weather/widget/BottomUpdateInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/Weather/widget/BottomUpdateInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 69
    iget-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030003

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    .local v2, res:Landroid/content/res/Resources;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    const v6, 0x7f0800cd

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/Weather/widget/BottomUpdateInfo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const v4, 0x7f0c0008

    invoke-virtual {p0, v4}, Lcom/htc/Weather/widget/BottomUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateIcon:Landroid/widget/ImageView;

    .line 77
    const v4, 0x7f0c0009

    invoke-virtual {p0, v4}, Lcom/htc/Weather/widget/BottomUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    .line 78
    const v4, 0x7f0c0005

    invoke-virtual {p0, v4}, Lcom/htc/Weather/widget/BottomUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    .line 80
    const v4, 0x7f0c0006

    invoke-virtual {p0, v4}, Lcom/htc/Weather/widget/BottomUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderLogo:Landroid/widget/ImageView;

    .line 81
    const v4, 0x7f0c000a

    invoke-virtual {p0, v4}, Lcom/htc/Weather/widget/BottomUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;

    .line 82
    iget-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateStr:Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingStr:Ljava/lang/String;

    .line 86
    const v4, 0x7f0c0007

    invoke-virtual {p0, v4}, Lcom/htc/Weather/widget/BottomUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, bottom_info_more_online:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    invoke-static {v4, v5, v6}, Lcom/htc/Weather/util/RefreshUtil;->getStringMoreDetail(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, more_txt:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 89
    iget-object v4, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mainHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method public showEmpty()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 184
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 194
    iput-object v3, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_4
    return-void
.end method

.method public showLoading()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 175
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingStr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 179
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    return-void
.end method

.method public showUpdating()V
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 201
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 206
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->updateData(Lcom/htc/Weather/data/CityInfo;)V

    goto :goto_0
.end method

.method public updateData(Lcom/htc/Weather/data/CityInfo;)V
    .locals 8
    .parameter "data"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mLoadingDialog:Landroid/app/ProgressDialog;

    .line 102
    :cond_0
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    if-nez p1, :cond_3

    .line 107
    const-string v0, "WeatherMaGroup"

    const-string v1, "CityInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_3
    iput-object p1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 113
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget-boolean v0, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v0, :cond_7

    .line 115
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isMenuOpened:Z

    if-nez v0, :cond_6

    .line 116
    invoke-virtual {p0, v3}, Lcom/htc/Weather/widget/BottomUpdateInfo;->setVisibility(I)V

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateIcon:Landroid/widget/ImageView;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mAnimTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getFormatUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/BottomUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 131
    .local v6, mTextView_More:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mUpdateTime:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/htc/Weather/util/RefreshUtil;->getStringMoreDetail(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, more_txt:Ljava/lang/String;
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 133
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderInfo:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderLogo:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mVenderLogo:Landroid/widget/ImageView;

    const/16 v2, 0x96

    const/16 v3, 0x19

    const v4, 0x7f020036

    iget-object v5, p0, Lcom/htc/Weather/widget/BottomUpdateInfo;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-static/range {v0 .. v5}, Lcom/htc/Weather/util/RefreshUtil;->setVenderLogo(Landroid/content/Context;Landroid/widget/ImageView;IIILcom/htc/Weather/data/CityInfo;)V

    goto :goto_0

    .line 118
    .end local v6           #mTextView_More:Landroid/widget/TextView;
    .end local v7           #more_txt:Ljava/lang/String;
    :cond_6
    const-string v0, "WeatherMaGroup"

    const-string v1, "menu show up, no more details"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    :cond_7
    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/BottomUpdateInfo;->setVisibility(I)V

    .line 144
    const-string v0, "WeatherMaGroup"

    const-string v1, "Display No data message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
