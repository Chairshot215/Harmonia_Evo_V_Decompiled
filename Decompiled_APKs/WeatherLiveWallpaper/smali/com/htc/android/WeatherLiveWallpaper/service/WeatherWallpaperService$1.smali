.class Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;
.super Ljava/lang/Object;
.source "WeatherWallpaperService.java"

# interfaces
.implements Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$DataUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;


# direct methods
.method constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataUpdate(Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mWeatherData:Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;
    invoke-static {v2, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$002(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;)Lcom/htc/android/WeatherLiveWallpaper/data/WeatherData;

    .line 81
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    const/4 v3, 0x1

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mHaveDataCallback:Z
    invoke-static {v2, v3}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$102(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Z)Z

    .line 82
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mEngines:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$200(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;

    .line 83
    .local v1, we:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
    if-eqz v1, :cond_0

    .line 84
    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->onDataUpdated()V
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$300(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    goto :goto_0

    .line 87
    .end local v1           #we:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
    :cond_1
    return-void
.end method
