.class Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;
.super Ljava/lang/Object;
.source "AnalogClockWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;


# direct methods
.method constructor <init>(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const v5, 0x9002

    const v7, 0x8019

    const v6, 0x8001

    const/4 v4, 0x0

    .line 296
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 382
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 298
    :sswitch_0
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 299
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mInstanceCallback:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$100(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$InstanceCallback;->loadPropertyData()Lcom/htc/clock3dwidget/analogclock/ClockConfig;

    move-result-object v0

    .line 300
    .local v0, config:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    if-eqz v0, :cond_1

    .line 301
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget-object v4, v0, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->citnameCode:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/htc/clock3dwidget/analogclock/ClockConfig;->bShowCityLabel:Z

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->initData(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Ljava/lang/String;Z)V

    goto :goto_0

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->initData(Ljava/lang/String;Z)V
    invoke-static {v3, v8, v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Ljava/lang/String;Z)V

    goto :goto_0

    .line 306
    .end local v0           #config:Lcom/htc/clock3dwidget/analogclock/ClockConfig;
    :cond_2
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->initData(Ljava/lang/String;Z)V
    invoke-static {v3, v8, v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Ljava/lang/String;Z)V

    goto :goto_0

    .line 310
    :sswitch_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->what_Is_Paused()V

    goto :goto_0

    .line 313
    :sswitch_2
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 314
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 315
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/clock/util/time/TimeCtrl;->updateFormat()Z

    .line 316
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/clock/util/time/TimeCtrl;->is24HourFormat()Z

    move-result v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/clock/util/time/TimeCtrl;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setDateFormat(ZLjava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateTimeZone()V

    .line 320
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateCityName()V

    .line 322
    :cond_3
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget-boolean v3, v3, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mPauseByAddToHome:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 325
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v3

    iget-boolean v3, v3, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->mUseAnimation:Z

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3, v7}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeUiMessages(I)V

    .line 327
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 328
    .local v1, message:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 329
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendUiMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 334
    .end local v1           #message:Landroid/os/Message;
    :sswitch_3
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    sget-object v4, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->RESUME:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    #setter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;
    invoke-static {v3, v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$602(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;)Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    .line 335
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->removeNonUiMessages(I)V

    .line 336
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 337
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/clock/util/time/TimeCtrl;->updateFormat()Z

    .line 338
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mAnalogClockView:Lcom/htc/clock3dwidget/analogclock/AnalogClockView;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock3dwidget/analogclock/AnalogClockView;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/clock/util/time/TimeCtrl;->is24HourFormat()Z

    move-result v4

    iget-object v5, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mTimeCtrl:Lcom/htc/clock/util/time/TimeCtrl;
    invoke-static {v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$400(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/clock/util/time/TimeCtrl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/clock/util/time/TimeCtrl;->getDateFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockView;->setDateFormat(ZLjava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateTimeZone()V

    .line 342
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->updateCityName()V

    .line 344
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WHAT_ON_RESUME~ notifyCause:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    .line 347
    .restart local v1       #message:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 348
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$500(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 349
    iput v6, v1, Landroid/os/Message;->what:I

    .line 350
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 351
    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 358
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendUiMessageDelayed(Landroid/os/Message;J)V

    .line 359
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    const v4, 0x8022

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x409f400000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->sendUiMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 352
    :cond_6
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$700(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 353
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mhUiHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$700(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 354
    iput v6, v1, Landroid/os/Message;->what:I

    .line 355
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 356
    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 362
    .end local v1           #message:Landroid/os/Message;
    :sswitch_4
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    sget-object v4, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;->PAUSED:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    #setter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mUiState:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;
    invoke-static {v3, v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$602(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;)Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$UiState;

    .line 363
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 364
    .local v2, notifyCause:I
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    invoke-virtual {v3, v2}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->onNotifyWidgetPause(I)V

    goto/16 :goto_0

    .line 367
    .end local v2           #notifyCause:I
    :sswitch_5
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doTimeChanged()V
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$800(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V

    goto/16 :goto_0

    .line 370
    :sswitch_6
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doFormatChanged()V
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$900(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V

    goto/16 :goto_0

    .line 373
    :sswitch_7
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doConfigurationChanged()V
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$1000(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)V

    goto/16 :goto_0

    .line 376
    :sswitch_8
    iget-object v3, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mApplication:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$1100(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    #getter for: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->mCityCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$1200(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/clock/util/MyUtil;->launchWorldClockAp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :sswitch_9
    iget-object v4, p0, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget$2;->this$0:Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    #calls: Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->doActivityResult(Landroid/content/Intent;)V
    invoke-static {v4, v3}, Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;->access$1300(Lcom/htc/clock3dwidget/analogclock/AnalogClockWidget;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x9001 -> :sswitch_0
        0x9002 -> :sswitch_1
        0x9003 -> :sswitch_5
        0x9011 -> :sswitch_7
        0x9012 -> :sswitch_8
        0x9014 -> :sswitch_9
        0x9015 -> :sswitch_2
        0x9205 -> :sswitch_6
    .end sparse-switch
.end method
