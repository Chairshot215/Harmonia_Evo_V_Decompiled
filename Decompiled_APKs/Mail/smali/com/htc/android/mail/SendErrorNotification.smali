.class public Lcom/htc/android/mail/SendErrorNotification;
.super Lcom/htc/android/mail/MailNotification;
.source "SendErrorNotification.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SendErrorNotification"

.field private static sIsShowNotificationCompletedOnBoot:Z


# instance fields
.field private mNum:J

.field private mOutBoxId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/SendErrorNotification;->DEBUG:Z

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/SendErrorNotification;->sIsShowNotificationCompletedOnBoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/htc/android/mail/MailNotification;-><init>()V

    .line 28
    iput-wide v1, p0, Lcom/htc/android/mail/SendErrorNotification;->mNum:J

    .line 29
    iput-wide v1, p0, Lcom/htc/android/mail/SendErrorNotification;->mOutBoxId:J

    .line 34
    iput-object p1, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    .line 35
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/android/mail/MailNotification;->mType:I

    .line 36
    const v0, 0x7f020065

    iput v0, p0, Lcom/htc/android/mail/MailNotification;->mIconResource:I

    .line 37
    iput-wide v1, p0, Lcom/htc/android/mail/MailNotification;->mRowId:J

    .line 38
    const v0, 0x7f0b01cb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTicker:Ljava/lang/String;

    .line 39
    const v0, 0x7f0b01cc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTitle:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/android/mail/SendErrorNotification;->DEBUG:Z

    return v0
.end method

.method public static reShowAllSendErrorNotificaitionInBlockingMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 284
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/SendErrorNotification;->showAllSendErrorNotificaition(Landroid/content/Context;ZZ)V

    .line 285
    return-void
.end method

