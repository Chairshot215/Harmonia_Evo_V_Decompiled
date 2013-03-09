.class Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$4;
.super Ljava/lang/Object;
.source "FxWeatherVideoScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onInitMediaListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;


# direct methods
.method constructor <init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$4;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x1

    .line 404
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$4;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$4;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 406
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$4;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 408
    :cond_0
    return-void
.end method
