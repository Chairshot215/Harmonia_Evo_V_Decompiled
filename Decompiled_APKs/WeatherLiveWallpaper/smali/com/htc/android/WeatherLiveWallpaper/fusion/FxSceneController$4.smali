.class Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$4;
.super Ljava/lang/Object;
.source "FxSceneController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onInitMediaListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;


# direct methods
.method constructor <init>(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$4;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$4;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$4;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$4;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #getter for: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$1100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 324
    :cond_0
    return-void
.end method
