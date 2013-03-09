.class public Lcom/htc/android/WeatherLiveWallpaper/WeatherConst;
.super Ljava/lang/Object;
.source "WeatherConst.java"


# static fields
.field public static final ACTION_MEDIA_RELEASE:Ljava/lang/String; = "com.htc.ml.VST_MEDIA_RELEASE"

.field public static final ACTION_RESUME_PLAYING_VIDEO:Ljava/lang/String; = "com.htc.weatherlivewallpaper.RESUME_PLAYING_VIDEO"

.field public static final ACTION_START_PLAYING_VIDEO:Ljava/lang/String; = "com.htc.weatherlivewallpaper.START_PLAYING_VIDEO"

.field public static final APP_LOCATION_SERVICE:Ljava/lang/String; = "com.htc.htclocationservice"

.field public static final CITY_CODE_CUR:Ljava/lang/String; = "CurrentCity"

.field public static final DEFAULT_CONDITION:I = 0x1

.field public static final DEFAULT_VIDEO_INDEX:I = 0x0

.field public static final DEFAULT_VIDEO_PATH:Ljava/lang/String; = null

.field public static final GET_INTENT_FROM_WSP:I = 0x3ea

.field public static final INTERVAL_RESUME_PLAYING_VIDEO:J = 0xbb8L

.field public static final INTERVAL_START_PLAYING_VIDEO:J = 0x1f4L

.field public static final LOG_FLAG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "WeatherLiveWallpaper"

.field public static final MEDIA_PAUSE:Ljava/lang/String; = "com.htc.launcher.COMMAND_WALLPAPER_PAUSE"

.field public static final MEDIA_RESUME:Ljava/lang/String; = "com.htc.launcher.COMMAND_WALLPAPER_RESUME"

.field public static final PREF_CITY_CODE:Ljava/lang/String; = "pref.weatherwallpaper.citycode"

.field public static final PREF_CITY_NAME:Ljava/lang/String; = "pref.weatherwallpaper.cityname"

.field public static final PREF_ENABLE_SOUND:Ljava/lang/String; = "pref.weatherwallpaper.enablesound"

.field public static final PREF_SETTING:Ljava/lang/String; = "WeatehrWallpaperSetting"

.field public static final RESOURCE_PACKAGE_PATH:Ljava/lang/String; = "com.htc.weathervideo.base"

.field public static final SETTINGS_CITY_CODE:Ljava/lang/String; = "com.htc.weatherwallpaper.wallpapersetting_city_code"

.field public static final SETTINGS_CITY_NAME:Ljava/lang/String; = "com.htc.weatherwallpaper.wallpapersetting_city_name"

.field public static final SETTINGS_SYNC_SOUND:Ljava/lang/String; = "com.htc.weatherwallpaper.wallpapersetting_sound"

.field public static final START_SOUND:I = 0x7d2

.field public static final STOP_SOUND:I = 0x7d3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/weather/WeatherVideo;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/android/WeatherLiveWallpaper/WeatherConst;->DEFAULT_VIDEO_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
