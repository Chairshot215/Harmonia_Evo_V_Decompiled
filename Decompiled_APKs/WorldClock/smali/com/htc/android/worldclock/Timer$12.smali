.class Lcom/htc/android/worldclock/Timer$12;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v1, 0x3

    .line 916
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 917
    const-string v0, "timer_state"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0}, Lcom/htc/android/worldclock/PreferencesUtil;->getTimerState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 919
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    iput v1, v0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 920
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartHour:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1500(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 921
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartMinute:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1600(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 922
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartSecond:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1700(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    .line 923
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateButton()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2900(Lcom/htc/android/worldclock/Timer;)V

    .line 924
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v0, v0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$12;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 926
    :cond_0
    return-void
.end method
