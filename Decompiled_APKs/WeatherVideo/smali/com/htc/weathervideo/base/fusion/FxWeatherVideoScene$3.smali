.class Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;
.super Lcom/htc/fusion/fx/MessageListener;
.source "FxWeatherVideoScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onInitFusionListener()V
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
.field final synthetic this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;


# direct methods
.method constructor <init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

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

    .line 372
    iget-object v0, p1, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    .line 373
    .local v0, strMessage:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 374
    const-string v1, "fade_in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const-string v1, "fadeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$1100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 366
    check-cast p1, Lcom/htc/fusion/fx/FxPlaybackInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$3;->onMessageReceived(Lcom/htc/fusion/fx/FxPlaybackInfo;)V

    return-void
.end method
