.class Lcom/htc/android/worldclock/Timer$8;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 643
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 646
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 647
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->stopSlideHtcTimePicker()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2300(Lcom/htc/android/worldclock/Timer;)V

    .line 648
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iput v4, v0, Lcom/htc/android/worldclock/Timer;->mState:I

    .line 649
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v2}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v2

    #setter for: Lcom/htc/android/worldclock/Timer;->mCurrentHour:I
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Timer;->access$2402(Lcom/htc/android/worldclock/Timer;I)I

    move-result v1

    #setter for: Lcom/htc/android/worldclock/Timer;->mStartHour:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$1502(Lcom/htc/android/worldclock/Timer;I)I

    .line 650
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v2}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v2

    #setter for: Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Timer;->access$2502(Lcom/htc/android/worldclock/Timer;I)I

    move-result v1

    #setter for: Lcom/htc/android/worldclock/Timer;->mStartMinute:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$1602(Lcom/htc/android/worldclock/Timer;I)I

    .line 651
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mHtcTimePicker:Lcom/htc/widget/HtcTimePicker;
    invoke-static {v2}, Lcom/htc/android/worldclock/Timer;->access$2000(Lcom/htc/android/worldclock/Timer;)Lcom/htc/widget/HtcTimePicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v2

    #setter for: Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/Timer;->access$2602(Lcom/htc/android/worldclock/Timer;I)I

    move-result v1

    #setter for: Lcom/htc/android/worldclock/Timer;->mStartSecond:I
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/Timer;->access$1702(Lcom/htc/android/worldclock/Timer;I)I

    .line 653
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartHour:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1500(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setStartTimerHour(Landroid/content/Context;I)V

    .line 654
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartMinute:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1600(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setStartTimerMinute(Landroid/content/Context;I)V

    .line 655
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartSecond:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1700(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setStartTimerSecond(Landroid/content/Context;I)V

    .line 657
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mCurrentHour:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$2400(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I
    invoke-static {v2}, Lcom/htc/android/worldclock/Timer;->access$2500(Lcom/htc/android/worldclock/Timer;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I
    invoke-static {v3}, Lcom/htc/android/worldclock/Timer;->access$2600(Lcom/htc/android/worldclock/Timer;)I

    move-result v3

    invoke-static {v0, v4, v1, v2, v3}, Lcom/htc/android/worldclock/Timer;->enableAlarmInternal(Landroid/content/Context;ZIII)V

    .line 658
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mCurrentHour:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$2400(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mCurrentMinute:I
    invoke-static {v2}, Lcom/htc/android/worldclock/Timer;->access$2500(Lcom/htc/android/worldclock/Timer;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mCurrentSecond:I
    invoke-static {v3}, Lcom/htc/android/worldclock/Timer;->access$2600(Lcom/htc/android/worldclock/Timer;)I

    move-result v3

    #calls: Lcom/htc/android/worldclock/Timer;->calculateAlarm(III)J
    invoke-static {v1, v2, v3}, Lcom/htc/android/worldclock/Timer;->access$2800(III)J

    move-result-wide v1

    #setter for: Lcom/htc/android/worldclock/Timer;->mExpiredTime:J
    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/Timer;->access$2702(Lcom/htc/android/worldclock/Timer;J)J

    .line 659
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v0, v0, Lcom/htc/android/worldclock/Timer;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, v1, Lcom/htc/android/worldclock/Timer;->mUpdateTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateButton()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$2900(Lcom/htc/android/worldclock/Timer;)V

    .line 661
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mExpiredTime:J
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$2700(Lcom/htc/android/worldclock/Timer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/htc/android/worldclock/PreferencesUtil;->setExpiredTime(Landroid/content/Context;J)V

    .line 662
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #calls: Lcom/htc/android/worldclock/Timer;->updateTimerProvider()V
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$3000(Lcom/htc/android/worldclock/Timer;)V

    .line 664
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mTabTimer:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/Timer;->access$3100(Lcom/htc/android/worldclock/Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$8;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/Timer;->finish()V

    .line 667
    :cond_0
    return-void
.end method
