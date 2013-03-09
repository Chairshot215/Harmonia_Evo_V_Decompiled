.class Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;
.super Landroid/os/Handler;
.source "FxSceneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->onInitHandler()V
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
    .line 165
    iput-object p1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->_onCompletion()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$000(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->_onPrepared()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$100(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->showVideo()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$200(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideImage()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$300(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    goto :goto_0

    .line 191
    :pswitch_4
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->hideVideo()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$400(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    goto :goto_0

    .line 196
    :pswitch_5
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->prepareImage()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$500(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    goto :goto_0

    .line 201
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->startEffect(Z)V
    invoke-static {v1, v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$600(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;Z)V

    goto :goto_0

    .line 206
    :pswitch_7
    iget-object v0, p0, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController$1;->this$0:Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;

    #calls: Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->initVideo()V
    invoke-static {v0}, Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;->access$700(Lcom/htc/android/WeatherLiveWallpaper/fusion/FxSceneController;)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
