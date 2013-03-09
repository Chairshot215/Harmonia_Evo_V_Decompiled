.class public interface abstract Lcom/htc/WeatherWallpaper/IWeatherWallpaperService;
.super Ljava/lang/Object;
.source "IWeatherWallpaperService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/WeatherWallpaper/IWeatherWallpaperService$Stub;
    }
.end annotation


# virtual methods
.method public abstract hide()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract show(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
