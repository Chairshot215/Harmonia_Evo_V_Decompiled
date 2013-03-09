.class Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;
.super Ljava/lang/Object;
.source "WeatherCtrl.java"

# interfaces
.implements Lcom/htc/idlescreen/base/ctrl/weather/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;


# direct methods
.method constructor <init>(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChinaLocationService()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public isHelpTurnOnLoc()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public isResume()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method public onCityUpdate(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V
    .locals 4
    .parameter "weatherCtrl"

    .prologue
    .line 340
    const-string v1, "WeatherCtrl"

    const-string v2, "onCityUpdate"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    move-result-object v0

    .line 342
    .local v0, state:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;
    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->OK:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->requestShowWeather()V
    invoke-static {v1}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string v1, "WeatherCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCityUpdate not ready:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTempUnitChange(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V
    .locals 2
    .parameter "weatherCtrl"

    .prologue
    .line 361
    const-string v0, "WeatherCtrl"

    const-string v1, "onTempUnitChange"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->OK:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->requestShowWeather()V
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    const-string v0, "WeatherCtrl"

    const-string v1, "onTempUnitChange not ready"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWeatherUpdate(Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;)V
    .locals 2
    .parameter "weatherCtrl"

    .prologue
    .line 351
    const-string v0, "WeatherCtrl"

    const-string v1, "onWeatherUpdate"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl;->getLocState()Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    move-result-object v0

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;->OK:Lcom/htc/idlescreen/base/ctrl/weather/LocationCtrl$LocationState;

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl$1;->this$0:Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->requestShowWeather()V
    invoke-static {v0}, Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/WeatherCtrl;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v0, "WeatherCtrl"

    const-string v1, "onWeatherUpdate not ready"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
