.class Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$1;
.super Landroid/os/Handler;
.source "WallpaperSetting.java"


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
    .line 195
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 197
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 202
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->access$000(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->prefCitySetting:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->access$000(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->mCityName:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;->access$100(Lcom/htc/android/WeatherLiveWallpaper/setting/WallpaperSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_0
    .end packed-switch
.end method
