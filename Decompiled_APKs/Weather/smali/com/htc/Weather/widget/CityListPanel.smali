.class public Lcom/htc/Weather/widget/CityListPanel;
.super Ljava/lang/Object;
.source "CityListPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/widget/CityListPanel$CityDataItem;,
        Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CityListView"


# instance fields
.field private cityAdapter:Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;

.field private mCityCount:I

.field private mCityListView:Lcom/htc/widget/HtcListView;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/Weather/widget/CityListPanel$CityDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedCity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V
    .locals 1
    .parameter "context"
    .parameter "listview"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mSelectedCity:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/htc/Weather/widget/CityListPanel;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/htc/Weather/widget/CityListPanel;->mCityListView:Lcom/htc/widget/HtcListView;

    .line 41
    invoke-direct {p0}, Lcom/htc/Weather/widget/CityListPanel;->initView()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/CityListPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/CityListPanel;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mCityListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/Weather/widget/CityListPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/Weather/widget/CityListPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mSelectedCity:I

    return v0
.end method

.method private fetchData()V
    .locals 6

    .prologue
    .line 69
    sget-object v5, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v5, :cond_1

    .line 70
    sget-object v5, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v5}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    .line 72
    .local v1, city_count:I
    iget-object v5, p0, Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 74
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 75
    sget-object v5, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v5, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 77
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v5}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getCity()Lcom/htc/Weather/data/City;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/Weather/data/City;->current:Lcom/htc/Weather/data/City$Condition;

    invoke-virtual {v5}, Lcom/htc/Weather/data/City$Condition;->today()Lcom/htc/Weather/data/DayForecast;

    move-result-object v4

    .line 81
    .local v4, today:Lcom/htc/Weather/data/DayForecast;
    new-instance v3, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;

    invoke-direct {v3, p0}, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;-><init>(Lcom/htc/Weather/widget/CityListPanel;)V

    .line 82
    .local v3, item:Lcom/htc/Weather/widget/CityListPanel$CityDataItem;
    iget-object v5, v0, Lcom/htc/Weather/data/CityInfo;->displayName:Ljava/lang/String;

    iput-object v5, v3, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->cityname:Ljava/lang/String;

    .line 83
    invoke-virtual {v4}, Lcom/htc/Weather/data/DayForecast;->getCondition()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->condition:Ljava/lang/String;

    .line 84
    invoke-virtual {v4}, Lcom/htc/Weather/data/DayForecast;->getForecastIcon()I

    move-result v5

    iput v5, v3, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->conditionIcon:I

    .line 85
    invoke-virtual {v4}, Lcom/htc/Weather/data/DayForecast;->getCurrent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->currtemp:Ljava/lang/String;

    .line 86
    invoke-virtual {v4}, Lcom/htc/Weather/data/DayForecast;->getDayHighTemp()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->tempH:Ljava/lang/String;

    .line 87
    invoke-virtual {v4}, Lcom/htc/Weather/data/DayForecast;->getDayLowTemp()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/Weather/widget/CityListPanel$CityDataItem;->tempL:Ljava/lang/String;

    .line 89
    iget-object v5, p0, Lcom/htc/Weather/widget/CityListPanel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v3           #item:Lcom/htc/Weather/widget/CityListPanel$CityDataItem;
    .end local v4           #today:Lcom/htc/Weather/data/DayForecast;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0           #ci:Lcom/htc/Weather/data/CityInfo;
    .end local v1           #city_count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;-><init>(Lcom/htc/Weather/widget/CityListPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->cityAdapter:Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;

    .line 56
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mCityListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/Weather/widget/CityListPanel;->cityAdapter:Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->mCityListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(Z)V

    .line 59
    invoke-direct {p0}, Lcom/htc/Weather/widget/CityListPanel;->fetchData()V

    .line 61
    return-void
.end method


# virtual methods
.method public slectedCityIndex(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 45
    iput p1, p0, Lcom/htc/Weather/widget/CityListPanel;->mSelectedCity:I

    .line 46
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->cityAdapter:Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->cityAdapter:Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->notifyDataSetChanged()V

    .line 47
    :cond_0
    return-void
.end method

.method public updateData()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/htc/Weather/widget/CityListPanel;->fetchData()V

    .line 65
    iget-object v0, p0, Lcom/htc/Weather/widget/CityListPanel;->cityAdapter:Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/CityListPanel$CitylistAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method
