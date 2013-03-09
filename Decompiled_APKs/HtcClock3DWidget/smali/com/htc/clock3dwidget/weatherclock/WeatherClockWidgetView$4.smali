.class Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;
.super Ljava/lang/Object;
.source "WeatherClockWidgetView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 1014
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const v5, 0x8020

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1016
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->isWidgetOnResume()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x8019

    if-eq v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v5, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x8001

    if-eq v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x8021

    if-eq v3, v4, :cond_1

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUiMessage~ in pause. msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->w(Ljava/lang/String;)V

    .line 1101
    :cond_0
    :goto_0
    return v1

    .line 1024
    :cond_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->isWidgetDestroy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    const-string v2, "weather clock handleMessage~ widget destroied"

    invoke-static {v2}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1033
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v1, v2

    .line 1101
    goto :goto_0

    .line 1035
    :sswitch_0
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->onTimeChanged()V

    goto :goto_1

    .line 1038
    :sswitch_1
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->onTimeChanged()V

    goto :goto_1

    .line 1041
    :sswitch_2
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->uiStartTodayAnimation()V

    goto :goto_1

    .line 1044
    :sswitch_3
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->clearAnimations()V

    .line 1045
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->uiStopTodayAnimation()V

    goto :goto_1

    .line 1048
    :sswitch_4
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBChangeTimeZone:Z
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1700(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1049
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBChangeTimeZone:Z
    invoke-static {v3, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1702(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 1050
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->checkClockTimeZone()V

    .line 1052
    :cond_4
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    iget-boolean v3, v3, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mUseAnimation:Z

    if-eqz v3, :cond_6

    .line 1053
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_5

    .line 1054
    const-string v1, "MSG_ON_RESUME~ need to delay"

    invoke-static {v1}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1055
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v3, v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    goto :goto_1

    .line 1057
    :cond_5
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->startAnimation()V

    goto :goto_1

    .line 1060
    :cond_6
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z
    invoke-static {v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {v3, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setPause(Z)V

    goto :goto_1

    .line 1064
    :sswitch_5
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    iget-boolean v3, v3, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mUseAnimation:Z

    if-eqz v3, :cond_3

    .line 1065
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z
    invoke-static {v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {v3, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->startAnimation(Z)V

    goto/16 :goto_1

    .line 1069
    :sswitch_6
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1070
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->prepareAnimation()V

    goto/16 :goto_1

    .line 1073
    :sswitch_7
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->uiUpdate()V

    goto/16 :goto_1

    .line 1076
    :sswitch_8
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->uiUpdateTempUnit()V

    goto/16 :goto_1

    .line 1079
    :sswitch_9
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->startAnimation()V

    goto/16 :goto_1

    .line 1083
    :sswitch_a
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getPosition()[I
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2400(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)[I

    move-result-object v0

    .line 1084
    .local v0, pos:[I
    if-eqz v0, :cond_9

    .line 1085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPosition(x,y)= ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 1086
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    aget v4, v0, v1

    aget v5, v0, v2

    invoke-virtual {v3, v4, v5}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setPosition(II)V

    .line 1088
    :cond_9
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->uiStartWWPAnimation()V

    .line 1089
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mbPlayWWPAtAdd:Z
    invoke-static {v3, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2502(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 1090
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2602(Z)Z

    goto/16 :goto_1

    .line 1093
    .end local v0           #pos:[I
    :sswitch_b
    iget-object v3, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBChangeTimeZone:Z
    invoke-static {v3, v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1702(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 1094
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->checkClockTimeZone()V

    .line 1095
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->onTimeChanged()V

    goto/16 :goto_1

    .line 1098
    :sswitch_c
    iget-object v1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$4;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const/4 v3, 0x0

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->switchToNewCity(ZLandroid/content/Intent;)V
    invoke-static {v1, v2, v3}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2700(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;ZLandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1033
    :sswitch_data_0
    .sparse-switch
        0x8001 -> :sswitch_4
        0x8009 -> :sswitch_2
        0x800a -> :sswitch_3
        0x800c -> :sswitch_9
        0x8012 -> :sswitch_b
        0x8013 -> :sswitch_a
        0x8014 -> :sswitch_7
        0x8015 -> :sswitch_8
        0x8016 -> :sswitch_1
        0x8019 -> :sswitch_6
        0x8020 -> :sswitch_5
        0x8021 -> :sswitch_c
        0x9003 -> :sswitch_0
    .end sparse-switch
.end method
