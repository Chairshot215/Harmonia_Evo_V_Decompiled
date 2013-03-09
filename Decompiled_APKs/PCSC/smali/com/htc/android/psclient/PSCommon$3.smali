.class final Lcom/htc/android/psclient/PSCommon$3;
.super Ljava/lang/Object;
.source "PSCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playSound:Z

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lcom/htc/android/psclient/PSCommon$3;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/htc/android/psclient/PSCommon$3;->val$visible:Z

    iput-object p3, p0, Lcom/htc/android/psclient/PSCommon$3;->val$title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/htc/android/psclient/PSCommon$3;->val$playSound:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 849
    iget-object v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$context:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 850
    .local v3, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x7f020010

    .line 852
    .local v1, id:I
    iget-boolean v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$visible:Z

    if-eqz v6, :cond_1

    .line 853
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 854
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$context:Landroid/content/Context;

    const-class v7, Lcom/htc/android/psclient/SwitchUsbSettings;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 855
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    iget-object v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$context:Landroid/content/Context;

    invoke-static {v6, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 857
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$context:Landroid/content/Context;

    const v7, 0x7f070012

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 859
    .local v5, text:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 860
    .local v0, connectToPCNotifyBuilder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 861
    iget-object v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 862
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 863
    const v6, 0x7f020010

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 864
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 865
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 866
    iget-boolean v6, p0, Lcom/htc/android/psclient/PSCommon$3;->val$playSound:Z

    if-eqz v6, :cond_0

    .line 867
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 869
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 873
    .end local v0           #connectToPCNotifyBuilder:Landroid/app/Notification$Builder;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    .end local v5           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
