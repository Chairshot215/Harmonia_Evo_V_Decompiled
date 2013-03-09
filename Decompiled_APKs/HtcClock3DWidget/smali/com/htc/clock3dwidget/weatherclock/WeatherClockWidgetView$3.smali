.class Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;
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
    .line 822
    iput-object p1, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 824
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v7, :cond_0

    .line 825
    const-string v8, "weatherClock handleMessage~ help to check lock"

    invoke-static {v8}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 827
    :cond_0
    monitor-enter p0

    .line 828
    :try_start_0
    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->isWidgetDestroy()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 829
    const-string v7, "weather clock handleMessage~ widget destroied"

    invoke-static {v7}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 830
    monitor-exit p0

    .line 1009
    :goto_0
    return v6

    .line 833
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1007
    :cond_2
    :goto_1
    monitor-exit p0

    move v6, v7

    .line 1009
    goto :goto_0

    .line 835
    :sswitch_0
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 836
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->updateFormat()V

    .line 837
    :cond_3
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    iget-boolean v6, v6, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mPauseByAddToHome:Z

    if-nez v6, :cond_2

    .line 838
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    iget-boolean v6, v6, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->mUseAnimation:Z

    if-eqz v6, :cond_4

    .line 839
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    const v8, 0x8019

    invoke-interface {v6, v8}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 840
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 841
    .local v3, message:Landroid/os/Message;
    const v6, 0x8019

    iput v6, v3, Landroid/os/Message;->what:I

    .line 842
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-interface {v6, v3, v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 844
    .end local v3           #message:Landroid/os/Message;
    :cond_4
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->isUseWWPAnimation()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 845
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->setSunAnimate()V

    .line 846
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const/4 v8, 0x1

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->m_bPlayingWWP:Z
    invoke-static {v6, v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$402(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    goto :goto_1

    .line 1007
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 851
    :sswitch_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WHAT_ON_RESUME~ notifyCause:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 852
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    sget-object v8, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->RESUME:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;
    invoke-static {v6, v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$502(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;)Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    .line 853
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    iget v8, p1, Landroid/os/Message;->arg1:I

    int-to-long v8, v8

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mResumeNotifyCaused:J
    invoke-static {v6, v8, v9}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$602(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;J)J

    .line 854
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLastResumeTime:J
    invoke-static {v6, v8, v9}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$702(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;J)J

    .line 855
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 856
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->updateFormat()V

    .line 859
    :goto_2
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const/4 v8, 0x1

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z
    invoke-static {v6, v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$802(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 860
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 861
    .local v5, uiMsg:Landroid/os/Message;
    const v6, 0x8001

    iput v6, v5, Landroid/os/Message;->what:I

    .line 862
    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 863
    const/4 v6, 0x0

    iput v6, v5, Landroid/os/Message;->arg2:I

    .line 864
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->getState()Lcom/htc/clock/util/location/LocationCtrl$State;

    move-result-object v6

    sget-object v8, Lcom/htc/clock/util/location/LocationCtrl$State;->START:Lcom/htc/clock/util/location/LocationCtrl$State;

    if-eq v6, v8, :cond_6

    .line 866
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-interface {v6, v5, v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 867
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 868
    .local v2, handler:Landroid/os/Handler;
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lcom/htc/clock/util/location/LocationCtrl;->register(Landroid/os/Handler;Lcom/htc/clock/util/location/LocationListener;)V

    .line 869
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->checkLocEnable()Z

    goto/16 :goto_1

    .line 858
    .end local v2           #handler:Landroid/os/Handler;
    .end local v5           #uiMsg:Landroid/os/Message;
    :cond_5
    const-string v6, "WHAT_ON_RESUME~ mClockView is null"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 871
    .restart local v5       #uiMsg:Landroid/os/Message;
    :cond_6
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-interface {v6, v5, v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    .line 872
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v8, 0x9004

    const-wide/16 v9, 0x12c

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 878
    .end local v5           #uiMsg:Landroid/os/Message;
    :sswitch_2
    const-string v8, "WHAT_ON_RESUME_DELAY"

    invoke-static {v8}, Lcom/htc/clock/util/MyLog;->d(Ljava/lang/String;)V

    .line 879
    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    sget-object v9, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;->RESUME_DELAY:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mUiState:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;
    invoke-static {v8, v9}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$502(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;)Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$UiState;

    .line 880
    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const/4 v9, 0x1

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBoolAppResume:Z
    invoke-static {v8, v9}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$802(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 881
    const/4 v1, 0x0

    .line 882
    .local v1, bPlayWWP:Z
    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 883
    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/clock/util/location/LocationCtrl;->checkLocEnable()Z

    move-result v0

    .line 884
    .local v0, bLocEnableChanged:Z
    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/clock/util/location/LocationCtrl;->getState()Lcom/htc/clock/util/location/LocationCtrl$State;

    move-result-object v8

    sget-object v9, Lcom/htc/clock/util/location/LocationCtrl$State;->START:Lcom/htc/clock/util/location/LocationCtrl$State;

    if-eq v8, v9, :cond_7

    .line 885
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 886
    .restart local v2       #handler:Landroid/os/Handler;
    iget-object v7, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v7}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/htc/clock/util/location/LocationCtrl;->register(Landroid/os/Handler;Lcom/htc/clock/util/location/LocationListener;)V

    .line 887
    iget-object v7, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v7}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/clock/util/location/LocationCtrl;->checkLocEnable()Z

    .line 888
    monitor-exit p0

    goto/16 :goto_0

    .line 890
    .end local v2           #handler:Landroid/os/Handler;
    :cond_7
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->checkTempUnit()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 891
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/htc/clock/util/location/LocationListener;->onTempUnitChange(Lcom/htc/clock/util/location/LocationCtrl;)V

    .line 894
    :cond_8
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->updateDataByForeCast()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->IsNeedUpdate()Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v0, :cond_a

    .line 897
    :cond_9
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->update()V

    .line 899
    :cond_a
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->isUseWWPAnimation()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 900
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->checkPlayAnimationTime()V

    .line 901
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 902
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const/4 v8, 0x0

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mLongClick:Z
    invoke-static {v6, v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1102(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 903
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->attach3DObject()V

    .line 905
    :cond_b
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->checkToPlayWWP()Z
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Z

    move-result v1

    .line 907
    :cond_c
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->forceUpdateIfNoData()V

    .line 916
    .end local v0           #bLocEnableChanged:Z
    :cond_d
    :goto_3
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v8, 0x9009

    const-wide/16 v9, 0xbb8

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendNonUiMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 909
    :cond_e
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    if-nez v6, :cond_f

    .line 910
    const-string v6, "WHAT_ON_RESUME_DELAY~ mWeatherCtrl is null"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    .line 912
    :cond_f
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-nez v6, :cond_d

    .line 913
    const-string v6, "WHAT_ON_RESUME_DELAY~ mWeatherView is null"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 919
    .end local v1           #bPlayWWP:Z
    :sswitch_3
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->stateToLog()V
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    goto/16 :goto_1

    .line 922
    :sswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 923
    .local v4, notifyCause:I
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->myOnNotifyWidgetPause(I)V
    invoke-static {v6, v4}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1400(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;I)V

    goto/16 :goto_1

    .line 926
    .end local v4           #notifyCause:I
    :sswitch_5
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->initData()V
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1500(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    goto/16 :goto_1

    .line 929
    :sswitch_6
    const-string v6, "WHAT_ON_TEMP_UNIT_CHANGED~"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 930
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 931
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->updateTempUnit()V

    goto/16 :goto_1

    .line 933
    :cond_10
    const-string v6, "WHAT_ON_TEMP_UNIT_CHANGED~ mWeatherView is null"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 937
    :sswitch_7
    const-string v6, "WHAT_ON_WEATHER_UPDATE~"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 938
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v8, 0x9201

    invoke-virtual {v6, v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 939
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 940
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->update()V

    .line 941
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->playWWPAtFirstTime()V
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1600(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    goto/16 :goto_1

    .line 943
    :cond_11
    const-string v6, "WHAT_ON_WEATHER_UPDATE~ mWeatherView is null"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 947
    :sswitch_8
    const-string v6, "WHAT_ON_CITY_CHANGED~"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 948
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v8, 0x9203

    invoke-virtual {v6, v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->removeUiMessages(I)V

    .line 949
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 950
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->update()V

    .line 951
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const/4 v8, 0x1

    #setter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mBChangeTimeZone:Z
    invoke-static {v6, v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1702(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Z)Z

    .line 952
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v8, 0x8012

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 953
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->playWWPAtFirstTime()V
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1600(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    goto/16 :goto_1

    .line 955
    :cond_12
    const-string v6, "WHAT_ON_CITY_CHANGED~ mWeatherView is null"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 959
    :sswitch_9
    const-string v6, "WHAT_ON_GL_ANIMATION_STOP~"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 960
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 961
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->animationEnd()V

    goto/16 :goto_1

    .line 963
    :cond_13
    const-string v6, "WHAT_ON_GL_ANIMATION_STOP~ mWeatherView is null"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 968
    :sswitch_a
    const-string v6, "WHAT_ON_TRY_UPDATE_WEATHER~"

    invoke-static {v6}, Lcom/htc/clock/util/MyLog;->i(Ljava/lang/String;)V

    .line 969
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->getLocState()Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    move-result-object v6

    sget-object v8, Lcom/htc/clock/util/location/LocationCtrl$LocationState;->NO_DATA:Lcom/htc/clock/util/location/LocationCtrl$LocationState;

    if-ne v6, v8, :cond_2

    .line 970
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->updateWeatherData()V

    goto/16 :goto_1

    .line 973
    :sswitch_b
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 974
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->updateFormat()V

    .line 975
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mClockView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->checkSystemAutoSynTimezone()V

    .line 976
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->checkClockTimeZone()V

    .line 978
    :cond_14
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->checkTempUnit()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 979
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherListener:Lcom/htc/clock/util/location/LocationListener;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationListener;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/htc/clock/util/location/LocationListener;->onTempUnitChange(Lcom/htc/clock/util/location/LocationCtrl;)V

    .line 981
    :cond_15
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherCtrl:Lcom/htc/clock/util/location/LocationCtrl;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock/util/location/LocationCtrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock/util/location/LocationCtrl;->checkLocEnable()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 982
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 983
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mWeatherView:Lcom/htc/clock3dwidget/weatherclock/WeatherClock;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Lcom/htc/clock3dwidget/weatherclock/WeatherClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClock;->update()V

    .line 985
    :cond_16
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v8, 0x9003

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    .line 986
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    const v8, 0x8016

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v8, v9, v10}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->sendUiMessageDelayed(IJ)V

    goto/16 :goto_1

    .line 992
    :sswitch_c
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doConfigurationChanged()V
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1800(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    goto/16 :goto_1

    .line 995
    :sswitch_d
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #getter for: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->mApplication:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$1900(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->getCityCode()Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2000(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/htc/clock/util/MyUtil;->launchWorldClockAp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 998
    :sswitch_e
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->launchWeatherClockAp()V
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2100(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V

    goto/16 :goto_1

    .line 1001
    :sswitch_f
    iget-object v8, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->doActivityResult(Landroid/content/Intent;)V
    invoke-static {v8, v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2200(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1004
    :sswitch_10
    iget-object v6, p0, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView$3;->this$0:Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;

    #calls: Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->enableLocationProvider()V
    invoke-static {v6}, Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;->access$2300(Lcom/htc/clock3dwidget/weatherclock/WeatherClockWidgetView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 833
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x4 -> :sswitch_9
        0x9001 -> :sswitch_5
        0x9004 -> :sswitch_2
        0x9009 -> :sswitch_3
        0x9011 -> :sswitch_c
        0x9012 -> :sswitch_d
        0x9013 -> :sswitch_e
        0x9014 -> :sswitch_f
        0x9015 -> :sswitch_0
        0x9016 -> :sswitch_10
        0x9201 -> :sswitch_7
        0x9202 -> :sswitch_6
        0x9203 -> :sswitch_8
        0x9204 -> :sswitch_a
        0x9205 -> :sswitch_b
    .end sparse-switch
.end method
