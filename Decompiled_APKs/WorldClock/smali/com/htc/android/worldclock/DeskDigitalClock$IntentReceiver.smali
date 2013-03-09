.class public Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeskDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/DeskDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/DeskDigitalClock;


# direct methods
.method protected constructor <init>(Lcom/htc/android/worldclock/DeskDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 82
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    #getter for: Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->access$200(Lcom/htc/android/worldclock/DeskDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/htc/android/worldclock/DeskDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/htc/android/worldclock/DeskDigitalClock;->access$302(Lcom/htc/android/worldclock/DeskDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    #getter for: Lcom/htc/android/worldclock/DeskDigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->access$200(Lcom/htc/android/worldclock/DeskDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
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

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    #calls: Lcom/htc/android/worldclock/DeskDigitalClock;->resetTimer()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->access$400(Lcom/htc/android/worldclock/DeskDigitalClock;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/htc/android/worldclock/DeskDigitalClock$IntentReceiver;->this$0:Lcom/htc/android/worldclock/DeskDigitalClock;

    #calls: Lcom/htc/android/worldclock/DeskDigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/htc/android/worldclock/DeskDigitalClock;->access$000(Lcom/htc/android/worldclock/DeskDigitalClock;)V

    .line 94
    return-void
.end method
