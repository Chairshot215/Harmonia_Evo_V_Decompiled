.class Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->initTempUnitReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 343
    const-string v2, "settingData"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, temperatureUnit:Ljava/lang/String;
    const/4 v1, 0x0

    .line 346
    .local v1, unit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 354
    :goto_0
    const-string v2, "LocationCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempUnit onReceive~ temperatureUnit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$100(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 357
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #setter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUnit:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    invoke-static {v2, v1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$102(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;)Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 358
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mListener:Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$2;->this$0:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->access$300(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 366
    :cond_0
    :goto_1
    return-void

    .line 352
    :cond_1
    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_F:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    goto :goto_0

    .line 364
    :cond_2
    const-string v2, "LocationCtrl"

    const-string v3, "tempUnit onReceive~ mListener is null"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
