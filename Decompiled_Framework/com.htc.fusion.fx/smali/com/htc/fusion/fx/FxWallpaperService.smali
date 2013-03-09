.class public abstract Lcom/htc/fusion/fx/FxWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "FxWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    return-void
.end method
