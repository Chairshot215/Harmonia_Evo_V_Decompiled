.class Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$1;
.super Landroid/os/Handler;
.source "CityNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->onInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;


# direct methods
.method constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->_updateCityName()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;->access$000(Lcom/htc/android/WeatherLiveWallpaper/setting/CityNameHandler;)V

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
