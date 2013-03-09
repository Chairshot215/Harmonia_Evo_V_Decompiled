.class public Lcom/htc/lockscreen/app/util/WallpaperHelper;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"


# static fields
.field public static final INTENT_ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "com.htc.launcher.lockscreen.WallpaperChanged"

.field public static final LOCKSCREEN_DEFAULT_WALLPAPER_LANDSCAPE:Ljava/lang/String; = "/data/misc/lockscreen/D_lock_screen_land"

.field public static final LOCKSCREEN_DEFAULT_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/misc/lockscreen/D_lock_screen_port"

.field public static final LOCKSCREEN_ROOT_PATH:Ljava/lang/String; = "/data/misc/lockscreen"

.field public static final LOCKSCREEN_SYSTEM_DEFAULT_WALLPAPER_LANDSCAPE:Ljava/lang/String; = "/system/customize/resource/htc_wallpaper_01_lockscreen.jpg"

.field public static final LOCKSCREEN_SYSTEM_DEFAULT_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/system/customize/resource/htc_wallpaper_01_lockscreen.jpg"

.field public static final LOCKSCREEN_SYSTEM_ROOT_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field public static final LOCKSCREEN_SYSTEM_WALLPAPER_LANDSCAPE:Ljava/lang/String; = "/system/customize/resource/htc_wallpaper_01_lockscreen.jpg"

.field public static final LOCKSCREEN_SYSTEM_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/system/customize/resource/htc_wallpaper_01_lockscreen.jpg"

.field public static final LOCKSCREEN_WALLPAPER_LANDSCAPE:Ljava/lang/String; = "/data/misc/lockscreen/lock_screen_land"

.field public static final LOCKSCREEN_WALLPAPER_PORTRAIT:Ljava/lang/String; = "/data/misc/lockscreen/lock_screen_port"

.field public static final LOG_PREFIX:Ljava/lang/String; = "WallpaperHelper"

.field private static sWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWallpaperPath()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/lockscreen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    const-string v1, "/data/misc/lockscreen"

    const/16 v2, 0x1ff

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 35
    :cond_0
    return-void
.end method

.method private static loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "filePath"

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, canonicalPath:Ljava/lang/String;
    const-string v4, "WallpaperHelper"

    invoke-static {v4, p0}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, bmpFile:Ljava/io/File;
    const/4 v0, 0x0

    .line 66
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const v4, 0x7fffffff

    const v5, 0x7fffffff

    :try_start_0
    invoke-static {p0, v4, v5}, Lcom/htc/util/media/ImageUtil;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, e:Ljava/util/NoSuchElementException;
    const-string v4, "WallpaperHelper"

    const-string v5, "this bitmap can\'t get canonical path"

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v3           #e:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v3

    .line 72
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "WallpaperHelper"

    const-string v5, "this bitmap will cause OutOfMemory, so skip it"

    invoke-static {v4, v5}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadWallpaper(Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "reload"

    .prologue
    .line 39
    const-string v1, "WallpaperHelper"

    const-string v2, "loadWallpaper"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-nez p0, :cond_0

    sget-object v1, Lcom/htc/lockscreen/app/util/WallpaperHelper;->sWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 41
    :cond_0
    const-string v1, "/data/misc/lockscreen/D_lock_screen_port"

    invoke-static {v1}, Lcom/htc/lockscreen/app/util/WallpaperHelper;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    .local v0, wallpaper:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 43
    const-string v1, "/data/misc/lockscreen/D_lock_screen_port"

    invoke-static {v1}, Lcom/htc/lockscreen/app/util/WallpaperHelper;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    const-string v1, "/system/customize/resource/htc_wallpaper_01_lockscreen.jpg"

    invoke-static {v1}, Lcom/htc/lockscreen/app/util/WallpaperHelper;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    :cond_2
    if-nez v0, :cond_3

    .line 49
    const-string v1, "/system/customize/resource/htc_wallpaper_01_lockscreen.jpg"

    invoke-static {v1}, Lcom/htc/lockscreen/app/util/WallpaperHelper;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    :cond_3
    if-eqz v0, :cond_4

    .line 52
    sput-object v0, Lcom/htc/lockscreen/app/util/WallpaperHelper;->sWallpaper:Landroid/graphics/Bitmap;

    .line 55
    .end local v0           #wallpaper:Landroid/graphics/Bitmap;
    :cond_4
    sget-object v1, Lcom/htc/lockscreen/app/util/WallpaperHelper;->sWallpaper:Landroid/graphics/Bitmap;

    return-object v1
.end method
