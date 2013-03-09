.class public Lcom/htc/taskmanager/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 15
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {p1}, Lcom/htc/taskmanager/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/SettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/taskmanager/SettingsManager;->getAutorunSettingValue()Z

    move-result v0

    .line 18
    .local v0, autostartSettingValue:Z
    if-eqz v0, :cond_0

    .line 20
    invoke-static {p1}, Lcom/htc/taskmanager/MemoryMonitor;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/MemoryMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/taskmanager/MemoryMonitor;->scheduleMemoryCheck()V

    .line 23
    .end local v0           #autostartSettingValue:Z
    :cond_0
    return-void
.end method
