.class public Lcom/htc/Weather/WeatherDetail;
.super Lcom/htc/app/ma/MaActivity;
.source "WeatherDetail.java"


# static fields
.field protected static final MENUGROUP_ADD_LOCATION:I = 0x1

.field protected static final MENUGROUP_DEMO:I = 0x5

.field protected static final MENUGROUP_EDIT_LOCATION:I = 0x4

.field protected static final MENUGROUP_REFRESH_LOCATION:I = 0x3

.field protected static final MENUGROUP_REMOVE_LOCATION:I = 0x2

.field protected static final MENUGROUP_SETTING:I = 0x6

.field private static final MENU_ADD_LOCATION:I = 0x4

.field private static final MENU_DEMO:I = 0x5

.field private static final MENU_EDIT:I = 0x3

.field private static final MENU_REFRESH:I = 0x2

.field private static final MENU_REMOVE_LOCATION:I = 0x7

.field private static final MENU_SETTING:I = 0x6

.field public static final TAB_5_Day:I = 0x3

.field public static final TAB_HOURLY:I = 0x2

.field public static final TAB_NEWS:I = 0x4

.field public static final TAB_NOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WeatherMaGroup"


# instance fields
.field private cityName:Landroid/widget/TextView;

.field private cityTime:Landroid/widget/TextView;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private dateM:Ljava/util/Date;

.field private gl_layoutparam:Landroid/widget/RelativeLayout$LayoutParams;

.field private isPortrait:Z

.field private mAddCity:Landroid/view/View;

.field private mButtonGestureDetector:Landroid/view/GestureDetector;

.field public mChooseTab:I

.field private mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mGlReplace:Landroid/view/View;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMenu:Landroid/view/Menu;

.field private mNewsPanel:Lcom/htc/Weather/widget/NewsListPanel;

.field private mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

.field private mSyncData:Landroid/view/View;

.field private mTabContent:Landroid/widget/RelativeLayout;

.field private mTitalBar:Landroid/view/ViewGroup;

.field private mToFullScreen:Landroid/view/View;

.field private mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

.field private myClickListener:Landroid/view/View$OnClickListener;

.field private myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

.field private mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

.field private myTouchListener:Landroid/view/View$OnTouchListener;

.field private noDataView:Landroid/widget/TextView;

.field private noHoulyText:Landroid/widget/TextView;

.field private showPress:Z

.field private tab5Day:Landroid/widget/Button;

.field private tabBar:Landroid/view/ViewGroup;

.field private tabHourly:Landroid/widget/Button;

.field private tabNow:Landroid/widget/Button;

.field private tabView:Landroid/view/View;

