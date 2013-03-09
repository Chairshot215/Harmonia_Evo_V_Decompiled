.class public Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;
.super Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;
.source "WeatherWallpaperService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherWallpaperService]: "

.field public static mDockExisted:Z

.field public static mEnterSetting:Z

.field public static mPreviewExisted:Z

.field public static mWallpaperExisted:Z


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

.field private mEnableSound:Z

.field private mEngines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveDataCallback:Z

.field private mIsWidgetResumed:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

.field private mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    .line 54
    sput-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWallpaperExisted:Z

    .line 55
    sput-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreviewExisted:Z

    .line 56
    sput-boolean v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDockExisted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreferences:Landroid/content/SharedPreferences;

    .line 40
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    .line 41
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    .line 42
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mHaveDataCallback:Z

    .line 44
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mCityCode:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnableSound:Z

    .line 60
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    .line 61
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsWidgetResumed:Z

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mHaveDataCallback:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getCurrentVideoIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mHaveDataCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnableSound:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->checkDateOverDue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsWidgetResumed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsWidgetResumed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getIdleShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getCurrentVideoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getVideoIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkDateOverDue()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 714
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    invoke-virtual {v1}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->checkDateIsOverDue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 717
    :cond_0
    return v0
.end method

.method private getCurrentVideoIndex()I
    .locals 1

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getCurrentVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getVideoIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getCurrentVideoPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    const/4 v0, 0x1

    .line 751
    .local v0, condition:I
    const/4 v1, 0x1

    .line 752
    .local v1, isDay:Z
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    invoke-virtual {v2}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->getWeatherConditionID()I

    move-result v0

    .line 754
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    invoke-virtual {v2}, Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;->getIsDay()Z

    move-result v1

    .line 756
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getVideoPath(IZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getIdleShowing()Z
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/utility/CustomizeUtility;->getKeyguardIsShowing(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getVideoIndex(Ljava/lang/String;)I
    .locals 4
    .parameter "path"

    .prologue
    .line 732
    const/4 v1, 0x0

    .line 733
    .local v1, index:I
    invoke-static {}, Lcom/htc/weather/WeatherVideo;->getVideoCount()I

    move-result v2

    .line 734
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 735
    invoke-static {v0}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 736
    move v1, v0

    .line 744
    :cond_0
    return v1

    .line 734
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getVideoPath(IZ)Ljava/lang/String;
    .locals 2
    .parameter "condition"
    .parameter "isDay"

    .prologue
    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/htc/weather/WeatherVideo;->getVideoFilePathByIcon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, path:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->onCreate()V

    .line 70
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->getCityCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mCityCode:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->getEnableSound(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnableSound:Z

    .line 72
    sput-boolean v2, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnterSetting:Z

    .line 74
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    .line 76
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    new-instance v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;

    invoke-direct {v1, p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;-><init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->setDataUpdateCallback(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;)V

    .line 89
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->requestWeatherData()V

    .line 92
    :cond_0
    const-string v0, "WeatehrWallpaperSetting"

    invoke-virtual {p0, v0, v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreferences:Landroid/content/SharedPreferences;

    .line 93
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    if-nez v0, :cond_3

    .line 101
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    .line 102
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->onInit()V

    .line 104
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    new-instance v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$2;

    invoke-direct {v1, p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$2;-><init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->setDataUpdateCallback(Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;)V

    .line 116
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->getWidgetResume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsWidgetResumed:Z

    .line 120
    :cond_3
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;-><init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->onDestroy()V

    .line 129
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 134
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreferences:Landroid/content/SharedPreferences;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    invoke-virtual {v0}, Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;->onDestroy()V

    .line 139
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherWidgetStatus:Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    .line 147
    :cond_3
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    .line 148
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mCityCode:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    .line 150
    invoke-super {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->onDestroy()V

    .line 151
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 681
    const-string v3, "pref.weatherwallpaper.citycode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    const-string v3, "CurrentCity"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, code:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mCityCode:Ljava/lang/String;

    if-eq v3, v0, :cond_0

    .line 685
    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mCityCode:Ljava/lang/String;

    .line 687
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    if-eqz v3, :cond_0

    .line 688
    iput-boolean v4, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mHaveDataCallback:Z

    .line 689
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    .line 690
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    invoke-virtual {v3}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->resetCityForWeatherDataReceiver()V

    .line 691
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDataHandler:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    invoke-virtual {v3}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->requestWeatherData()V

    .line 700
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    .line 701
    .local v2, we:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
    if-eqz v2, :cond_1

    .line 702
    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->notifyPreferenceChanged()V
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$2200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    goto :goto_1

    .line 696
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #we:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
    :cond_2
    const-string v3, "pref.weatherwallpaper.enablesound"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEnableSound:Z

    goto :goto_0

    .line 705
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    .line 158
    .local v0, ret:Z
    sget-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWallpaperExisted:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mPreviewExisted:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mDockExisted:Z

    if-nez v1, :cond_0

    .line 160
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 162
    :cond_0
    return v0
.end method
