.class public Lcom/htc/taskmanager/ScreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/htc/taskmanager/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/taskmanager/MemoryMonitor;->unscheduleMemoryCheck()V

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1}, Lcom/htc/taskmanager/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/taskmanager/MemoryMonitor;->scheduleMemoryCheck()V

    goto :goto_0
.end method
