.class public Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;
.super Landroid/os/Handler;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/WeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/reminderview/WeatherView;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 386
    iget v2, p1, Landroid/os/Message;->what:I

    .line 387
    .local v2, what:I
    packed-switch v2, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 389
    :pswitch_0
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$200(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2711

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 390
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$400(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherTL:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$500(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v1

    .line 392
    .local v1, tl:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 394
    const-string v3, "LoopIn"

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mRainTL:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$600(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Lcom/htc/fusion/fx/FxTimelineControl;

    move-result-object v0

    .line 397
    .local v0, rain:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 399
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->setVisibility(Z)Ljava/util/ArrayList;

    .line 400
    const-string v3, "LoopIn"

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    .end local v0           #rain:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v1           #tl:Lcom/htc/fusion/fx/FxTimelineControl;
    :pswitch_1
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$200(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x2712

    invoke-static {v3, v4}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 406
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/WeatherView;->mResume:Z
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/WeatherView;->access$400(Lcom/htc/idlescreen/base/reminderview/WeatherView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/WeatherView$MyHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/WeatherView;

    iget-object v1, v3, Lcom/htc/idlescreen/base/reminderview/WeatherView;->mWeatherScene:Lcom/htc/fusion/fx/FxScene;

    .line 408
    .restart local v1       #tl:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 410
    const-string v3, "LoopIn"

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
