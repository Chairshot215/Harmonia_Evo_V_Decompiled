.class public Lcom/android/updater/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field public static final ACU_VAR_PROGRESS:Ljava/lang/String; = "Progress"

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | NotificationUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAcuNotification(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "removeRecord"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelNotification(Landroid/content/Context;)V

    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->removeRecord(Landroid/content/Context;)V

    .line 210
    :cond_0
    return-void
.end method

.method public static cancelCotaNotification(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 278
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelNotification(Landroid/content/Context;)V

    .line 279
    return-void
.end method

.method private static cancelNotification(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/high16 v2, 0x7f02

    .line 32
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 33
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 34
    invoke-static {p0, v2}, Lcom/htc/lockscreen/HtcLSUtility;->removeNotification(Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public static cancelUpdateNotification(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->cancelNotification(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public static notifyAcuDownload(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 8
    .parameter "context"
    .parameter "AcuConfirmIntent"
    .parameter "sound"

    .prologue
    const/high16 v7, 0x7f02

    .line 128
    const-string v5, "from_notify"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const v5, 0x7f060059

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 131
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f06005a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 133
    .local v1, message:Ljava/lang/CharSequence;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 134
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 136
    .local v3, notification:Landroid/app/Notification;
    if-eqz p2, :cond_0

    iget v5, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 137
    :cond_0
    const v5, 0x7f020001

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 138
    const-wide/16 v5, 0x0

    iput-wide v5, v3, Landroid/app/Notification;->when:J

    .line 139
    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 140
    const/16 v5, 0x22

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 141
    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {p0, v5, p1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 143
    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 146
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 147
    .local v0, lsntf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v0, v7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    .line 148
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 149
    invoke-static {p0, v7, v0}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 151
    return-void
.end method

.method public static notifyAcuInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v8, 0x1000

    .line 156
    const-string v6, "Progress"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, progress:Ljava/lang/String;
    const v6, 0x7f06005e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, title:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 159
    const v6, 0x7f06005f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 161
    .local v1, message:Ljava/lang/CharSequence;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 162
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 164
    .local v3, notification:Landroid/app/Notification;
    const v6, 0x7f020001

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 166
    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 167
    const/16 v6, 0x22

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v0, installIntent:Landroid/content/Intent;
    const-class v6, Lcom/android/updater/ui/AcuInstallProgressActivity;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const/4 v6, 0x0

    invoke-static {p0, v6, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, p0, v5, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 175
    const/high16 v6, 0x7f02

    invoke-virtual {v2, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 177
    return-void
.end method

.method public static notifyAcuSuccess(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 182
    const v5, 0x7f06005e

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 183
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f060062

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    .local v0, message:Ljava/lang/CharSequence;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 186
    .local v1, nm:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 188
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x7f020001

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/app/Notification;->when:J

    .line 190
    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 193
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.updater.FOTA_ALERT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, successIntent:Landroid/content/Intent;
    const-string v5, "alert_type"

    const/16 v6, 0x20

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const/high16 v5, 0x1000

    invoke-static {p0, v7, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 196
    const/high16 v5, 0x7f02

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 198
    invoke-static {p0}, Lcom/android/updater/util/NotificationUtil;->removeRecord(Landroid/content/Context;)V

    .line 200
    const-string v5, ""

    invoke-static {p0, v7, v5}, Lcom/android/updater/util/UpdaterUtil;->setTriggerFromIndividualFlag(Landroid/content/Context;ZLjava/lang/String;)V

    .line 202
    return-void
.end method

.method public static notifyCotaDownload(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "sound"

    .prologue
    const/high16 v7, 0x7f02

    .line 224
    const-string v5, "from_notify"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    const v5, 0x7f06008b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 227
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f06008c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 229
    .local v1, message:Ljava/lang/CharSequence;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 230
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 232
    .local v3, notification:Landroid/app/Notification;
    if-eqz p2, :cond_0

    iget v5, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 233
    :cond_0
    const v5, 0x7f020001

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 234
    const-wide/16 v5, 0x0

    iput-wide v5, v3, Landroid/app/Notification;->when:J

    .line 235
    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 236
    const/16 v5, 0x22

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 237
    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {p0, v5, p1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 239
    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 242
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 243
    .local v0, lsntf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v0, v7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    .line 244
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 245
    invoke-static {p0, v7, v0}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 246
    return-void
.end method

.method public static notifyCotaInstall(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "sound"

    .prologue
    const/high16 v7, 0x7f02

    .line 251
    const-string v5, "from_notify"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const v5, 0x7f060093

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 254
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f060094

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 256
    .local v1, message:Ljava/lang/CharSequence;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 257
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 259
    .local v3, notification:Landroid/app/Notification;
    if-eqz p2, :cond_0

    iget v5, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 260
    :cond_0
    const v5, 0x7f020001

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 261
    const-wide/16 v5, 0x0

    iput-wide v5, v3, Landroid/app/Notification;->when:J

    .line 262
    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 263
    const/16 v5, 0x22

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 264
    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {p0, v5, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 267
    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 270
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 271
    .local v0, lsntf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v0, v7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    .line 272
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 273
    invoke-static {p0, v7, v0}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 274
    return-void
.end method

.method public static notifyDownload(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "sound"

    .prologue
    const/high16 v7, 0x7f02

    .line 87
    const-string v5, "from_notify"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const v5, 0x7f06004b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 89
    .local v4, title:Ljava/lang/CharSequence;
    const v5, 0x7f06004c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 91
    .local v1, message:Ljava/lang/CharSequence;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 92
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 94
    .local v3, notification:Landroid/app/Notification;
    if-eqz p2, :cond_0

    iget v5, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/app/Notification;->defaults:I

    .line 95
    :cond_0
    const v5, 0x7f020001

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 96
    const-wide/16 v5, 0x0

    iput-wide v5, v3, Landroid/app/Notification;->when:J

    .line 97
    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 98
    const/16 v5, 0x22

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 99
    const/4 v5, 0x0

    const/high16 v6, 0x1000

    invoke-static {p0, v5, p1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 101
    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.updater.CHECKIN_FINISHED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 108
    .local v0, lsntf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v0, v7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 110
    invoke-static {p0, v7, v0}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 112
    return-void
.end method

.method public static notifyInstallation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.FOTA_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, installIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 118
    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/updater/util/NotificationUtil;->notifyUpdate(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 121
    return-void
.end method

.method public static notifyUpdate(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "sound"

    .prologue
    const/high16 v8, 0x7f02

    .line 47
    const-string v6, "from_notify"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const v6, 0x7f06003d

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 49
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f06003e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 51
    .local v1, message:Ljava/lang/CharSequence;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 52
    .local v2, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 54
    .local v3, notification:Landroid/app/Notification;
    const v6, 0x7f020001

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 55
    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 56
    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 57
    const/16 v6, 0x22

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 58
    const/4 v6, 0x0

    const/high16 v7, 0x1000

    invoke-static {p0, v6, p1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, p0, v5, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 60
    invoke-virtual {v2, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 63
    if-eqz p2, :cond_0

    .line 66
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/android/updater/service/UpdaterPlaySoundService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v4, playSoundServiceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    .end local v4           #playSoundServiceIntent:Landroid/content/Intent;
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.updater.CHECKIN_FINISHED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 78
    .local v0, lsntf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    invoke-virtual {v0, v8}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 80
    invoke-static {p0, v8, v0}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 82
    return-void
.end method

.method private static removeRecord(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 215
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p0}, Lcom/android/updater/db/FOTADetail;->removeAllApkDetail(Landroid/content/ContentResolver;Landroid/content/Context;)V

    .line 216
    return-void
.end method
