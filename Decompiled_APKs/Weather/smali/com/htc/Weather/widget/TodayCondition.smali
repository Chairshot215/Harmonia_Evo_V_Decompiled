.class public Lcom/htc/Weather/widget/TodayCondition;
.super Landroid/widget/RelativeLayout;
.source "TodayCondition.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Today_Condition"

.field private static final WHAT_ANIM_ADJUST_LAYOUT_POSITION:I = 0x2

.field private static final WHAT_ANIM_SWITCH_IN_UI_DATA:I = 0x0

.field private static final WHAT_ANIM_SWITCH_OUT_UI_DATA:I = 0x1


# instance fields
.field private animViewArray:[Landroid/view/View;

.field public isSwitchToNext:Z

.field private mArrowImg:Landroid/widget/ImageView;

.field private mCityIndex:Landroid/widget/TextView;

.field private mCityIndexTotal:Landroid/widget/TextView;

.field private mCityInfo:Lcom/htc/Weather/data/CityInfo;

.field private mCityName:Landroid/widget/TextView;

.field private mConHandler:Landroid/os/Handler;

.field private mCondition:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurLocateImg:Landroid/widget/ImageView;

.field private mCurrentHumi:Landroid/widget/TextView;

.field private mCurrentRealFeel:Landroid/widget/TextView;

.field private mCurrentVisibility:Landroid/widget/TextView;

.field private mCurrentWindSpeed:Landroid/widget/TextView;

.field private mDayCurrentTemperature:Landroid/widget/TextView;

.field private mDayTemperatureHigh:Landroid/widget/TextView;

.field private mDayTemperatureLow:Landroid/widget/TextView;

.field private mIsFull:Z

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mSunrise:Landroid/widget/TextView;

.field private mSunset:Landroid/widget/TextView;

.field private toNextDu:[I

.field private toPrevDu:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v1, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    .line 66
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->toNextDu:[I

    .line 67
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->toPrevDu:[I

    .line 69
    new-instance v0, Lcom/htc/Weather/widget/TodayCondition$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/TodayCondition$1;-><init>(Lcom/htc/Weather/widget/TodayCondition;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    .line 153
    iput-boolean v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mIsFull:Z

    .line 93
    iput-object p1, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 95
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->initView()V

    .line 96
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data

    .line 67
    :array_1
    .array-data 0x4
        0x58t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean v1, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    .line 66
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->toNextDu:[I

    .line 67
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->toPrevDu:[I

    .line 69
    new-instance v0, Lcom/htc/Weather/widget/TodayCondition$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/TodayCondition$1;-><init>(Lcom/htc/Weather/widget/TodayCondition;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    .line 153
    iput-boolean v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mIsFull:Z

    .line 100
    iput-object p1, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 103
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->initView()V

    .line 104
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data

    .line 67
    :array_1
    .array-data 0x4
        0x58t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/Weather/data/CityInfo;I)V
    .locals 3
    .parameter "c"
    .parameter "data"
    .parameter "total_cities"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v1, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    .line 66
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->toNextDu:[I

    .line 67
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->toPrevDu:[I

    .line 69
    new-instance v0, Lcom/htc/Weather/widget/TodayCondition$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/TodayCondition$1;-><init>(Lcom/htc/Weather/widget/TodayCondition;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    .line 153
    iput-boolean v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mIsFull:Z

    .line 108
    iput-object p1, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 110
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->initView()V

    .line 111
    return-void

    .line 66
    nop

    :array_0
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data

    .line 67
    :array_1
    .array-data 0x4
        0x58t 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x7ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/TodayCondition;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->switchInPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/TodayCondition;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->switchOutPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/widget/TodayCondition;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->setCityName()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/Weather/widget/TodayCondition;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->startSwitchAnimation()V

    return-void
.end method

.method private getCityNameForGeocode(Lcom/htc/Weather/data/CityInfo;)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    .line 371
    iget-object v1, p1, Lcom/htc/Weather/data/CityInfo;->type_:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    sget-object v2, Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;->GOOGLE_GEOCODE:Lcom/htc/Weather/WeatherActivity$QUERY_TYPE;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.htclocationservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 374
    .restart local v0       #name:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 379
    .end local v0           #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/htc/Weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDirectSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "d"

    .prologue
    .line 348
    const-string v0, "W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    const-string p1, "\u2192"

    .line 365
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 350
    .restart local p1
    :cond_1
    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    const-string p1, "\u2190"

    goto :goto_0

    .line 352
    :cond_2
    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    const-string p1, "\u2191"

    goto :goto_0

    .line 354
    :cond_3
    const-string v0, "N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    const-string p1, "\u2193"

    goto :goto_0

    .line 356
    :cond_4
    const-string v0, "NNE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "NE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ENE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 357
    :cond_5
    const-string p1, "\u2199"

    goto :goto_0

    .line 358
    :cond_6
    const-string v0, "ESE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 359
    :cond_7
    const-string p1, "\u2196"

    goto :goto_0

    .line 360
    :cond_8
    const-string v0, "NNW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "NW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "WNW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 361
    :cond_9
    const-string p1, "\u2198"

    goto :goto_0

    .line 362
    :cond_a
    const-string v0, "WSW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "SW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "SSW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    :cond_b
    const-string p1, "\u2197"

    goto/16 :goto_0
.end method

.method private inflateLayout(I)V
    .locals 2
    .parameter "resLayout"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 121
    const v0, 0x7f03001e

    invoke-direct {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->inflateLayout(I)V

    .line 122
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    .line 123
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mDayCurrentTemperature:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0c0087

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mDayTemperatureHigh:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mDayTemperatureLow:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCondition:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentRealFeel:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0c008c

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentHumi:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0c008e

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentWindSpeed:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentVisibility:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0c0092

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mSunrise:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0c0094

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mSunset:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0c0082

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurLocateImg:Landroid/widget/ImageView;

    .line 136
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityIndex:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0c0081

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityIndexTotal:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mArrowImg:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0c0085

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCondition:Landroid/widget/TextView;

    aput-object v2, v0, v1

    .line 144
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f0c0089

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 145
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const/4 v1, 0x3

    const v2, 0x7f0c008b

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 146
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const v1, 0x7f0c008d

    invoke-virtual {p0, v1}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 147
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const/4 v1, 0x5

    const v2, 0x7f0c008f

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const/4 v1, 0x6

    const v2, 0x7f0c0091

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 149
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    const/4 v1, 0x7

    const v2, 0x7f0c0093

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 151
    return-void
.end method

.method private parseVisibility(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "vi"

    .prologue
    .line 337
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v2, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v1, v2, :cond_0

    .line 338
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, unit:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 340
    .end local v0           #unit:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #unit:Ljava/lang/String;
    goto :goto_0
.end method

.method private parseWindSpeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "ws"

    .prologue
    const/4 v5, 0x1

    .line 313
    const-string v1, ""

    .line 316
    .local v1, winds:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 317
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/htc/Weather/util/RefreshUtil;->safe_parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/htc/Weather/widget/TodayCondition;->getDirectSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_0
    :goto_0
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->default_unit:Lcom/htc/Weather/data/City$UNIT;

    sget-object v3, Lcom/htc/Weather/data/City$UNIT;->_C:Lcom/htc/Weather/data/City$UNIT;

    if-ne v2, v3, :cond_2

    .line 327
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, unit:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    .end local v0           #unit:Ljava/lang/String;
    :cond_1
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v5

    goto :goto_0

    .line 329
    :cond_2
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0093

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #unit:Ljava/lang/String;
    goto :goto_1
.end method

.method private setCityName()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 393
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    :cond_0
    iget-boolean v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mIsFull:Z

    if-eqz v1, :cond_3

    .line 398
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurLocateImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurLocateImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    :cond_2
    :goto_0
    return-void

    .line 402
    :cond_3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 404
    .local v0, p_layout:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.htclocationservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 408
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurLocateImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurLocateImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 410
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    :goto_1
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 412
    :cond_5
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurLocateImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurLocateImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    :cond_6
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 414
    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private startSwitchAnimation()V
    .locals 9

    .prologue
    const v4, 0x7f040004

    const v3, 0x7f040002

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 255
    const-string v2, "Today_Condition"

    const-string v5, "startSwitchAnimation"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->showConditionPanel(Z)V

    .line 258
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 259
    iget-object v5, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 261
    .local v0, a:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 262
    iget-boolean v2, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->toNextDu:[I

    aget v2, v2, v1

    int-to-long v5, v2

    :goto_2
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 263
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 265
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    move v2, v4

    .line 259
    goto :goto_1

    .line 262
    .restart local v0       #a:Landroid/view/animation/Animation;
    :cond_2
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->toPrevDu:[I

    aget v2, v2, v1

    int-to-long v5, v2

    goto :goto_2

    .line 269
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_3
    iget-boolean v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mIsFull:Z

    if-eqz v2, :cond_7

    .line 270
    const/4 v1, 0x2

    :goto_3
    if-ge v1, v7, :cond_8

    .line 271
    iget-object v5, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-static {v5, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 273
    .restart local v0       #a:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 274
    iget-boolean v2, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->toNextDu:[I

    aget v2, v2, v1

    int-to-long v5, v2

    :goto_5
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 275
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v7, :cond_4

    .line 277
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_5
    move v2, v4

    .line 271
    goto :goto_4

    .line 274
    .restart local v0       #a:Landroid/view/animation/Animation;
    :cond_6
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->toPrevDu:[I

    aget v2, v2, v1

    int-to-long v5, v2

    goto :goto_5

    .line 282
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_7
    const/4 v1, 0x2

    :goto_6
    if-ge v1, v7, :cond_8

    .line 283
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->animViewArray:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 286
    :cond_8
    return-void
.end method

.method private switchInPanel()V
    .locals 6

    .prologue
    .line 219
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v1

    .line 222
    .local v1, forecast:Lcom/htc/Weather/data/City;
    iget-object v2, v1, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, v1, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v0

    .line 226
    .local v0, df:Lcom/htc/Weather/data/DayForecast;
    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mDayCurrentTemperature:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getCurrent()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mDayTemperatureHigh:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayHighTemp()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mDayTemperatureLow:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayLowTemp()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCondition:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getCondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mSunrise:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getSunrise()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mSunset:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getSunset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget v2, v0, Lcom/htc/Weather/data/DayForecast;->fstDayIndex:I

    if-nez v2, :cond_1

    .line 237
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentRealFeel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getCurrentRealFeelTemp()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentHumi:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getHumi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentWindSpeed:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getWindspeed()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/Weather/widget/TodayCondition;->parseWindSpeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentVisibility:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getVisibility()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/Weather/widget/TodayCondition;->parseVisibility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .end local v0           #df:Lcom/htc/Weather/data/DayForecast;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->startSwitchAnimation()V

    .line 252
    return-void

    .line 244
    .restart local v0       #df:Lcom/htc/Weather/data/DayForecast;
    :cond_1
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentRealFeel:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayHighRealfeelTemp()I

    move-result v4

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayLowRealfeelTemp()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentHumi:Landroid/widget/TextView;

    const-string v3, "--"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentWindSpeed:Landroid/widget/TextView;

    const-string v3, "--"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mCurrentVisibility:Landroid/widget/TextView;

    const-string v3, "--"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private switchOutPanel()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    .line 204
    iget-boolean v2, p0, Lcom/htc/Weather/widget/TodayCondition;->isSwitchToNext:Z

    if-eqz v2, :cond_0

    const v0, 0x7f040005

    .line 206
    .local v0, anim:I
    :goto_0
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 207
    .local v1, t:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    invoke-virtual {p0, v3}, Lcom/htc/Weather/widget/TodayCondition;->showConditionPanel(Z)V

    .line 213
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    return-void

    .line 204
    .end local v0           #anim:I
    .end local v1           #t:Landroid/view/animation/Animation;
    :cond_0
    const v0, 0x7f040003

    goto :goto_0
.end method

.method private updateUI(Lcom/htc/Weather/data/CityInfo;)V
    .locals 4
    .parameter "cityInfo"

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget-boolean v0, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v0}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string v0, "Today_Condition"

    const-string v1, "updateUI() - update"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-object p1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 193
    invoke-virtual {p0}, Lcom/htc/Weather/widget/TodayCondition;->setCityIndex()V

    .line 194
    invoke-direct {p0}, Lcom/htc/Weather/widget/TodayCondition;->setCityName()V

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->showConditionPanel(Z)V

    .line 198
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public adjustLayoutMargin(ZZ)V
    .locals 8
    .parameter "isPortrait"
    .parameter "isFull"

    .prologue
    const/16 v7, 0xb

    const/4 v6, -0x2

    .line 155
    const-string v2, "Today_Condition"

    const-string v3, "adjustLayoutMargin"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "Today_Condition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFull :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean p2, p0, Lcom/htc/Weather/widget/TodayCondition;->mIsFull:Z

    .line 158
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isWeatherDataAvalible:Z

    if-eqz v2, :cond_0

    .line 159
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/Weather/widget/TodayCondition;->showConditionPanel(Z)V

    .line 160
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mConHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 165
    .local v1, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f08005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v0, p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f08005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 171
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :goto_0
    return-void

    .line 174
    .end local v0           #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0x7f080057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    .restart local v0       #p_layout:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 179
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    iget-object v2, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setCityIndex()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityIndex:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityIndex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget v1, v1, Lcom/htc/Weather/data/CityInfo;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityIndexTotal:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityIndexTotal:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mArrowImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mArrowImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mArrowImg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    :cond_2
    return-void
.end method

.method public showConditionPanel(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    .line 423
    if-eqz p1, :cond_2

    .line 424
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isMenuOpened:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public unitConversion(Lcom/htc/Weather/data/City$UNIT;)V
    .locals 1
    .parameter "unit"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget-boolean v0, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v0

    iput-object p1, v0, Lcom/htc/Weather/data/City;->unit:Lcom/htc/Weather/data/City$UNIT;

    .line 309
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-direct {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->updateUI(Lcom/htc/Weather/data/CityInfo;)V

    goto :goto_0
.end method

.method public updateData(Lcom/htc/Weather/data/CityInfo;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const-string v0, "Today_Condition"

    const-string v1, "Display No data message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-boolean v0, p1, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v0, :cond_1

    .line 296
    iput-object p1, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 297
    iget-object v0, p0, Lcom/htc/Weather/widget/TodayCondition;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-direct {p0, v0}, Lcom/htc/Weather/widget/TodayCondition;->updateUI(Lcom/htc/Weather/data/CityInfo;)V

    goto :goto_0

    .line 300
    :cond_1
    const-string v0, "Today_Condition"

    const-string v1, "Display No data message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
