.class public Lcom/android/phone/HtcBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v2, "HtcBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v2, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    .line 42
    .local v1, mgr:Lcom/android/phone/NotificationMgr;
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 51
    .end local v1           #mgr:Lcom/android/phone/NotificationMgr;
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v2, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    .line 47
    .restart local v1       #mgr:Lcom/android/phone/NotificationMgr;
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->notifyNewHTCLockScreen()V

    goto :goto_0
.end method
