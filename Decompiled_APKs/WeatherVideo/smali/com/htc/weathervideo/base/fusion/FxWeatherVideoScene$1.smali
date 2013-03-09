.class Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;
.super Landroid/os/Handler;
.source "FxWeatherVideoScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->onInitHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;


# direct methods
.method constructor <init>(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onCompletion()V
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$000(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onPrepared()V
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$100(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->showVideo()V
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$200(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->hideImage()V
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$300(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    goto :goto_0

    .line 235
    :pswitch_4
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->hideVideo()V
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$400(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    goto :goto_0

    .line 242
    :pswitch_5
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->prepareImage()V
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$500(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    goto :goto_0

    .line 250
    :pswitch_6
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onStartEffect(Z)V
    invoke-static {v1, v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$600(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;Z)V

    goto :goto_0

    .line 258
    :pswitch_7
    iget-object v1, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->_onStopEffect(Z)V
    invoke-static {v1, v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$700(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;Z)V

    goto :goto_0

    .line 271
    :pswitch_8
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #getter for: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->mRequestToPlayVideo:Z
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$800(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene$1;->this$0:Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;

    #calls: Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->initVideo()V
    invoke-static {v0}, Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;->access$900(Lcom/htc/weathervideo/base/fusion/FxWeatherVideoScene;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
