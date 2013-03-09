.class public Lcom/htc/cs/util/CSStatusBarNotification;
.super Ljava/lang/Object;
.source "CSStatusBarNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;
    }
.end annotation


# static fields
.field private static final csIconID:I = 0x7f020000

.field public static final notifyAccountDisconnected:I = 0x5

.field public static final notifyConfirmAccountID:I = 0x1

.field public static final notifyPasswordChangedID:I = 0x4

.field public static final notifyRemainderConfirmAccountID:I = 0x3

.field public static final notifyRemoveAccountID:I = 0x2

.field public static final notifyUpdateInformation:I = 0x6

.field private static final tickerText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "HTC Sense"

    sput-object v0, Lcom/htc/cs/util/CSStatusBarNotification;->tickerText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notifyID"

    .prologue
    .line 53
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 56
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    return-void
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 64
    return-void
.end method

.method public static notify(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;ZLcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;)V
    .locals 7
    .parameter "context"
    .parameter "notifyID"
    .parameter "title"
    .parameter "conetent"
    .parameter "notificationIntent"
    .parameter "autoDelete"
    .parameter "pendingMode"

    .prologue
    const/4 v6, 0x0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 24
    .local v3, when:J
    const/4 v0, 0x0

    .line 26
    .local v0, contentIntent:Landroid/app/PendingIntent;
    sget-object v5, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Activity:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    invoke-virtual {p6, v5}, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27
    invoke-static {p0, v6, p4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 37
    :goto_0
    new-instance v1, Landroid/app/Notification;

    const/high16 v5, 0x7f02

    sget-object v6, Lcom/htc/cs/util/CSStatusBarNotification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {v1, v5, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 38
    .local v1, notification:Landroid/app/Notification;
    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 39
    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 40
    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 41
    if-eqz p5, :cond_0

    .line 42
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 43
    :cond_0
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 44
    invoke-virtual {v1, p0, p2, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 45
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 48
    .local v2, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 49
    .end local v1           #notification:Landroid/app/Notification;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    return-void

    .line 28
    :cond_2
    sget-object v5, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->Service:Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;

    invoke-virtual {p6, v5}, Lcom/htc/cs/util/CSStatusBarNotification$PendingIntentMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    invoke-static {p0, v6, p4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method
