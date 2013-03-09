.class public Lcom/htc/android/WeatherLiveWallpaper/service/WeatherLoopingService;
.super Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;
.source "WeatherLoopingService.java"


# static fields
.field private static final LOG_FLAG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field private static final PREFIX:Ljava/lang/String; = "[WeatherLooping]: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    .line 18
    invoke-super {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->onCreate()V

    .line 19
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->onDestroy()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/WeatherLiveWallpaper/service/FusionWallpaperService;->mIsDockMode:Z

    .line 27
    return-void
.end method