.field private tc_p_layout:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/app/ma/MaActivity;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/WeatherDetail;->showPress:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    .line 315
    new-instance v0, Lcom/htc/Weather/WeatherDetail$2;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherDetail$2;-><init>(Lcom/htc/Weather/WeatherDetail;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->clickListener:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Lcom/htc/Weather/WeatherDetail$3;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherDetail$3;-><init>(Lcom/htc/Weather/WeatherDetail;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->myClickListener:Landroid/view/View$OnClickListener;

    .line 360
    new-instance v0, Lcom/htc/Weather/WeatherDetail$4;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherDetail$4;-><init>(Lcom/htc/Weather/WeatherDetail;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->myTouchListener:Landroid/view/View$OnTouchListener;

    .line 370
    new-instance v0, Lcom/htc/Weather/WeatherDetail$5;

    invoke-direct {v0, p0}, Lcom/htc/Weather/WeatherDetail$5;-><init>(Lcom/htc/Weather/WeatherDetail;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/WeatherDetail;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherDetail;->showPress:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/Weather/WeatherDetail;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/htc/Weather/WeatherDetail;->showPress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/Weather/WeatherDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->setChooseTabByTabView()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/Weather/WeatherDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->performChooseTab()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/Weather/WeatherDetail;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mSyncData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/Weather/WeatherDetail;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mAddCity:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/Weather/WeatherDetail;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mToFullScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/Weather/WeatherDetail;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/Weather/WeatherDetail;->setTabView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/Weather/WeatherDetail;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mButtonGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private adjustSomeComponentLayout(Z)V
    .locals 4
    .parameter "isPortrait"

    .prologue
    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tc_p_layout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 143
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tc_p_layout:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    const v2, 0x7f0c0055

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->noDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tc_p_layout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method private adjustTabContentLayout(Z)V
    .locals 4
    .parameter "isPortrait"

    .prologue
    .line 132
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tc_p_layout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tc_p_layout:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    const v2, 0x7f0c0055

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tc_p_layout:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method

.method private clickTab5Day()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 575
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/Weather/WeatherActivity;

    sget-boolean v3, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-ne v3, v5, :cond_1

    .line 576
    const-string v3, "WeatherMaGroup"

    const-string v4, "demo mode, no 5day tab"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 582
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 585
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/Weather/WeatherActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/Weather/WeatherActivity;->setGLTransparent(Z)V

    .line 586
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v3, v5}, Lcom/htc/Weather/WeatherActivity;->setConditionPanelVisible(Z)V

    .line 590
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    if-nez v3, :cond_2

    .line 591
    new-instance v3, Lcom/htc/Weather/widget/DaysForecastView;

    invoke-direct {v3, p0}, Lcom/htc/Weather/widget/DaysForecastView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    .line 592
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    sget-boolean v4, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/DaysForecastView;->adjustLayoutMargin(Z)V

    .line 594
    :cond_2
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    sget-boolean v4, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/DaysForecastView;->adjustLayoutMargin(Z)V

    .line 595
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/htc/Weather/WeatherDetail;->setNoDataViewVisible(I)V

    .line 597
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 598
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-virtual {v3}, Lcom/htc/Weather/widget/DaysForecastView;->updateData()V

    .line 600
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    const v4, 0x7f0c0070

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/DaysForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 601
    .local v2, more_online:Landroid/widget/ImageView;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    :cond_3
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    const v4, 0x7f0c0071

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/DaysForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 604
    .local v0, mTextView_More:Landroid/widget/TextView;
    if-eqz v0, :cond_4

    .line 605
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    :cond_4
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    const v4, 0x7f0c0009

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/DaysForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 609
    .local v1, mUpdate_Time:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_0

    const v3, 0x7f0a007d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private clickTabHourly()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 546
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    sget-boolean v0, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-ne v0, v1, :cond_0

    .line 547
    const-string v0, "WeatherMaGroup"

    const-string v1, "demo mode, no hour tab"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 555
    sput-boolean v1, Lcom/htc/Weather/WeatherActivity;->isBackFromInternalActivity:Z

    .line 558
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->setGLTransparent(Z)V

    .line 559
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->setConditionPanelVisible(Z)V

    .line 563
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 564
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    if-nez v0, :cond_1

    .line 565
    new-instance v0, Lcom/htc/Weather/widget/HourlyPanel;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/HourlyPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HourlyPanel;->setWeatherForm()V

    goto :goto_0
.end method

.method private clickTabNews()V
    .locals 2

    .prologue
    .line 613
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 615
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNewsPanel:Lcom/htc/Weather/widget/NewsListPanel;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/htc/Weather/widget/NewsListPanel;

    invoke-direct {v0, p0}, Lcom/htc/Weather/widget/NewsListPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNewsPanel:Lcom/htc/Weather/widget/NewsListPanel;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 619
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mNewsPanel:Lcom/htc/Weather/widget/NewsListPanel;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 621
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->setGLTransparent(Z)V

    .line 622
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/Weather/WeatherActivity;->setConditionPanelVisible(Z)V

    .line 623
    return-void
.end method

.method private clickTabNow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 507
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/Weather/WeatherActivity;

    sget-boolean v3, Lcom/htc/Weather/WeatherActivity;->isDemoMode:Z

    if-ne v3, v5, :cond_1

    .line 508
    const-string v3, "WeatherMaGroup"

    const-string v4, "demo mode, no now tab"

    invoke-static {v3, v4}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iput v5, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 515
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/Weather/WeatherActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/Weather/WeatherActivity;->setGLTransparent(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v3, v5}, Lcom/htc/Weather/WeatherActivity;->setConditionPanelVisible(Z)V

    .line 518
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 520
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    if-nez v3, :cond_2

    .line 521
    new-instance v3, Lcom/htc/Weather/widget/NowForecastView;

    invoke-direct {v3, p0}, Lcom/htc/Weather/widget/NowForecastView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    .line 522
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    sget-boolean v4, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/NowForecastView;->adjustLayoutMargin(Z)V

    .line 524
    :cond_2
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    sget-boolean v4, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/NowForecastView;->adjustLayoutMargin(Z)V

    .line 527
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/htc/Weather/WeatherDetail;->setNoDataViewVisible(I)V

    .line 528
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 529
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    invoke-virtual {v3}, Lcom/htc/Weather/widget/NowForecastView;->updateData()V

    .line 531
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    const v4, 0x7f0c0070

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/NowForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 532
    .local v2, more_online:Landroid/widget/ImageView;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    :cond_3
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    const v4, 0x7f0c0077

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/NowForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 535
    .local v0, mTextView_More:Landroid/widget/TextView;
    if-eqz v0, :cond_4

    .line 536
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->myMoreOnlineClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    :cond_4
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    const v4, 0x7f0c0009

    invoke-virtual {v3, v4}, Lcom/htc/Weather/widget/NowForecastView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 540
    .local v1, mUpdate_Time:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_0

    const v3, 0x7f0a007d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method private deleteCity()V
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 665
    :cond_0
    return-void
.end method

.method private disableTabButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 627
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 629
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 630
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 631
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 632
    return-void
.end method

.method private enablemButtonGestureDetector()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/Weather/WeatherDetail$1;

    invoke-direct {v1, p0}, Lcom/htc/Weather/WeatherDetail$1;-><init>(Lcom/htc/Weather/WeatherDetail;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mButtonGestureDetector:Landroid/view/GestureDetector;

    .line 277
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    .line 161
    const v1, 0x7f0c0058

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->noDataView:Landroid/widget/TextView;

    .line 162
    const v1, 0x7f0c0055

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tabBar:Landroid/view/ViewGroup;

    .line 163
    const v1, 0x7f0c0056

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    .line 164
    const v1, 0x7f0c003f

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    .line 165
    const v1, 0x7f0c0057

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    .line 166
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 167
    .local v0, numberOfDay:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    const v2, 0x7f0a0077

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 173
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->myTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->myTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->myTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    new-instance v1, Lcom/htc/Weather/util/SkinUtil;

    invoke-direct {v1, p0}, Lcom/htc/Weather/util/SkinUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    .line 179
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    iget-object v4, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/Weather/util/SkinUtil;->setSkinUtil(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 181
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 182
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    .line 183
    const v1, 0x7f0c0053

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mGlReplace:Landroid/view/View;

    .line 185
    const v1, 0x7f0c004b

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mTitalBar:Landroid/view/ViewGroup;

    .line 186
    const v1, 0x7f0c004d

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mSyncData:Landroid/view/View;

    .line 187
    const v1, 0x7f0c004c

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mAddCity:Landroid/view/View;

    .line 188
    const v1, 0x7f0c0051

    invoke-virtual {p0, v1}, Lcom/htc/Weather/WeatherDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mToFullScreen:Landroid/view/View;

    .line 189
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mSyncData:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mAddCity:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mToFullScreen:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->myClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mTitalBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/util/SkinUtil;->initNormalModeHeader(Landroid/view/ViewGroup;)V

    .line 195
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherDetail;->showTitleBar(Z)V

    .line 196
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    invoke-direct {p0, v1}, Lcom/htc/Weather/WeatherDetail;->adjustTabContentLayout(Z)V

    .line 197
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->dateM:Ljava/util/Date;

    .line 199
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->enablemButtonGestureDetector()V

    .line 200
    return-void

    .line 169
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0
.end method

.method private noHourlyForcast()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 395
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 397
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->noHoulyText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 398
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/Weather/WeatherDetail;->noHoulyText:Landroid/widget/TextView;

    .line 399
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->noHoulyText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->noHoulyText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 401
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->noHoulyText:Landroid/widget/TextView;

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 403
    :cond_0
    const-string v1, "WeatherMaGroup"

    const-string v2, "noHourlyMsg"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 407
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mTabContent:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->noHoulyText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    return-void
.end method

.method private performChooseTab()V
    .locals 3

    .prologue
    .line 218
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performChooseTab: mChooseTab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    packed-switch v0, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 222
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->performTabNow()V

    goto :goto_0

    .line 225
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->performTabHourly()V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->performTab5Day()V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performTab5Day()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->clickTab5Day()V

    .line 249
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 250
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 251
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 252
    return-void
.end method

.method private performTabHourly()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->clickTabHourly()V

    .line 242
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 243
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 244
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 245
    return-void
.end method

.method private performTabNow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->clickTabNow()V

    .line 235
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 236
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 237
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 238
    return-void
.end method

.method private setChooseTabByTabView()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    if-ne v0, v1, :cond_1

    .line 211
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    if-ne v0, v1, :cond_2

    .line 214
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 215
    :cond_2
    return-void
.end method

.method private setNoDataViewVisible(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->noDataView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->noDataView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->noDataView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    .line 501
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normal mode, setNoDataViewVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->isEmptyDataViewVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setTabView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/Weather/WeatherDetail;->tabView:Landroid/view/View;

    .line 204
    return-void
.end method

.method private showTitleBar(Z)V
    .locals 2
    .parameter "isProtrait"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTitalBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTitalBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 129
    :cond_0
    return-void
.end method

.method private updateTitleInfo()V
    .locals 5

    .prologue
    .line 432
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 438
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v1, :cond_0

    .line 441
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->dateM:Ljava/util/Date;

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->getCityList()Ljava/util/ArrayList;

    move-result-object v1

    sget v3, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/data/CityInfo;

    iget-object v1, v1, Lcom/htc/Weather/data/CityInfo;->city_:Lcom/htc/Weather/data/City;

    iget-wide v3, v1, Lcom/htc/Weather/data/City;->update_time:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method


# virtual methods
.method public DemoModeToHourlyTab()V
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->setScrollViewEnable(Z)V

    .line 844
    :cond_0
    return-void
.end method

.method public HourlyTabToDemoMode()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/HourlyPanel;->setScrollViewEnable(Z)V

    .line 847
    :cond_0
    return-void
.end method

.method public addCity()V
    .locals 5

    .prologue
    .line 642
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-nez v2, :cond_0

    .line 655
    :goto_0
    return-void

    .line 643
    :cond_0
    invoke-static {}, Lcom/htc/Weather/WeatherActivity;->getMaximumCount()I

    .line 644
    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v2

    sget v3, Lcom/htc/Weather/WeatherActivity;->mMaximumCityNum:I

    if-lt v2, v3, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0062

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 648
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/Weather/AddCity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 649
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.Weather.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WeatherMaGroup"

    const-string v3, "can not start addCity Activity"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelUpdating()V
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/NowForecastView;->updateData()V

    .line 306
    :cond_0
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/DaysForecastView;->updateData()V

    .line 310
    :cond_1
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HourlyPanel;->setWeatherForm()V

    .line 314
    :cond_2
    return-void
.end method

.method public checkDataAvalible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 476
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v2, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-nez v1, :cond_1

    .line 481
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherDetail;->setNoDataViewVisible(I)V

    .line 482
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->disableTabButton()V

    .line 484
    const-string v1, "WeatherMaGroup"

    const-string v2, "checkDataAvalible, no data"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_0
    return v0

    .line 487
    :cond_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherDetail;->setNoDataViewVisible(I)V

    .line 488
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->enableTabButton()V

    .line 490
    const-string v0, "WeatherMaGroup"

    const-string v1, "checkDataAvalible, have data"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableTabButton()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 635
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabNow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tabHourly:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->tab5Day:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 638
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->performChooseTab()V

    .line 639
    return-void
.end method

.method public getMainLayoutVisibility()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mMainLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 381
    const/16 v0, 0x8

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method public getSlectedTabType()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "WeatherMaGroup"

    const-string v1, "WeatherDetail onCreate"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherDetail;->setContentView(I)V

    .line 154
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->initUI()V

    .line 155
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->performChooseTab()V

    .line 157
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 685
    invoke-super {p0}, Lcom/htc/app/ma/MaActivity;->onDestroy()V

    .line 686
    return-void
.end method

.method public onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f0a0005

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 799
    const-string v1, "WeatherMaGroup"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iput-object p1, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    .line 801
    sget-boolean v1, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-eqz v1, :cond_2

    .line 802
    invoke-interface {p1, v4, v5, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x208033b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 804
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 812
    :goto_0
    const v1, 0x7f0a0003

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080324

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 813
    const/4 v1, 0x4

    const v2, 0x7f0a0001

    invoke-interface {p1, v6, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x208031d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 815
    const/4 v1, 0x5

    const v2, 0x7f0a0009

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080328

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 817
    const/4 v1, 0x6

    const v2, 0x7f0a0006

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080336

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 820
    invoke-interface {p1, v4, v6}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 824
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, bRearrange:Z
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v1, :cond_0

    .line 827
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-le v1, v6, :cond_3

    .line 828
    const/4 v0, 0x1

    .line 836
    :cond_0
    :goto_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 838
    .end local v0           #bRearrange:Z
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 807
    :cond_2
    const v1, 0x7f0a0008

    invoke-interface {p1, v4, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x2080339

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 809
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 829
    .restart local v0       #bRearrange:Z
    :cond_3
    sget-object v1, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v1}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 830
    const-string v1, "com.htc.htclocationservice"

    sget-object v2, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v2, v3}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 719
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 757
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaActivity;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 722
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->addCity()V

    goto :goto_0

    .line 728
    :pswitch_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/Weather/DeleteAndRearrangeCity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.Weather.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WeatherMaGroup"

    const-string v3, "can not start MENU_EDIT Activity"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/Weather/WeatherDetail;->updateRefreshButton(Z)V

    goto :goto_0

    .line 742
    :pswitch_3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/Weather/WeatherSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 743
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.Weather.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 745
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 746
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "WeatherMaGroup"

    const-string v3, "can not start MENU_SETTING Activity"

    invoke-static {v2, v3}, Lcom/htc/Weather/util/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherActivity;->toDemoMode()V

    goto :goto_0

    .line 719
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 705
    invoke-super {p0, p1}, Lcom/htc/app/ma/MaActivity;->onMaReceiveIntent(Landroid/content/Intent;)V

    .line 706
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 691
    invoke-super {p0}, Lcom/htc/app/ma/MaActivity;->onPause()V

    .line 693
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 698
    invoke-super {p0}, Lcom/htc/app/ma/MaActivity;->onResume()V

    .line 700
    return-void
.end method

.method public sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 0
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 712
    invoke-super {p0, p1, p2, p3}, Lcom/htc/app/ma/MaActivity;->sendIntentToSibling(IILandroid/content/Intent;)V

    .line 713
    return-void
.end method

.method public setConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 92
    const-string v1, "WeatherMaGroup"

    const-string v2, "WeatherDetail-onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/htc/Weather/WeatherDetail;->isPortrait:Z

    .line 94
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherDetail;->isPortrait:Z

    sput-boolean v0, Lcom/htc/Weather/WeatherActivity;->isPortrait:Z

    .line 96
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherDetail;->isPortrait:Z

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherDetail;->showTitleBar(Z)V

    .line 98
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    iget-boolean v1, p0, Lcom/htc/Weather/WeatherDetail;->isPortrait:Z

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/NowForecastView;->adjustLayoutMargin(Z)V

    .line 99
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/NowForecastView;->updateData()V

    .line 100
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    iget-boolean v1, p0, Lcom/htc/Weather/WeatherDetail;->isPortrait:Z

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/DaysForecastView;->adjustLayoutMargin(Z)V

    .line 102
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/DaysForecastView;->updateData()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HourlyPanel;->setWeatherForm()V

    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherDetail;->isPortrait:Z

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherDetail;->adjustTabContentLayout(Z)V

    .line 108
    iget-boolean v0, p0, Lcom/htc/Weather/WeatherDetail;->isPortrait:Z

    invoke-direct {p0, v0}, Lcom/htc/Weather/WeatherDetail;->adjustSomeComponentLayout(Z)V

    .line 112
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v0}, Lcom/htc/Weather/WeatherActivity;->resumeGLVideo()V

    .line 115
    :cond_2
    return-void

    .line 93
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMainLayoutVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mMainLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSlectedTabType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 280
    const-string v0, "WeatherMaGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlectedTabType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput p1, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    .line 282
    return-void
.end method

.method public setTitleBar(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mTitalBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/htc/Weather/WeatherDetail;->mTitalBar:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 121
    :cond_0
    return-void

    .line 120
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showUpdating()V
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/NowForecastView;->showUpdating()V

    .line 291
    :cond_0
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/DaysForecastView;->showUpdating()V

    .line 295
    :cond_1
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 296
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mWeatherForm:Lcom/htc/Weather/widget/HourlyPanel;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/HourlyPanel;->showUpdating()V

    .line 299
    :cond_2
    return-void
.end method

.method public updateCityTime()V
    .locals 5

    .prologue
    .line 411
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    invoke-virtual {v3}, Lcom/htc/Weather/WeatherModel;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->cityTime:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 414
    sget-object v3, Lcom/htc/Weather/WeatherActivity;->mModel:Lcom/htc/Weather/WeatherModel;

    sget v4, Lcom/htc/Weather/WeatherActivity;->mCurrCityIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/Weather/WeatherModel;->get(I)Lcom/htc/Weather/data/CityInfo;

    move-result-object v0

    .line 416
    .local v0, ci:Lcom/htc/Weather/data/CityInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/htc/Weather/data/CityInfo;->hasWeatherData:Z

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getApp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 426
    .local v1, time:J
    :goto_1
    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->cityTime:Landroid/widget/TextView;

    invoke-static {p0, v1, v2}, Lcom/htc/Weather/util/RefreshUtil;->getTimeStringHM(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 423
    .end local v1           #time:J
    :cond_2
    invoke-virtual {v0}, Lcom/htc/Weather/data/CityInfo;->getLocationInfo()Lcom/htc/util/weather/WeatherLocation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getTimezoneId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/Weather/util/RefreshUtil;->getMillis(Ljava/util/TimeZone;)J

    move-result-wide v1

    .restart local v1       #time:J
    goto :goto_1
.end method

.method public updateDetailInfo()V
    .locals 2

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->updateTitleInfo()V

    .line 448
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->checkDataAvalible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget v0, p0, Lcom/htc/Weather/WeatherDetail;->mChooseTab:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 452
    :pswitch_0
    const-string v0, "WeatherMaGroup"

    const-string v1, "Update TabNow"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mNowForecast:Lcom/htc/Weather/widget/NowForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/NowForecastView;->updateData()V

    goto :goto_0

    .line 459
    :pswitch_1
    const-string v0, "WeatherMaGroup"

    const-string v1, "Update TabHourly"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->DemoModeToHourlyTab()V

    .line 461
    invoke-direct {p0}, Lcom/htc/Weather/WeatherDetail;->clickTabHourly()V

    goto :goto_0

    .line 465
    :pswitch_2
    const-string v0, "WeatherMaGroup"

    const-string v1, "Update Tab5Day"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/htc/Weather/WeatherDetail;->mDaysForecast:Lcom/htc/Weather/widget/DaysForecastView;

    invoke-virtual {v0}, Lcom/htc/Weather/widget/DaysForecastView;->updateData()V

    goto :goto_0

    .line 469
    :pswitch_3
    const-string v0, "WeatherMaGroup"

    const-string v1, "Update TabNews"

    invoke-static {v0, v1}, Lcom/htc/Weather/util/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateRefreshButton(Z)V
    .locals 8
    .parameter "forceUpdate"

    .prologue
    const v7, 0x7f0a0008

    const v6, 0x7f0a0005

    const/4 v5, 0x2

    .line 762
    const-string v2, "WeatherMaGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRefreshButton: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-eqz v2, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/Weather/WeatherActivity;

    .line 766
    .local v1, mainActivity:Lcom/htc/Weather/WeatherActivity;
    iget-object v2, v1, Lcom/htc/Weather/WeatherActivity;->mainHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 767
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mSyncData:Landroid/view/View;

    invoke-virtual {v2, v3, v7}, Lcom/htc/Weather/util/SkinUtil;->setImageResource(Landroid/view/View;I)V

    .line 770
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x2080339

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 772
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 793
    .end local v1           #mainActivity:Lcom/htc/Weather/WeatherActivity;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    sput-boolean v2, Lcom/htc/Weather/WeatherActivity;->mIsFreshing:Z

    .line 794
    return-void

    .line 776
    :cond_1
    if-eqz p1, :cond_2

    .line 777
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 778
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.htc.sync.provider.weather.CANCEL_ALL_REQUEST"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    invoke-virtual {p0, v0}, Lcom/htc/Weather/WeatherDetail;->sendBroadcast(Landroid/content/Intent;)V

    .line 781
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->cancelUpdating()V

    .line 782
    invoke-virtual {p0}, Lcom/htc/Weather/WeatherDetail;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/Weather/WeatherActivity;

    invoke-virtual {v2}, Lcom/htc/Weather/WeatherActivity;->updateBottomUpdateInfo()V

    .line 783
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mySkinUtil:Lcom/htc/Weather/util/SkinUtil;

    iget-object v3, p0, Lcom/htc/Weather/WeatherDetail;->mSyncData:Landroid/view/View;

    invoke-virtual {v2, v3, v6}, Lcom/htc/Weather/util/SkinUtil;->setImageResource(Landroid/view/View;I)V

    .line 786
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x208033b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 788
    iget-object v2, p0, Lcom/htc/Weather/WeatherDetail;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 793
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
