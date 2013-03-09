.class public Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcBeatsNotifyReceiver.java"


# static fields
.field private static final BEATS_NOTIFICATION:I = 0x64

.field private static final INTENT_BEATS_NOTIFY_OFF:Ljava/lang/String; = "com.htc.intent.action.BEATS_NOTIFY_OFF"

.field private static final INTENT_BEATS_NOTIFY_ON:Ljava/lang/String; = "com.htc.intent.action.BEATS_NOTIFY_ON"

.field private static final INTENT_BEATS_STATE_CHANGE:Ljava/lang/String; = "com.htc.intent.action.BEATS_STATE_CHANGE"

.field private static final INTENT_BEATS_STATE_NOTIFICATION:Ljava/lang/String; = "com.htc.intent.action.BEATS_STATE_NOTIFICATION"

.field private static final TAG:Ljava/lang/String; = "HtcBeatsNotifyReceiver"


# instance fields
.field private notification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private removeNotification(Landroid/content/Context;)V
    .locals 2

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private updateNotification(Landroid/content/Context;ZZI)V
    .locals 8

    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    if-nez v4, :cond_0

    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    :cond_0
    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f040002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :goto_0
    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030001

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/high16 v5, 0x7f05

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    const v5, 0x7f020001

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x1020006

    const v6, 0x7f020001

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f050001

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f050003

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.BEATS_NOTIFY_OFF"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f050003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f050003

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    const/high16 v5, 0x7f02

    iput v5, v4, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x1020006

    const/high16 v6, 0x7f02

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f050001

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f050003

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f040005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->notification:Landroid/app/Notification;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p1, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.BEATS_NOTIFY_ON"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "com.htc.intent.action.BEATS_STATE_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "effect_on"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "app_play"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "headset_mode"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "HtcBeatsNotifyReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INTENT_BEATS_STATE_NOTIFICATION, effectOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", appPlay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", headsetMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v9, :cond_1

    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, p1, v6, v2, v3}, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->updateNotification(Landroid/content/Context;ZZI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->removeNotification(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "HtcBeatsNotifyReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "com.htc.intent.action.BEATS_STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "effect_on"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v6, "headset_mode"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v6, "effect_name"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "HtcBeatsNotifyReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INTENT_BEATS_STATE_CHANGE, effectOn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", appName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", headsetMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_1
    invoke-direct {p0, p1, v6, v2, v3}, Lcom/htc/HtcBeatsNotify/HtcBeatsNotifyReceiver;->updateNotification(Landroid/content/Context;ZZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "HtcBeatsNotifyReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v6, "com.htc.intent.action.BEATS_NOTIFY_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "HtcBeatsNotifyReceiver"

    const-string v7, "INTENT_BEATS_NOTIFY_ON"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "htchardware"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/HtcHardwareManager;

    if-eqz v4, :cond_0

    const-string v6, "HtcBeatsNotify"

    invoke-virtual {v4, v9, v9, v6}, Lcom/htc/service/HtcHardwareManager;->setBeatsState(ZZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v6, "com.htc.intent.action.BEATS_NOTIFY_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "HtcBeatsNotifyReceiver"

    const-string v7, "INTENT_BEATS_NOTIFY_OFF"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "htchardware"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/service/HtcHardwareManager;

    if-eqz v4, :cond_0

    const-string v6, "HtcBeatsNotify"

    invoke-virtual {v4, v8, v9, v6}, Lcom/htc/service/HtcHardwareManager;->setBeatsState(ZZLjava/lang/String;)V

    goto/16 :goto_0
.end method
