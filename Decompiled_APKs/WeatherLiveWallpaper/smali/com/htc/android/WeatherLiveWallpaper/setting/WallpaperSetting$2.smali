.class Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$2;
.super Ljava/lang/Object;
.source "WallpaperSetting.java"

# interfaces
.implements Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->initHanlder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;)V
    .locals 1
    .parameter "cityName"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;

    #setter for: Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->access$102(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->updateCityName()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->access$200(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)V

    .line 221
    return-void
.end method
