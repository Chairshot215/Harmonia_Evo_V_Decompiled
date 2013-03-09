.class public Lcom/htc/Weather/WeatherCityList;
.super Lcom/htc/app/ma/MaActivity;
.source "WeatherCityList.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private itemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mAddCity:Landroid/widget/ImageView;

.field private mCityListPanel:Lcom/htc/Weather/widget/CityListPanel;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mSyncData:Landroid/widget/ImageView;

.field private mTitleBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/app/ma/MaActivity;-><init>()V

    .line 23
    const-string v0, "WeatherMaGroup"

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/htc/Weather/WeatherCityList$1;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherCityList$1;-><init>(Lcom/htc/Weather/WeatherCityList;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->itemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 75
    new-instance v0, Lcom/htc/Weather/WeatherCityList$2;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherCityList$2;-><init>(Lcom/htc/Weather/WeatherCityList;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/WeatherCityList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/WeatherCityList;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mSyncData:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/Weather/WeatherCityList;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mAddCity:Landroid/widget/ImageView;

    return-object v0
.end method

.method private showTitleBar(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/htc/Weather/WeatherCityList;->mTitleBar:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->TAG:Ljava/lang/String;

    const-string v1, "WeatherCityList onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherCityList;->showTitleBar(Z)V

    .line 107
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->TAG:Ljava/lang/String;

    const-string v2, "WeatherCityList onCreate"

    invoke-static {v0, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherCityList;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherCityList;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherCityList;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, 0x55ffff

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherCityList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mListView:Lcom/htc/widget/HtcListView;

    .line 44
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList;->itemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 45
    new-instance v0, Lcom/htc/Weather/widget/CityListPanel;

    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList;->mListView:Lcom/htc/widget/HtcListView;

    invoke-direct {v0, p0, v2}, Lcom/htc/Weather/widget/CityListPanel;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcListView;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mCityListPanel:Lcom/htc/Weather/widget/CityListPanel;

    .line 46
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherCityList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mTitleBar:Landroid/widget/RelativeLayout;

    .line 47
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherCityList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mSyncData:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherCityList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mAddCity:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mSyncData:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mAddCity:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/htc/Weather/WeatherCityList;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherCityList;->showTitleBar(Z)V

    .line 56
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectedCity(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mCityListPanel:Lcom/htc/Weather/widget/CityListPanel;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mCityListPanel:Lcom/htc/Weather/widget/CityListPanel;

    invoke-virtual {v0, p1}, Lcom/htc/Weather/widget/CityListPanel;->slectedCityIndex(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public updateCityListData()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mCityListPanel:Lcom/htc/Weather/widget/CityListPanel;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/Weather/WeatherCityList;->mCityListPanel:Lcom/htc/Weather/widget/CityListPanel;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/CityListPanel;->updateData()V

    .line 121
    :cond_0
    return-void
.end method
