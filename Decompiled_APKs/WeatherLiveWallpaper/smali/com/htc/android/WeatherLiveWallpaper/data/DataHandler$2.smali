.class Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "DataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->onInitWeatherDataReceiver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;


# direct methods
.method constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->access$100(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->access$100(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$2;->this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->access$100(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    :cond_0
    return-void
.end method
