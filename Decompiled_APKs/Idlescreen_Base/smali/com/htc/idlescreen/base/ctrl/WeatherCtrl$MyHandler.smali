.class Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyHandler;
.super Landroid/os/Handler;
.source "WeatherCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyHandler;-><init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 396
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 402
    :goto_0
    return-void

    .line 398
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_0

    .line 399
    .local v0, setting:Z
    :goto_1
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$MyHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-virtual {v1, v0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->setWeatherSetting(Z)V

    goto :goto_0

    .line 398
    .end local v0           #setting:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch
.end method
