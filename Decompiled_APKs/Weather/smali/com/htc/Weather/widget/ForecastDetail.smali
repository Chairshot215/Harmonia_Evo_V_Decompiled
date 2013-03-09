.class public Lcom/htc/Weather/widget/ForecastDetail;
.super Landroid/widget/RelativeLayout;
.source "ForecastDetail.java"


# instance fields
.field private display:Landroid/view/Display;

.field private mCityInfo:Lcom/htc/Weather/data/CityInfo;

.field private mContext:Landroid/content/Context;

.field private mDayCondition:Landroid/widget/ImageView;

.field private mDayInfo:Landroid/widget/TextView;

.field private mDayTemp:Landroid/view/View;

.field private mDayTemperatureHigh:Landroid/widget/TextView;

.field private mDayTemperatureLow:Landroid/widget/TextView;

.field private mForecastDay:I

.field private mOrientation:I

.field private mUnit:Lcom/htc/Weather/data/City$UNIT;

.field private manager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mContext:Landroid/content/Context;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 52
    invoke-direct {p0}, Lcom/htc/Weather/widget/ForecastDetail;->initView()V

    .line 57
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->manager:Landroid/view/WindowManager;

    .line 58
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->manager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->display:Landroid/view/Display;

    .line 59
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mOrientation:I

    .line 64
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/Weather/data/CityInfo;Lcom/htc/Weather/data/City$UNIT;I)V
    .locals 2
    .parameter "c"
    .parameter "data"
    .parameter "unit"
    .parameter "forecastDay"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object p1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 70
    iput-object p3, p0, Lcom/htc/Weather/widget/ForecastDetail;->mUnit:Lcom/htc/Weather/data/City$UNIT;

    .line 71
    iput p4, p0, Lcom/htc/Weather/widget/ForecastDetail;->mForecastDay:I

    .line 72
    invoke-direct {p0}, Lcom/htc/Weather/widget/ForecastDetail;->initView()V

    .line 77
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->manager:Landroid/view/WindowManager;

    .line 78
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->manager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->display:Landroid/view/Display;

    .line 79
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mOrientation:I

    .line 84
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private inflateLayout(I)V
    .locals 2
    .parameter "resLayout"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 92
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f03000c

    invoke-direct {p0, v0}, Lcom/htc/Weather/widget/ForecastDetail;->inflateLayout(I)V

    .line 98
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/ForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayInfo:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/ForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayCondition:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/ForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemperatureHigh:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/ForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemperatureLow:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0c002a

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/ForecastDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemp:Landroid/view/View;

    .line 104
    return-void
.end method

.method private updateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    iget-boolean v1, v1, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mForecastDay:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mForecastDay:I

    iget-object v2, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v2}, Lcom/htc/Weather/data/City$Condition;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 111
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayCondition:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemp:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemp:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    invoke-virtual {v1}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    iget v2, p0, Lcom/htc/Weather/widget/ForecastDetail;->mForecastDay:I

    invoke-virtual {v1, v2}, Lcom/htc/Weather/data/City$Condition;->get(I)Lcom/htc/Weather/data/DayForecast;

    move-result-object v0

    .line 116
    .local v0, forecast:Lcom/htc/Weather/data/DayForecast;
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getWeekDay()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayCondition:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/Weather/widget/ForecastDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getForecastIcon()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/Weather/widget/IconPicker;->getForecastIconId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mOrientation:I

    if-ne v1, v5, :cond_3

    .line 122
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemperatureHigh:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayHighTemp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_1
    iget v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mOrientation:I

    if-ne v1, v5, :cond_4

    .line 127
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemperatureLow:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayLowTemp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemperatureHigh:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayHighTemp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemperatureLow:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/htc/Weather/data/DayForecast;->getDayLowTemp()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u00b0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 133
    .end local v0           #forecast:Lcom/htc/Weather/data/DayForecast;
    :cond_5
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayCondition:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemp:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mDayTemp:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public unitConversion(Lcom/htc/Weather/data/City$UNIT;)V
    .locals 1
    .parameter "unit"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mUnit:Lcom/htc/Weather/data/City$UNIT;

    .line 158
    invoke-direct {p0}, Lcom/htc/Weather/widget/ForecastDetail;->updateUI()V

    goto :goto_0
.end method

.method public updateData(Lcom/htc/Weather/data/CityInfo;Lcom/htc/Weather/data/City$UNIT;)V
    .locals 0
    .parameter "data"
    .parameter "unit"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 150
    iput-object p2, p0, Lcom/htc/Weather/widget/ForecastDetail;->mUnit:Lcom/htc/Weather/data/City$UNIT;

    .line 151
    invoke-direct {p0}, Lcom/htc/Weather/widget/ForecastDetail;->updateUI()V

    .line 152
    return-void
.end method

.method public updateData(Lcom/htc/Weather/data/CityInfo;Lcom/htc/Weather/data/City$UNIT;I)V
    .locals 0
    .parameter "data"
    .parameter "unit"
    .parameter "nDay"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/Weather/widget/ForecastDetail;->mCityInfo:Lcom/htc/Weather/data/CityInfo;

    .line 143
    iput-object p2, p0, Lcom/htc/Weather/widget/ForecastDetail;->mUnit:Lcom/htc/Weather/data/City$UNIT;

    .line 144
    iput p3, p0, Lcom/htc/Weather/widget/ForecastDetail;->mForecastDay:I

    .line 145
    invoke-direct {p0}, Lcom/htc/Weather/widget/ForecastDetail;->updateUI()V

    .line 146
    return-void
.end method
