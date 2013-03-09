.class Lcom/htc/clock/util/location/LocationCtrl$UIHandler;
.super Landroid/os/Handler;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock/util/location/LocationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/location/LocationCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl$UIHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    .line 661
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 662
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl$UIHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v1}, Lcom/htc/clock/util/location/LocationCtrl;->access$200(Lcom/htc/clock/util/location/LocationCtrl;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v0

    .line 666
    .local v0, listener:Lcom/htc/clock/util/location/LocationListener;
    if-nez v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 669
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 671
    :pswitch_0
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl$UIHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-interface {v0, v1}, Lcom/htc/clock/util/location/LocationListener;->onCityUpdate(Lcom/htc/clock/util/location/LocationCtrl;)V

    goto :goto_0

    .line 674
    :pswitch_1
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl$UIHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-interface {v0, v1}, Lcom/htc/clock/util/location/LocationListener;->onWeatherUpdate(Lcom/htc/clock/util/location/LocationCtrl;)V

    goto :goto_0

    .line 677
    :pswitch_2
    iget-object v1, p0, Lcom/htc/clock/util/location/LocationCtrl$UIHandler;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-interface {v0, v1}, Lcom/htc/clock/util/location/LocationListener;->onTempUnitChange(Lcom/htc/clock/util/location/LocationCtrl;)V

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
