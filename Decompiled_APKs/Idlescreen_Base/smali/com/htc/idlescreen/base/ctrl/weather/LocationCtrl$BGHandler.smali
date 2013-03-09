.class Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;
.super Landroid/os/Handler;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 679
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    .line 680
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 681
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 684
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 686
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/weather/WSPData;

    .line 687
    .local v0, data:Lcom/htc/util/weather/WSPData;
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v2, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->onReceiverWeatherData(Lcom/htc/util/weather/WSPData;)V

    goto :goto_0

    .line 691
    .end local v0           #data:Lcom/htc/util/weather/WSPData;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;->isResume()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->forceRetryWeather()V

    goto :goto_0

    .line 696
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/weather/WSPData;

    .line 697
    .restart local v0       #data:Lcom/htc/util/weather/WSPData;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_1

    .line 698
    .local v1, forceUpdateResult:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v2, v1, v0}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->onReceiverForceRetWeatherData(ZLcom/htc/util/weather/WSPData;)V

    goto :goto_0

    .line 697
    .end local v1           #forceUpdateResult:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 702
    .end local v0           #data:Lcom/htc/util/weather/WSPData;
    :pswitch_3
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$BGHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->updateWeatherData()V

    goto :goto_0

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
