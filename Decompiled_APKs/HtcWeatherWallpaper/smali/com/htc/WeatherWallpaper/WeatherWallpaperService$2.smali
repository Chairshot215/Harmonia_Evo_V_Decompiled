.class Lcom/htc/WeatherWallpaper/WeatherWallpaperService$2;
.super Lcom/htc/WeatherWallpaper/IWeatherWallpaperService$Stub;
.source "WeatherWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WeatherWallpaper/WeatherWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;


# direct methods
.method constructor <init>(Lcom/htc/WeatherWallpaper/WeatherWallpaperService;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$2;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    invoke-direct {p0}, Lcom/htc/WeatherWallpaper/IWeatherWallpaperService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public show(I)V
    .locals 0
    .parameter "condition"

    .prologue
    .line 528
    return-void
.end method
