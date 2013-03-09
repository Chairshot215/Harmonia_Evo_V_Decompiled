.class Lcom/htc/dockmode/weather/WeatherControl$7;
.super Landroid/content/BroadcastReceiver;
.source "WeatherControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/weather/WeatherControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/weather/WeatherControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/weather/WeatherControl;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/htc/dockmode/weather/WeatherControl$7;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 572
    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl$7;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #getter for: Lcom/htc/dockmode/weather/WeatherControl;->mStopped:Z
    invoke-static {v2}, Lcom/htc/dockmode/weather/WeatherControl;->access$000(Lcom/htc/dockmode/weather/WeatherControl;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 576
    .local v1, o:Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/util/weather/WSPPData;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 577
    check-cast v0, Lcom/htc/util/weather/WSPPData;

    .line 578
    .local v0, data:Lcom/htc/util/weather/WSPPData;
    invoke-virtual {v0}, Lcom/htc/util/weather/WSPPData;->hasWeatherData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/htc/dockmode/weather/WeatherControl$7;->this$0:Lcom/htc/dockmode/weather/WeatherControl;

    #calls: Lcom/htc/dockmode/weather/WeatherControl;->updateWeatherData(Lcom/htc/util/weather/WSPPData;)V
    invoke-static {v2, v0}, Lcom/htc/dockmode/weather/WeatherControl;->access$800(Lcom/htc/dockmode/weather/WeatherControl;Lcom/htc/util/weather/WSPPData;)V

    goto :goto_0
.end method