.method public static showAllSendErrorNotificaition(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 276
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/SendErrorNotification;->showAllSendErrorNotificaition(Landroid/content/Context;ZZ)V

    .line 277
    return-void
.end method

.method public static showAllSendErrorNotificaition(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "createNewThread"
    .parameter "forceReshow"

    .prologue
    .line 288
    if-nez p2, :cond_1

    .line 289
    sget-boolean v1, Lcom/htc/android/mail/SendErrorNotification;->sIsShowNotificationCompletedOnBoot:Z

    if-eqz v1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/mail/SendErrorNotification;->sIsShowNotificationCompletedOnBoot:Z

    .line 296
    :cond_1
    new-instance v0, Lcom/htc/android/mail/SendErrorNotification$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/SendErrorNotification$1;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, runnable:Ljava/lang/Runnable;
    if-eqz p1, :cond_2

    .line 317
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 319
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static showAllSendErrorNotificaitionInBlockingMode(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-static {p0, v0, v0}, Lcom/htc/android/mail/SendErrorNotification;->showAllSendErrorNotificaition(Landroid/content/Context;ZZ)V

    .line 281
    return-void
.end method


# virtual methods
.method public clearNotification(J)I
    .locals 11
    .parameter "accid"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 198
    .local v8, nm:Landroid/app/NotificationManager;
    const-string v0, "SendErrorNotification"

    const-string v1, "clearNotification"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v6, 0x0

    .line 200
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 202
    .local v9, rowId:J
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_accountid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND _type=3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    const-string v0, "SendErrorNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear this accid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "existed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 213
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 215
    const-string v0, "SendErrorNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNotification rowId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/notification/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    :goto_1
    long-to-int v0, v9

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 227
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 207
    :cond_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    :cond_2
    const/4 v0, -0x1

    goto :goto_2

    .line 223
    :catch_0
    move-exception v7

    .line 224
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 222
    .end local v7           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 210
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public createNotification(ZJII)Landroid/app/Notification;
    .locals 8
    .parameter "isFlashEnabled"
    .parameter "accountId"
    .parameter "sound"
    .parameter "vibrate"

    .prologue
    .line 231
    new-instance v1, Landroid/app/Notification;

    iget v4, p0, Lcom/htc/android/mail/MailNotification;->mIconResource:I

    iget-object v5, p0, Lcom/htc/android/mail/MailNotification;->mTicker:Ljava/lang/String;

    iget-wide v6, p0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 233
    .local v1, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    long-to-int v6, p2

    invoke-static {v5, v6}, Lcom/htc/android/mail/MailCommon;->genRequestCode(II)I

    move-result v5

    iget-object v6, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const/high16 v7, 0x800

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 234
    .local v2, pintent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/android/mail/MailNotification;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 235
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 236
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 238
    .local v3, ringerMode:I
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 241
    :cond_0
    const/4 p4, 0x0

    .line 244
    :cond_1
    if-lez p4, :cond_2

    .line 245
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 248
    :cond_2
    if-nez v3, :cond_3

    .line 249
    const/4 p5, 0x0

    .line 251
    :cond_3
    if-lez p5, :cond_4

    .line 252
    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 255
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/htc/android/mail/SendErrorNotification;->flashOnLed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 256
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 257
    const v4, -0xff0100

    iput v4, v1, Landroid/app/Notification;->ledARGB:I

    .line 258
    const/16 v4, 0x1f4

    iput v4, v1, Landroid/app/Notification;->ledOnMS:I

    .line 259
    const/16 v4, 0x7d0

    iput v4, v1, Landroid/app/Notification;->ledOffMS:I

    .line 263
    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/htc/android/mail/SendErrorNotification;->flashOnJogball()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 264
    const-string v4, "SendErrorNotification"

    const-string v5, "enableJogBallLight>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget v4, v1, Landroid/app/Notification;->flags:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 266
    const/4 v4, 0x7

    iput v4, v1, Landroid/app/Notification;->jogMode:I

    .line 270
    :cond_6
    if-lez p5, :cond_7

    .line 271
    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 272
    :cond_7
    return-object v1
.end method

.method public createTarget(Lcom/htc/android/mail/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    const/4 v1, 0x1

    .line 183
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-class v3, Lcom/htc/android/mail/MailListTab;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const/high16 v2, 0x480

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "provider"

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "doCheck"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    iget-object v2, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v3, "_isExchange"

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "_isIMAP4"

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    invoke-static {v3}, Lcom/htc/android/mail/Mail;->isIMAP4(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "mailboxId"

    iget-wide v3, p0, Lcom/htc/android/mail/SendErrorNotification;->mOutBoxId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "accountId"

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v2, "dont_set_last_acct_entry"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNotification(J)I
    .locals 1
    .parameter "accid"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(JI)I

    move-result v0

    return v0
.end method

.method public showNotification(JI)I
    .locals 23
    .parameter "accid"
    .parameter "errorCode"

    .prologue
    .line 50
    const/4 v13, 0x0

    .line 51
    .local v13, isNotifyExisted:Z
    const-wide/16 v5, 0x0

    cmp-long v3, p1, v5

    if-gez v3, :cond_0

    .line 52
    const/4 v3, -0x1

    .line 174
    :goto_0
    return v3

    .line 53
    :cond_0
    const/16 v18, 0x0

    .line 55
    .local v18, notifyCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_accountid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND _type=3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 56
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 58
    sget-boolean v3, Lcom/htc/android/mail/SendErrorNotification;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SendErrorNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this accid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "existed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    const/4 v13, 0x1

    .line 69
    :goto_1
    const/16 v17, 0x0

    .line 72
    .local v17, notification:Landroid/app/Notification;
    invoke-static/range {p1 .. p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v11

    .line 75
    .local v11, account:Lcom/htc/android/mail/Account;
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    .line 76
    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v14

    .line 77
    .local v14, mailboxs:Lcom/htc/android/mail/Mailboxs;
    if-eqz v14, :cond_7

    .line 78
    invoke-virtual {v14}, Lcom/htc/android/mail/Mailboxs;->getOutMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v19

    .line 79
    .local v19, outMailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v19, :cond_2

    .line 80
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/android/mail/SendErrorNotification;->mOutBoxId:J

    .line 95
    :cond_2
    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/SendErrorNotification;->mOutBoxId:J

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v3, v5, v6}, Lcom/htc/android/mail/MailProvider;->getTotalMailNum(JIJ)I

    move-result v3

    int-to-long v5, v3

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/android/mail/SendErrorNotification;->mNum:J

    .line 96
    const-string v3, "SendErrorNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,protocol="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mOutBoxId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/SendErrorNotification;->mOutBoxId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/SendErrorNotification;->mNum:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v3, 0x2eb

    move/from16 v0, p3

    if-ne v0, v3, :cond_b

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const v6, 0x7f0b0313

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const v6, 0x7f0b0314

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mTitle:Ljava/lang/String;

    .line 101
    const-string v3, "SendErrorNotification"

    const-string v5, "Show Mailbox full notification"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/htc/android/mail/SendErrorNotification;->createTarget(Lcom/htc/android/mail/Account;)V

    .line 119
    if-eqz v13, :cond_f

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 120
    const-string v3, "_date"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    .line 121
    const-string v3, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/android/mail/MailNotification;->mRowId:J

    .line 126
    :goto_3
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getEmail(Landroid/content/Context;)Z

    move-result v4

    .line 132
    .local v4, isFlashEnabled:Z
    sget-boolean v3, Lcom/htc/android/mail/Mail;->Hero_Project:Z

    if-nez v3, :cond_4

    .line 134
    const/4 v4, 0x1

    .line 136
    :cond_4
    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->sound()I

    move-result v7

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->vibrate()I

    move-result v8

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/htc/android/mail/SendErrorNotification;->createNotification(ZJII)Landroid/app/Notification;

    move-result-object v17

    .line 140
    if-nez v13, :cond_10

    .line 141
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v22, values:Landroid/content/ContentValues;
    const-string v3, "_accountid"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v3, "_title"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "_desc"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v3, "_date"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v3, "_type"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    move-wide/from16 v0, p1

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/SendErrorNotification;->insertDatabase(JLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    .line 153
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    if-nez v3, :cond_11

    .line 154
    const-string v3, "SendErrorNotification"

    const-string v5, "notify uri is null"

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 61
    .end local v4           #isFlashEnabled:Z
    .end local v11           #account:Lcom/htc/android/mail/Account;
    .end local v14           #mailboxs:Lcom/htc/android/mail/Mailboxs;
    .end local v17           #notification:Landroid/app/Notification;
    .end local v19           #outMailbox:Lcom/htc/android/mail/Mailbox;
    :cond_5
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 64
    :catch_0
    move-exception v12

    .line 65
    .local v12, e:Landroid/os/RemoteException;
    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 83
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v11       #account:Lcom/htc/android/mail/Account;
    .restart local v14       #mailboxs:Lcom/htc/android/mail/Mailboxs;
    .restart local v17       #notification:Landroid/app/Notification;
    :cond_7
    const-string v3, "SendErrorNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailboxs>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz v18, :cond_8

    .line 85
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 89
    .end local v14           #mailboxs:Lcom/htc/android/mail/Mailboxs;
    :cond_9
    const-string v3, "SendErrorNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", account == null or account.del == 1, return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz v18, :cond_a

    .line 91
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 102
    .restart local v14       #mailboxs:Lcom/htc/android/mail/Mailboxs;
    .restart local v19       #outMailbox:Lcom/htc/android/mail/Mailbox;
    :cond_b
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/SendErrorNotification;->mNum:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_d

    .line 103
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/SendErrorNotification;->mNum:J

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_c

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/SendErrorNotification;->mNum:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const v6, 0x7f0b01cb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    goto/16 :goto_2

    .line 106
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/SendErrorNotification;->mNum:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const v6, 0x7f0b01cc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    goto/16 :goto_2

    .line 110
    :cond_d
    if-eqz v18, :cond_e

    .line 111
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 124
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    goto/16 :goto_3

    .line 149
    .restart local v4       #isFlashEnabled:Z
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/notification/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/MailNotification;->mRowId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    .line 150
    const-string v3, "SendErrorNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "we are here2 -------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 158
    :cond_11
    const/4 v15, 0x0

    .line 159
    .local v15, newCursor:Landroid/database/Cursor;
    const-wide/16 v20, 0x0

    .line 161
    .local v20, rowId:J
    :try_start_2
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    .line 164
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 166
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 168
    :cond_12
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 172
    .local v16, nm:Landroid/app/NotificationManager;
    move-wide/from16 v0, v20

    long-to-int v3, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 174
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 162
    .end local v16           #nm:Landroid/app/NotificationManager;
    :catch_1
    move-exception v3

    goto :goto_5
.end method
