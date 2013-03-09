.class Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$2;
.super Ljava/lang/Object;
.source "WeatherWallpaperService.java"

# interfaces
.implements Lcom/htc/android/WeatherLiveWallpaper/receiver/WeatherWidgetStatus$StatusUpdateCallback;


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
    .line 104
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusUpdate(Z)V
    .locals 3
    .parameter "isResumed"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsWidgetResumed:Z
    invoke-static {v2, p1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$402(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;Z)Z

    .line 107
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->mIsWidgetResumed:Z
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;->access$400(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService;

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

    .line 109
    .local v1, we:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
    if-eqz v1, :cond_0

    .line 110
    #calls: Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->stopSoundPlayer()V
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;->access$500(Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;)V

    goto :goto_0

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #we:Lcom/htc/android/WeatherLiveWallpaper/service/WeatherWallpaperService$WeatherEngine;
    :cond_1
    return-void
.end method
