.class public Lcom/htc/Weather/widget/HeaderBar;
.super Landroid/widget/RelativeLayout;
.source "HeaderBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherMaGroup"


# instance fields
.field private mCityInfo:Lcom/htc/Weather/data/CityInfo;

.field private mCityName:Landroid/view/View;

.field private mCityTime:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mTitleNameLayout:Landroid/view/ViewGroup;

.field private mainHandler:Landroid/os/Handler;

.field private myClickListener:Landroid/view/View$OnClickListener;

.field private mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

.field private switchTwoPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    .line 64
    new-instance v0, Lcom/htc/Weather/widget/HeaderBar$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/HeaderBar$1;-><init>(Lcom/htc/Weather/widget/HeaderBar;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->myClickListener:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p1, p0, Lcom/htc/Weather/widget/HeaderBar;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/HeaderBar;->initLayout(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    .line 64
    new-instance v0, Lcom/htc/Weather/widget/HeaderBar$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/HeaderBar$1;-><init>(Lcom/htc/Weather/widget/HeaderBar;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->myClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Lcom/htc/Weather/widget/HeaderBar;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Lcom/htc/Weather/widget/HeaderBar;->initLayout(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/HeaderBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->switchTwoPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/HeaderBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, v:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/htc/Weather/widget/HeaderBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    const v1, 0x7f0c0030

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mTitleNameLayout:Landroid/view/ViewGroup;

    .line 116
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HeaderBar;->adjustTitleNameLayout(Z)V

    .line 118
    const v1, 0x7f0c0031

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/HeaderBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->switchTwoPanel:Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->switchTwoPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v1, Lcom/htc/Weather/util/SkinUtil;

    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/Weather/util/SkinUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    .line 122
    iget-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mTitleNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/util/SkinUtil;->initHeaderView(Landroid/view/ViewGroup;)V

    .line 123
    iget-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mTitleNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/util/SkinUtil;->getHeaderCityName(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityName:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mTitleNameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/util/SkinUtil;->getHeaderCityTime(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityTime:Landroid/view/View;

    .line 125
    return-void
.end method

.method private nextCityIndex()V
    .locals 7

    .prologue
    .line 77
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    .line 80
    .local v1, total:I
    if-gtz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int v0, v2, v1

    .line 85
    .local v0, idx:I
    sput v0, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 87
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private prevCityIndex()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 94
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    .line 95
    .local v1, total:I
    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v1

    rem-int v0, v2, v1

    .line 96
    .local v0, idx:I
    sput v0, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    .line 98
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustDemoTitleLayout(Landroid/view/View;Z)V
    .locals 5
    .parameter "title"
    .parameter "isPortrait"

    .prologue
    const v4, 0x7f08005f

    const v3, 0x7f08005e

    .line 131
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 133
    .local v1, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v0, p_layout:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :goto_0
    return-void

    .line 139
    .end local v0           #p_layout:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .restart local v0       #p_layout:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public adjustTitleNameLayout(Z)V
    .locals 0
    .parameter "isPortrait"

    .prologue
    .line 128
    return-void
.end method

.method public disableButton()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->switchTwoPanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 232
    return-void
.end method

.method public enableButton()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->switchTwoPanel:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 227
    return-void
.end method

.method public getSwitchTwoPanelImageView()Landroid/view/View;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->switchTwoPanel:Landroid/view/View;

    return-object v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/htc/Weather/widget/HeaderBar;->mainHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public showEmpty()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mTitleNameLayout:Landroid/view/ViewGroup;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityName(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 236
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/HeaderBar;->updateCityTime(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 216
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 221
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/HeaderBar;->updateData(Lcom/htc/Weather/data/CityInfo;)V

    goto :goto_0
.end method

.method public updateCityTime()V
    .locals 5

    .prologue
    .line 195
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isOnResume:Z

    if-nez v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget-boolean v2, v2, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.htclocationservice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, time:J
    :goto_1
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityTime:Landroid/view/View;

    iget-object v4, p0, Lcom/htc/Weather/widget/HeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v1}, Lcom/htc/Weather/util/RefreshUtil;->getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityTime(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    .end local v0           #time:J
    :cond_2
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/Weather/util/RefreshUtil;->getMillis(Ljava/util/TimeZone;)J

    move-result-wide v0

    .restart local v0       #time:J
    goto :goto_1

    .line 212
    .end local v0           #time:J
    :cond_3
    iget-object v2, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityTime:Landroid/view/View;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityTime(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCityTime(Ljava/lang/String;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityTime:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v1, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityTime:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityTime(Landroid/view/View;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public updateData(Lcom/htc/Weather/data/CityInfo;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 147
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-eqz p1, :cond_0

    .line 153
    const-string v3, "WeatherMaGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateData city: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-object p1, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 165
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget-object v0, v3, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    .line 167
    .local v0, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v4, p0, Lcom/htc/Weather/widget/HeaderBar;->mTitleNameLayout:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityName(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 177
    :goto_1
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget-boolean v3, v3, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v3, :cond_4

    .line 179
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 187
    .local v1, time:J
    :goto_2
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v4, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityTime:Landroid/view/View;

    iget-object v5, p0, Lcom/htc/Weather/widget/HeaderBar;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v2}, Lcom/htc/Weather/util/RefreshUtil;->getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityTime(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    .end local v1           #time:J
    :cond_2
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v4, p0, Lcom/htc/Weather/widget/HeaderBar;->mTitleNameLayout:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityName(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v3}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/Weather/util/RefreshUtil;->getMillis(Ljava/util/TimeZone;)J

    move-result-wide v1

    .restart local v1       #time:J
    goto :goto_2

    .line 190
    .end local v1           #time:J
    :cond_4
    iget-object v3, p0, Lcom/htc/Weather/widget/HeaderBar;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v4, p0, Lcom/htc/Weather/widget/HeaderBar;->mCityTime:Landroid/view/View;

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/htc/Weather/util/SkinUtil;->setHeaderCityTime(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
