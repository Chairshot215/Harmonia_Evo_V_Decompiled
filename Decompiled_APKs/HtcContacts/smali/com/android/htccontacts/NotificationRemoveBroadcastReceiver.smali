.class public Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationRemoveBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v4, "id"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .local v2, id:I
    const/16 v4, 0x1771

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    .line 59
    .local v3, isPhoneInited:Z
    :goto_0
    if-nez v3, :cond_2

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 57
    .end local v3           #isPhoneInited:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 64
    .restart local v3       #isPhoneInited:Z
    :cond_2
    const-string v4, "android.intent.action.NOTIFICATION_REMOVE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    new-instance v1, Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;-><init>(Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver;Landroid/content/ContentResolver;)V

    .line 68
    .local v1, cleaner:Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;
    invoke-virtual {v1}, Lcom/android/htccontacts/NotificationRemoveBroadcastReceiver$HtcCallHidtoryCleanerThread;->start()V

    goto :goto_1
.end method
