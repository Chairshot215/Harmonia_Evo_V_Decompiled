.class Lcom/htc/clock/util/location/LocationCtrl$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/clock/util/location/LocationCtrl;->initTempUnitReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock/util/location/LocationCtrl;


# direct methods
.method constructor <init>(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/clock/util/location/LocationCtrl$2;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 345
    const-string v2, "settingData"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, temperatureUnit:Ljava/lang/String;
    const/4 v1, 0x0

    .line 348
    .local v1, unit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    sget-object v1, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_C:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 356
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tempUnit onReceive~ temperatureUnit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$2;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->access$100(Lcom/htc/clock/util/location/LocationCtrl;)Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$2;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #setter for: Lcom/htc/clock/util/location/LocationCtrl;->mUnit:Lcom/htc/clock/util/location/WeatherForecast$UNIT;
    invoke-static {v2, v1}, Lcom/htc/clock/util/location/LocationCtrl;->access$102(Lcom/htc/clock/util/location/LocationCtrl;Lcom/htc/clock/util/location/WeatherForecast$UNIT;)Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    .line 360
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$2;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->access$200(Lcom/htc/clock/util/location/LocationCtrl;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/htc/clock/util/location/LocationCtrl$2;->this$0:Lcom/htc/clock/util/location/LocationCtrl;

    #getter for: Lcom/htc/clock/util/location/LocationCtrl;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/clock/util/location/LocationCtrl;->access$300(Lcom/htc/clock/util/location/LocationCtrl;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-static {v2, v3}, Lcom/htc/clock/util/MyUtil;->sendMessage(Landroid/os/Handler;I)V

    .line 368
    :cond_0
    :goto_1
    return-void

    .line 354
    :cond_1
    sget-object v1, Lcom/htc/clock/util/location/WeatherForecast$UNIT;->_F:Lcom/htc/clock/util/location/WeatherForecast$UNIT;

    goto :goto_0

    .line 366
    :cond_2
    const-string v2, "tempUnit onReceive~ mListener is null"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
