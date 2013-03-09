.class public Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;
.super Ljava/lang/Object;
.source "EASEventBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;
    }
.end annotation


# static fields
.field public static final ACNT_SETTING_UI_CLASSNAME:Ljava/lang/String; = "com.htc.android.mail.easclient.ExchangeSvrSetting"

.field public static final CLIENT_UI_CLASSNAME:Ljava/lang/String; = "com.htc.android.mail.easclient.EASClient"

.field public static final CLIENT_UI_PACKAGE:Ljava/lang/String; = "com.htc.android.mail"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DOWNLOAD_ATTACH_SD_FULL:Ljava/lang/String; = "com.htc.android.mail.DownloadAttachmentSDFullDialog"

.field private static final HTC_ACTION_EAS_ACNT_REMOVED:Ljava/lang/String; = "android.intent.action.EAS_ACCOUNT_REMOVED"

.field private static final HTC_ACTION_FAVORITE_CHANGE:Ljava/lang/String; = "android.intent.action.FAVORITE_CHANGE"

.field public static final POLICY_NOT_SUPPORT_UI_CLASSNAME:Ljava/lang/String; = "com.htc.android.mail.easclient.EASPolicyNotSufficientDialog"

.field private static final TAG:Ljava/lang/String; = "EASEventBroadcaster"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static broadcaseForceDefaultAccount(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.force_default_account"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method public static broadcaseResetDefaultAccount(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.reset_default_account"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method public static broadcastAccountLastUpdateTime(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.account_last_update_time"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return-void
.end method

.method public static broadcastEASAccountRemoved(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method public static broadcastMailCleanNotification(Landroid/content/Context;JLcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;Z)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "notiType"
    .parameter "isDeleteAccount"

    .prologue
    .line 59
    sget-object v1, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;->SEND_MAIL:Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster$NotificationType;

    if-ne p3, v1, :cond_1

    .line 60
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASEventBroadcaster"

    const-string v2, "broadcastMailCleanNotification(send_mail)"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.cleanSendErrorNotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    :goto_0
    return-void

    .line 65
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v2, "EASEventBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastMailCleanNotification(all)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p4, :cond_3

    const-string v1, ",isDeleteAccount"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.cleanNotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    const-string v1, "isDeleteAccount"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 65
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method public static broadcastNewMailNotification(Landroid/content/Context;JIJ)V
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "unreadCount"
    .parameter "messageId"

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.new_mail_notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 324
    const-string v1, "unreadCount"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v1, "firstRecordId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method public static broadcastOptionChange(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.eas.mail.optionChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 340
    return-void
.end method

.method public static broadcastPhoneStatus(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "status"

    .prologue
    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.eas.intent.phone_status_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra.phone_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method public static broadcastProgressMessage(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "syncSourceType"
    .parameter "status"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 75
    const-string v1, ""

    .line 76
    .local v1, message:Ljava/lang/String;
    if-ne p1, v3, :cond_2

    .line 77
    const v2, 0x7f0b029c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.eas.progress.message"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, intent:Landroid/content/Intent;
    if-ne p2, v3, :cond_5

    .line 88
    const-string v2, "extra.eas.progress.message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    return-void

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 79
    const v2, 0x7f0b029d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_3
    if-ne p1, v4, :cond_4

    .line 81
    const v2, 0x7f0b029e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 83
    const v2, 0x7f0b029f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 89
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_5
    if-ne p2, v4, :cond_1

    .line 90
    const-string v2, "extra.sync_result"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static broadcastScheduleChange(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.eas.mail.schedulerChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public static broadcastSendMailFailedNotification(Landroid/content/Context;JI)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "errorCode"

    .prologue
    .line 48
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EASEventBroadcaster"

    const-string v2, "broadcastSendMailErrorNotification"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 49
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.sendErrorNotification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 52
    const/16 v1, 0x2eb

    if-ne p3, v1, :cond_2

    .line 53
    sget-boolean v1, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EASEventBroadcaster"

    const-string v2, "broadcastSendMailErrorNotification!!! FULL"

    invoke-static {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 54
    :cond_1
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public static broadcastSyncMailFinish(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.sync_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    return-void
.end method

.method public static broadcastUpdateMailShortcut(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.mail.updateShortcut"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "accountId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    return-void
.end method

.method public static cancelErrorNotification(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 293
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 295
    .local v0, mNotificationManager:Landroid/app/NotificationManager;
    sget v1, Lcom/htc/android/mail/eassvc/common/EASCommon;->hashId:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 296
    return-void
.end method

.method private static checkShowNotification(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "errorCode"

    .prologue
    const/4 v0, 0x1

    .line 265
    sparse-switch p1, :sswitch_data_0

    .line 288
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 284
    :sswitch_1
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_0
        0x1c2 -> :sswitch_1
        0x1c4 -> :sswitch_1
        0x204 -> :sswitch_0
        0x205 -> :sswitch_0
        0x206 -> :sswitch_0
        0x207 -> :sswitch_0
        0x2c8 -> :sswitch_1
        0x2ca -> :sswitch_0
        0x2d2 -> :sswitch_0
        0x320 -> :sswitch_0
        0x32b -> :sswitch_0
        0x32d -> :sswitch_0
        0x3fc -> :sswitch_0
        0x3fd -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController;)V
    .locals 8
    .parameter "context"
    .parameter "exSyncSources"
    .parameter "reqController"

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 103
    sget-boolean v6, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "EASEventBroadcaster"

    const-string v7, "resendSyncEvent(): exSyncSources is null, skip"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v2, 0x0

    .line 107
    .local v2, someSourceRunning:Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v3, status:Landroid/content/ContentValues;
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSourceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/core/SyncSource;

    .line 109
    .local v5, syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    const/4 v4, 0x0

    .line 110
    .local v4, statusCode:I
    invoke-interface {v5}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isPause()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    const/4 v4, 0x2

    .line 112
    const/4 v2, 0x1

    .line 120
    :cond_2
    :goto_2
    invoke-interface {v5}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 113
    :cond_3
    invoke-interface {v5}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    const/4 v4, 0x1

    .line 115
    const/4 v2, 0x1

    goto :goto_2

    .line 116
    :cond_4
    invoke-interface {v5}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isRequestEmpty(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    const/4 v4, 0x2

    .line 118
    const/4 v2, 0x1

    goto :goto_2

    .line 122
    .end local v4           #statusCode:I
    .end local v5           #syncSource:Lcom/htc/android/mail/eassvc/core/SyncSource;
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v6, "intent.htc.mail.eas.sync_status"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "sync.status"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    const-string v6, "exchange.account"

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    .locals 6
    .parameter "context"
    .parameter "syncSource"

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string v4, "EASEventBroadcaster"

    const-string v5, "resendSyncEvent(): Error! SyncSource is null."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v1, 0x0

    .line 137
    .local v1, someSourceRunning:Z
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v2, status:Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 139
    .local v3, statusCode:I
    invoke-interface {p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isPause()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    const/4 v3, 0x2

    .line 141
    const/4 v1, 0x1

    .line 146
    :cond_1
    :goto_1
    invoke-interface {p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v4, "intent.htc.mail.eas.sync_status"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "sync.status"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    const-string v4, "exchange.account"

    invoke-interface {p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-interface {p1}, Lcom/htc/android/mail/eassvc/core/SyncSource;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    const/4 v3, 0x1

    .line 144
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static sendBroadcastAllSyncStart(Landroid/content/Context;ZLcom/htc/android/mail/eassvc/core/MailSyncSource;J)V
    .locals 3
    .parameter "context"
    .parameter "bStart"
    .parameter "mailSyncSource"
    .parameter "accountId"

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.eas.intent.all_sync_start"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "accountId"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    :goto_0
    return-void

    .line 348
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.eas.intent.all_sync_finish"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "accountId"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, onlyDelete:Z
    if-eqz p2, :cond_1

    .line 353
    invoke-virtual {p2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getOnlyDeleteIntentFlag()Z

    move-result v1

    .line 354
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setOnlyDeleteIntentFlag(Z)V

    .line 356
    :cond_1
    const-string v2, "com.htc.eas.intent.delete_mail_finish"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static showPolicyNotSufficientNotificatio(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    .locals 11
    .parameter "context"
    .parameter "exAccount"
    .parameter "provisionDoc"

    .prologue
    const/4 v10, 0x0

    .line 160
    new-instance v3, Landroid/app/Notification;

    const v6, 0x7f020066

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 164
    .local v3, notification:Landroid/app/Notification;
    const/16 v6, 0x3fe

    invoke-static {p0, v6}, Lcom/htc/android/mail/eassvc/core/SyncException;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, text:Ljava/lang/CharSequence;
    const v6, 0x7f0b021f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, subject:Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "com.htc.android.mail"

    const-string v7, "com.htc.android.mail.easclient.EASPolicyNotSufficientDialog"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/high16 v6, 0x3008

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    const-string v6, "mode"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v6, "provisionDoc"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 173
    .local v2, mPendingIntent_DeviceLockError:Landroid/app/PendingIntent;
    invoke-virtual {v3, p0, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 174
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 177
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 180
    .local v1, mNotificationManager:Landroid/app/NotificationManager;
    sget v6, Lcom/htc/android/mail/eassvc/common/EASCommon;->hashId:I

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    long-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 181
    return-void
.end method

.method public static showSyncFailNotification(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V
    .locals 22
    .parameter "context"
    .parameter "exSyncSources"
    .parameter "errorCode"

    .prologue
    .line 185
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 186
    .local v5, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->checkShowNotification(Landroid/content/Context;I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 263
    :goto_0
    return-void

    .line 190
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncException;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, text:Ljava/lang/CharSequence;
    const v18, 0x7f0b021e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 193
    .local v15, subject:Ljava/lang/CharSequence;
    new-instance v14, Landroid/app/Notification;

    const v18, 0x7f020066

    const/16 v19, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 199
    .local v14, notification:Landroid/app/Notification;
    const/16 v18, 0x193

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x191

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 201
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mail/accounts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 202
    .local v17, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 203
    .local v7, intentAccountErr:Landroid/content/Intent;
    const-string v18, "com.htc.android.mail"

    const-string v19, "com.htc.android.mail.easclient.ExchangeSvrSetting"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    const-string v18, "intent.eas.mode.wizard"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 207
    .local v11, mPendingIntent_AccountError:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 208
    iget v0, v14, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->flags:I

    .line 253
    .end local v7           #intentAccountErr:Landroid/content/Intent;
    .end local v11           #mPendingIntent_AccountError:Landroid/app/PendingIntent;
    .end local v17           #uri:Landroid/net/Uri;
    :goto_1
    const-string v18, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 256
    .local v10, mNotificationManager:Landroid/app/NotificationManager;
    const/16 v18, 0x32d

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 257
    sget v18, Lcom/htc/android/mail/eassvc/common/EASCommon;->attachmentHashId:I

    iget-wide v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v10, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 209
    .end local v10           #mNotificationManager:Landroid/app/NotificationManager;
    :cond_2
    const/16 v18, 0x3fc

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 210
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.app.action.SET_NEW_PASSWORD"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v6, intent:Landroid/content/Intent;
    const/high16 v18, 0x3000

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    const/16 v18, 0x0

    const/high16 v19, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 213
    .local v12, mPendingIntent_DeviceLockError:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 214
    iget v0, v14, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 215
    .end local v6           #intent:Landroid/content/Intent;
    .end local v12           #mPendingIntent_DeviceLockError:Landroid/app/PendingIntent;
    :cond_3
    const/16 v18, 0x400

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const/16 v18, 0x3fd

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 217
    :cond_4
    const v18, 0x7f0b0250

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 218
    const v18, 0x7f0b0251

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 219
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v6       #intent:Landroid/content/Intent;
    const-class v18, Lcom/htc/android/mail/easclient/EASPolicyConfirmDialog;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    const-string v18, "provisionDoc"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    const-string v18, "accountInfo"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    const/high16 v18, 0x3000

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    const/16 v18, 0x0

    const/high16 v19, 0x4000

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 225
    .restart local v12       #mPendingIntent_DeviceLockError:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1, v12}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 226
    iget v0, v14, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->flags:I

    goto/16 :goto_1

    .line 227
    .end local v6           #intent:Landroid/content/Intent;
    .end local v12           #mPendingIntent_DeviceLockError:Landroid/app/PendingIntent;
    :cond_5
    const/16 v18, 0x32d

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 229
    const v18, 0x7f0b0311

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 230
    const v18, 0x7f0b0312

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 231
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mail/accounts/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 232
    .restart local v17       #uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v8, intentDiskFull:Landroid/content/Intent;
    const-string v18, "com.htc.android.mail"

    const-string v19, "com.htc.android.mail.DownloadAttachmentSDFullDialog"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/high16 v18, 0x1002

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    const-string v18, "accountId"

    iget-wide v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 236
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 237
    .restart local v11       #mPendingIntent_AccountError:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 238
    iget v0, v14, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->flags:I

    goto/16 :goto_1

    .line 241
    .end local v8           #intentDiskFull:Landroid/content/Intent;
    .end local v11           #mPendingIntent_AccountError:Landroid/app/PendingIntent;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_6
    new-instance v4, Landroid/accounts/Account;

    iget-object v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v4, account:Landroid/accounts/Account;
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v9, intentSettingErr:Landroid/content/Intent;
    const-string v18, "com.htc.android.mail"

    const-string v19, "com.htc.android.mail.easclient.EASClient"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/high16 v18, 0x1080

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    const-string v18, "account"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 246
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 247
    .local v13, mPendingIntent_SettingError:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v15, v1, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 248
    iget v0, v14, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v14, Landroid/app/Notification;->flags:I

    goto/16 :goto_1

    .line 260
    .end local v4           #account:Landroid/accounts/Account;
    .end local v9           #intentSettingErr:Landroid/content/Intent;
    .end local v13           #mPendingIntent_SettingError:Landroid/app/PendingIntent;
    .restart local v10       #mNotificationManager:Landroid/app/NotificationManager;
    :cond_7
    sget v18, Lcom/htc/android/mail/eassvc/common/EASCommon;->hashId:I

    iget-wide v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v10, v0, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
