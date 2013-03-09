.class public Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DigitalClock;


# direct methods
.method protected constructor <init>(Lcom/htc/android/worldclock/DigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 88
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #getter for: Lcom/htc/android/worldclock/DigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DigitalClock;->access$300(Lcom/htc/android/worldclock/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/htc/android/worldclock/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/DigitalClock;->access$402(Lcom/htc/android/worldclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #getter for: Lcom/htc/android/worldclock/DigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DigitalClock;->access$300(Lcom/htc/android/worldclock/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #calls: Lcom/htc/android/worldclock/DigitalClock;->resetTimer()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DigitalClock;->access$500(Lcom/htc/android/worldclock/DigitalClock;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DigitalClock;

    #calls: Lcom/htc/android/worldclock/DigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DigitalClock;->access$100(Lcom/htc/android/worldclock/DigitalClock;)V

    .line 100
    return-void
.end method
