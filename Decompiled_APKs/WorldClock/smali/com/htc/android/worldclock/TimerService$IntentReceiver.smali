.class public Lcom/htc/android/worldclock/TimerService$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/worldclock/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/TimerService;


# direct methods
.method protected constructor <init>(Lcom/htc/android/worldclock/TimerService;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/android/worldclock/TimerService$IntentReceiver;->this$0:Lcom/htc/android/worldclock/TimerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 270
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 271
    const-string v1, "alarm_action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, ation:Ljava/lang/String;
    const-string v1, "times_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/worldclock/TimerService$IntentReceiver$1;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/TimerService$IntentReceiver$1;-><init>(Lcom/htc/android/worldclock/TimerService$IntentReceiver;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 280
    :cond_0
    return-void
.end method
