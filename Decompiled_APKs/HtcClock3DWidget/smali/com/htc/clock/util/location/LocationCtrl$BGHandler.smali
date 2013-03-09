.class Lcom/htc/clock/util/location/LocationCtrl$BGHandler;
.super Landroid/os/Handler;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/location/LocationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/location/LocationCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    .line 685
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 686
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 689
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 691
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/weather/WSPData;

    .line 692
    .local v0, data:Lcom/htc/util/weather/WSPData;
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2, v0}, Lcom/htc/clock/util/location/LocationCtrl;->onReceiverWeatherData(Lcom/htc/util/weather/WSPData;)V

    goto :goto_0

    .line 696
    .end local v0           #data:Lcom/htc/util/weather/WSPData;
    :pswitch_1
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->access$200(Lcom/htc/clock/util/location/LocationCtrl;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->access$200(Lcom/htc/clock/util/location/LocationCtrl;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/clock/util/location/LocationListener;->isResume()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->forceRetryWeather()V

    goto :goto_0

    .line 701
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/util/weather/WSPData;

    .line 702
    .restart local v0       #data:Lcom/htc/util/weather/WSPData;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_1

    .line 703
    .local v1, forceUpdateResult:Z
    :goto_1
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2, v1, v0}, Lcom/htc/clock/util/location/LocationCtrl;->onReceiverForceRetWeatherData(ZLcom/htc/util/weather/WSPData;)V

    goto :goto_0

    .line 702
    .end local v1           #forceUpdateResult:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 707
    .end local v0           #data:Lcom/htc/util/weather/WSPData;
    :pswitch_3
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$BGHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-virtual {v2}, Lcom/htc/clock/util/location/LocationCtrl;->updateWeatherData()V

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
