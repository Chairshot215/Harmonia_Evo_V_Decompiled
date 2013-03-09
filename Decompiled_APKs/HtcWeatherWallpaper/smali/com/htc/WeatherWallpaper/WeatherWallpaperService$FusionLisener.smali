.class Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "WeatherWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WeatherWallpaper/WeatherWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FusionLisener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;


# direct methods
.method private constructor <init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;-><init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 2
    .parameter "backinfo"

    .prologue
    .line 480
    sget-boolean v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->logFlag:Z

    if-eqz v0, :cond_0

    const-string v0, "[WeatherOverlay]"

    const-string v1, "finish playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    invoke-virtual {v0}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->stopSelf()V

    .line 482
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 477
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$FusionLisener;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
