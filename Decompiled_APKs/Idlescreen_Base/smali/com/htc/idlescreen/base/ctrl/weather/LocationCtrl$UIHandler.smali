.class Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;
.super Landroid/os/Handler;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 655
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    .line 656
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 657
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 660
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    invoke-static {v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    move-result-object v0

    .line 661
    .local v0, listener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    if-nez v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 664
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 666
    :pswitch_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;->onCityUpdate(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;->onWeatherUpdate(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    goto :goto_0

    .line 672
    :pswitch_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$UIHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-interface {v0, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;->onTempUnitChange(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V

    goto :goto_0

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
