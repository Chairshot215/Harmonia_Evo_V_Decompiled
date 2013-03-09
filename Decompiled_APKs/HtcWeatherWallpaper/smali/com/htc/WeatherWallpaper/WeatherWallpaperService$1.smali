.class Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;
.super Ljava/lang/Object;
.source "WeatherWallpaperService.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->initFusion()V
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
    .line 342
    iput-object p1, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    iget-object v0, v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 347
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 351
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService$1;->this$0:Lcom/htc/WeatherWallpaper/WeatherWallpaperService;

    iget-object v0, v0, Lcom/htc/WeatherWallpaper/WeatherWallpaperService;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    .line 355
    return-void
.end method
