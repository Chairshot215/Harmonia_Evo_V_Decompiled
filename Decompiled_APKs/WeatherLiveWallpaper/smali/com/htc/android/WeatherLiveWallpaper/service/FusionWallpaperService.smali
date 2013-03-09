.class public abstract Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "FusionWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;
    }
.end annotation


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"


# instance fields
.field private PREFIX:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field private mEngineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field public mIsDockMode:Z

.field public mResContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 22
    const-string v0, "[FusionWallpaperService]: "

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->PREFIX:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    .line 28
    iput v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIndex:I

    .line 29
    iput-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    .line 32
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mContext:Landroid/content/Context;

    .line 33
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mResContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIndex:I

    return v0
.end method

.method static synthetic access$008(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->addEngine(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->removeEngine(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V

    return-void
.end method

.method private addEngine(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method private removeEngine(Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 68
    iget-boolean v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;

    .line 70
    .local v0, en:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;->onOrientationionChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 74
    .end local v0           #en:Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService$Engine;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "[FusionWallpaperService_DockMode]: "

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->PREFIX:Ljava/lang/String;

    .line 41
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mContext:Landroid/content/Context;

    const-string v1, "com.htc.weathervideo.base"

    invoke-static {v0, v1}, Lcom/htc/android/WeatherLiveWallpaper/utility/WeatherWallpaperUtility;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mResContext:Landroid/content/Context;

    .line 48
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mEngineList:Ljava/util/List;

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    .line 59
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mContext:Landroid/content/Context;

    .line 60
    iput-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mResContext:Landroid/content/Context;

    .line 61
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 62
    return-void
.end method
