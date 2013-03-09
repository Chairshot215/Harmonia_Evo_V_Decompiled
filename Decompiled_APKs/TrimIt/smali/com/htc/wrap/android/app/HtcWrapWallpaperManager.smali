.class public Lcom/htc/wrap/android/app/HtcWrapWallpaperManager;
.super Ljava/lang/Object;
.source "HtcWrapWallpaperManager.java"


# static fields
.field public static final COMMAND_RESUME_RENDER:Ljava/lang/String; = "android.wallpaper.resume.render"

.field public static final COMMAND_STOP_RENDER:Ljava/lang/String; = "android.wallpaper.stop.render"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static peekDrawableAndClearCache(Landroid/app/WallpaperManager;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "wallpaperManager"

    .prologue
    .line 14
    const-string v0, "HtcWrapWallpaperManager"

    const-string v1, "peekDrawableAndClearCache return null! Please use ICS new standard API WallpaperManager.forgetLoadedWallpaper() to clear internal cache"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method
