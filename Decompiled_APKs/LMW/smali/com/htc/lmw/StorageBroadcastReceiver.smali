.class public Lcom/htc/lmw/StorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v7, 0x1000

    const/high16 v6, 0x400

    const v5, 0x8000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 13
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-static {p1, v3}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 19
    sput-boolean v3, Lcom/htc/lmw/MainActivity;->memoryAlreadyFreed:Z

    .line 20
    sput-boolean v4, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    .line 22
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/lmw/Wizard;->setLowMemory(Z)V

    .line 24
    invoke-static {p1}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 25
    sget-object v1, Lcom/htc/lmw/Wizard;->phonePages:[Ljava/lang/Class;

    sput-object v1, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DEVICE_STORAGE_CRITICAL_LEAVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    sput-boolean v4, Lcom/htc/lmw/MainActivity;->memoryAlreadyFreed:Z

    .line 29
    sput-boolean v4, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    .line 32
    invoke-static {p1, v3}, Lcom/htc/lmw/Settings;->setNotifyOnDeviceLowStorage(Landroid/content/Context;Z)V

    .line 35
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/lmw/Wizard;->setLowMemory(Z)V

    .line 36
    invoke-static {p1}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 37
    invoke-static {p1}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 39
    :cond_2
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 40
    sput-boolean v4, Lcom/htc/lmw/MainActivity;->memoryAlreadyFreed:Z

    .line 41
    sput-boolean v3, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    .line 43
    invoke-static {p1}, Lcom/htc/lmw/Settings;->isNotifyOnDeviceLowStorage(Landroid/content/Context;)Z

    move-result v0

    .line 44
    .local v0, showDialog:Z
    if-eqz v0, :cond_0

    .line 46
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-class v1, Lcom/htc/lmw/MainActivity;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local p2
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    const-string v1, "display_warning"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    .end local v0           #showDialog:Z
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DEVICE_STORAGE_CRITICAL_ENTER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    sput-boolean v4, Lcom/htc/lmw/MainActivity;->memoryAlreadyFreed:Z

    .line 57
    sput-boolean v3, Lcom/htc/lmw/MainActivity;->isLowMode:Z

    .line 60
    invoke-static {p1}, Lcom/htc/lmw/Customize;->removeNotification(Landroid/content/Context;)V

    .line 62
    invoke-static {}, Lcom/htc/lmw/Wizard;->getInstance()Lcom/htc/lmw/Wizard;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/lmw/Wizard;->setLowMemory(Z)V

    .line 63
    new-instance p2, Landroid/content/Intent;

    .end local p2
    const-class v1, Lcom/htc/lmw/MainActivity;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .restart local p2
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    const-string v1, "display_warning"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 72
    :cond_4
    invoke-static {p1}, Lcom/htc/lmw/Settings;->isNotificationMustBeActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {p1}, Lcom/htc/lmw/Customize;->raiseNotification(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
