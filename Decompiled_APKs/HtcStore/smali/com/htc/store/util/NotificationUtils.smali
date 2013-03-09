.class public Lcom/htc/store/util/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# static fields
.field private static final NOTIFICATION_ID_UPDATE_AVAILABLE:I = 0x7f0a0057

.field private static final PERIOD_CHECK_UPDATES:J = 0x5265c00L

.field private static final PERIOD_CHECK_UPDATES_DELAYED:J = 0x493e0L

.field private static final PERIOD_CLEAR_CACHED_IMAGES:J = 0xf731400L

.field private static final PERIOD_CLEAR_CACHED_IMAGES_DELAYED:J = 0x2bf20L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/store/util/NotificationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelCheckingUpdatesSchedule(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 194
    invoke-static {p0}, Lcom/htc/store/util/NotificationUtils;->getCheckUpdatesServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 196
    .local v1, updatePI:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 197
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 199
    return-void
.end method

.method public static cancelClearCachedImagesSchedule(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 235
    invoke-static {p0}, Lcom/htc/store/util/NotificationUtils;->getClearCachedImagesServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 236
    .local v1, pi:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 237
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 238
    return-void
.end method

.method public static cancelUpdatesNotification(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 42
    sget-object v1, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Cancel updates notification"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 44
    .local v0, nm:Landroid/app/NotificationManager;
    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 45
    return-void
.end method

.method public static getCheckContentInserverPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.CheckContentInServer"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 210
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getCheckUpdatesServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.CHECK_UPDATES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 204
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getClearCachedImagesServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.store.action.CLEAR_CACHED_IMAGES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 259
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method public static getNotificaion(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;ZZ)Landroid/app/Notification;
    .locals 4
    .parameter "context"
    .parameter "iconId"
    .parameter "title"
    .parameter "note"
    .parameter "intent"
    .parameter "isAutoCancel"
    .parameter "isOnGoing"

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 243
    .local v1, noteDefault:I
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 245
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 246
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 248
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 249
    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 250
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 252
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 253
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private static getOngoingNotification(Landroid/content/Context;Landroid/content/Intent;II)Landroid/app/Notification;
    .locals 3
    .parameter "context"
    .parameter "intent"
    .parameter "iconId"
    .parameter "stringId"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-static {p0, v2, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 101
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 103
    const v2, 0x7f0a005c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 104
    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 106
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 107
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method private static notifyAutoCancel(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"
    .parameter "iconId"
    .parameter "title"
    .parameter "note"
    .parameter "actionIntent"
    .parameter "useGlobal"

    .prologue
    .line 86
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 88
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 89
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 90
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 92
    invoke-static {p0, v0, p6}, Lcom/htc/store/util/NotificationUtils;->setNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 94
    .local v2, notification:Landroid/app/Notification;
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 95
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 96
    return-void
.end method

.method public static notifyMarkedItem(Landroid/content/Context;Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 9
    .parameter "host"
    .parameter "plugin"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 63
    sget-object v0, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Notify marked item"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v8, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v8, p1}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 65
    .local v8, prefManager:Lcom/htc/store/module/PreferenceManager;
    invoke-virtual {v8}, Lcom/htc/store/module/PreferenceManager;->isMarkedItemsNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "notificaion is enabled for Marked item"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.store.action.ENTRY"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "default_tab"

    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const v1, 0x7f0a0077

    const v2, 0x208067e

    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v0, 0x4000

    invoke-static {p0, v6, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/store/util/NotificationUtils;->notifyAutoCancel(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    .line 75
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static notifyMarkedItem(Landroid/content/Context;Lcom/htc/store/module/vo/ItemItem;)V
    .locals 9
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 48
    sget-object v0, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Notify marked item"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    new-instance v8, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v8, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 50
    .local v8, prefManager:Lcom/htc/store/module/PreferenceManager;
    invoke-virtual {v8}, Lcom/htc/store/module/PreferenceManager;->isMarkedItemsNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "notificaion is enabled for Marked item"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.htc.store.action.ENTRY"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "default_tab"

    sget-object v1, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const v1, 0x7f0a0077

    const v2, 0x208067e

    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0a0033

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v0, 0x4000

    invoke-static {p0, v6, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/store/util/NotificationUtils;->notifyAutoCancel(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    .line 60
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static notifySendToPhone(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    .line 78
    sget-object v2, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Notify send to phone"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v2, v6}, Lcom/htc/store/util/NotificationUtils;->setNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 80
    .local v1, notification:Landroid/app/Notification;
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 81
    .local v0, nm:Landroid/app/NotificationManager;
    const v2, 0x7f0a0078

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 82
    return-void
.end method

.method public static notifyUpdates(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const v1, 0x7f0a0057

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 28
    sget-object v0, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v4, "Notify updates"

    aput-object v4, v2, v9

    invoke-static {v0, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance v8, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v8, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 30
    .local v8, prefManager:Lcom/htc/store/module/PreferenceManager;
    invoke-virtual {v8}, Lcom/htc/store/module/PreferenceManager;->isUpdatesNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, title:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/htc/store/activity/EntryActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "default_tab"

    sget-object v2, Lcom/htc/store/module/json/JSONConstant;->SETUP_PRIMARY_TAB_ARRAY:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const/high16 v0, 0x4000

    invoke-static {p0, v9, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 35
    .local v5, pi:Landroid/app/PendingIntent;
    const v2, 0x7f02000f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/store/util/NotificationUtils;->notifyAutoCancel(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Z)V

    .line 39
    .end local v3           #title:Ljava/lang/String;
    .end local v5           #pi:Landroid/app/PendingIntent;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static scheduleCheckingUpdates(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 184
    invoke-static {p0}, Lcom/htc/store/util/NotificationUtils;->getCheckUpdatesServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 186
    .local v1, updatePI:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 187
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 188
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 191
    return-void
.end method

.method private static scheduleClearCachedImages(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/htc/store/util/NotificationUtils;->getClearCachedImagesServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 229
    .local v1, pi:Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 230
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 231
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 232
    return-void
.end method

.method public static scheduleNextCheckingUpdates(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/htc/store/util/NotificationUtils;->scheduleCheckingUpdates(Landroid/content/Context;J)V

    .line 172
    return-void
.end method

.method public static scheduleNextCheckingUpdates(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "lastTimeMillis"

    .prologue
    .line 175
    const-wide/32 v4, 0x5265c00

    add-long v2, p1, v4

    .line 176
    .local v2, next:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    .local v0, current:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 178
    const-wide/32 v4, 0x493e0

    add-long v2, v0, v4

    .line 180
    :cond_0
    invoke-static {p0, v2, v3}, Lcom/htc/store/util/NotificationUtils;->scheduleCheckingUpdates(Landroid/content/Context;J)V

    .line 181
    return-void
.end method

.method public static scheduleNextClearCachedImages(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/htc/store/util/NotificationUtils;->scheduleClearCachedImages(Landroid/content/Context;J)V

    .line 215
    return-void
.end method

.method public static scheduleNextClearCachedImages(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "lastTimeMillis"

    .prologue
    .line 218
    const-wide/32 v4, 0xf731400

    add-long v2, p1, v4

    .line 219
    .local v2, next:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    .local v0, current:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 221
    const-wide/32 v4, 0x2bf20

    add-long v2, v0, v4

    .line 223
    :cond_0
    invoke-static {p0, v2, v3}, Lcom/htc/store/util/NotificationUtils;->scheduleClearCachedImages(Landroid/content/Context;J)V

    .line 224
    sget-object v4, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "scheduleClearCachedImages: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method private static setNotification(Landroid/content/Context;Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;
    .locals 13
    .parameter "context"
    .parameter "builder"
    .parameter "useGlobal"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 111
    new-instance v4, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v4, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 112
    .local v4, prefManager:Lcom/htc/store/module/PreferenceManager;
    if-eqz p2, :cond_3

    .line 114
    const/4 v0, 0x4

    .line 115
    .local v0, defaults:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "volume_notification"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 116
    .local v3, notificationVolume:I
    if-eqz v3, :cond_0

    .line 117
    const/4 v7, 0x2

    invoke-static {p0, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 118
    .local v2, globalSoundUri:Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 126
    .end local v2           #globalSoundUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_on"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    .line 127
    .local v6, vibrationOn:Z
    sget-object v7, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "vibrationOn (global): "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-eqz v6, :cond_1

    .line 129
    or-int/lit8 v0, v0, 0x2

    .line 132
    :cond_1
    sget-object v7, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "defaults (global): "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v3           #notificationVolume:I
    .end local v6           #vibrationOn:Z
    :goto_1
    return-object p1

    .line 121
    .restart local v2       #globalSoundUri:Landroid/net/Uri;
    .restart local v3       #notificationVolume:I
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v2           #globalSoundUri:Landroid/net/Uri;
    .end local v3           #notificationVolume:I
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    sget-object v7, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 138
    .end local v0           #defaults:I
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    const/4 v0, 0x4

    .line 139
    .restart local v0       #defaults:I
    invoke-virtual {v4}, Lcom/htc/store/module/PreferenceManager;->isNotificationSoundEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    invoke-virtual {v4}, Lcom/htc/store/module/PreferenceManager;->getNotificationSound()Landroid/net/Uri;

    move-result-object v5

    .line 141
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_6

    .line 142
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 148
    .end local v5           #uri:Landroid/net/Uri;
    :cond_4
    :goto_2
    invoke-virtual {v4}, Lcom/htc/store/module/PreferenceManager;->isNotificationVibrateEnabled()Z

    move-result v6

    .line 149
    .restart local v6       #vibrationOn:Z
    sget-object v7, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "vibrationOn: "

    aput-object v9, v8, v11

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    if-eqz v6, :cond_5

    .line 151
    or-int/lit8 v0, v0, 0x2

    .line 154
    :cond_5
    sget-object v7, Lcom/htc/store/util/NotificationUtils;->TAG:Ljava/lang/String;

    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "defaults: "

    aput-object v9, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 144
    .end local v6           #vibrationOn:Z
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_6
    or-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
