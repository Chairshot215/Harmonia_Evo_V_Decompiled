.class public Lcom/android/mms/transaction/SimFullReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimFullReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0xea

    const/4 v9, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    const-string v7, "android.provider.Telephony.SIM_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 47
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {v2, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 50
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v6, viewSimIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-static {p1, v9, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 56
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 58
    .local v3, notification:Landroid/app/Notification;
    const v7, 0x7f0903e8

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, title:Ljava/lang/CharSequence;
    const v7, 0x7f0900eb

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, message:Ljava/lang/CharSequence;
    const v0, 0x7f0201a1

    .line 63
    .local v0, icon:I
    iput v0, v3, Landroid/app/Notification;->icon:I

    .line 64
    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 65
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/app/Notification;->when:J

    .line 66
    const/4 v7, 0x2

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 75
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03003a

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 76
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x1020006

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 77
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x7f0e0045

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 78
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x7f0e003d

    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 79
    iget-object v7, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v8, 0x7f0e00c7

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 80
    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v2, v10, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 85
    .end local v0           #icon:I
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v2           #nm:Landroid/app/NotificationManager;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    .end local v5           #title:Ljava/lang/CharSequence;
    .end local v6           #viewSimIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
