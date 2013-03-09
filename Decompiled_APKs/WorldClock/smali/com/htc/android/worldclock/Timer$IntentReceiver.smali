.class Lcom/htc/android/worldclock/Timer$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/Timer;


# direct methods
.method private constructor <init>(Lcom/htc/android/worldclock/Timer;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/worldclock/Timer;Lcom/htc/android/worldclock/Timer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/htc/android/worldclock/Timer$IntentReceiver;-><init>(Lcom/htc/android/worldclock/Timer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 538
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 539
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0}, Lcom/htc/android/worldclock/PreferencesUtil;->getTimerState(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 540
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0}, Lcom/htc/android/worldclock/PreferencesUtil;->getExpiredTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0, v4}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerState(Landroid/content/Context;I)V

    .line 542
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    invoke-static {v0, v5, v4, v4, v4}, Lcom/htc/android/worldclock/Timer;->enableAlarmInternal(Landroid/content/Context;ZIII)V

    .line 543
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mIntentReceiver:Lcom/htc/android/worldclock/Timer$IntentReceiver;
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1400(Lcom/htc/android/worldclock/Timer;)Lcom/htc/android/worldclock/Timer$IntentReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/Timer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartHour:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1500(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerHour(Landroid/content/Context;I)V

    .line 545
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartMinute:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1600(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerMinute(Landroid/content/Context;I)V

    .line 546
    iget-object v0, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    iget-object v1, p0, Lcom/htc/android/worldclock/Timer$IntentReceiver;->this$0:Lcom/htc/android/worldclock/Timer;

    #getter for: Lcom/htc/android/worldclock/Timer;->mStartSecond:I
    invoke-static {v1}, Lcom/htc/android/worldclock/Timer;->access$1700(Lcom/htc/android/worldclock/Timer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/htc/android/worldclock/PreferencesUtil;->setTimerSecond(Landroid/content/Context;I)V

    .line 549
    :cond_0
    return-void
.end method
