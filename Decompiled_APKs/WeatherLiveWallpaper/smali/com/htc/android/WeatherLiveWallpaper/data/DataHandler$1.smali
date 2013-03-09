.class Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$1;
.super Landroid/os/Handler;
.source "DataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;


# direct methods
.method constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;->access$000(Lcom/htc/android/WeatherLiveWallpaper/data/DataHandler;Landroid/os/Message;)V

    .line 69
    return-void
.end method
