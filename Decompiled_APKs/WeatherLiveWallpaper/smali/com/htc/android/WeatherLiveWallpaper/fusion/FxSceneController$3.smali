.class Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxSceneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onInitFusionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/FxPlaybackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;


# direct methods
.method constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 293
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    .line 294
    .local v0, strMessage:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEIN:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$800(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->MARKER_FADEOUT:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$900(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 289
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$3;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
