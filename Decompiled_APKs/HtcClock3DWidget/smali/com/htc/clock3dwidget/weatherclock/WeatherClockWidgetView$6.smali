.class Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;
.super Ljava/lang/Object;
.source "WeatherClockWidgetView.java"

# interfaces
.implements Lcom/htc/clock/util/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    .locals 0
    .parameter

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChinaLocationService()Z
    .locals 1

    .prologue
    .line 1388
    invoke-static {}, Lcom/htc/clock3dwidget/util/MyProjectSetting;->isChinaLocationService()Z

    move-result v0

    return v0
.end method

.method public isHelpTurnOnLoc()Z
    .locals 1

    .prologue
    .line 1392
    const/4 v0, 0x1

    return v0
.end method

.method public isResume()Z
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z
    invoke-static {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z

    move-result v0

    return v0
.end method

.method public onCityUpdate(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 4
    .parameter "weatherCtrl"

    .prologue
    const-wide/16 v2, 0x0

    .line 1366
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppDestroy:Z
    invoke-static {v0}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    :goto_0
    return-void

    .line 1369
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCityUpdate~ mWeatherCtrl.getLocKey():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1371
    const-string v0, "cur"

    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock/util/location/LocationCtrl;->getLocKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1373
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x8021

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    goto :goto_0

    .line 1375
    :cond_1
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x9203

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public onTempUnitChange(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 4
    .parameter "weatherCtrl"

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x9202

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    .line 1385
    return-void
.end method

.method public onWeatherUpdate(Lcom/htc/clock/util/location/LocationCtrl;)V
    .locals 4
    .parameter "weatherCtrl"

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$6;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v1, 0x9201

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    .line 1381
    return-void
.end method
