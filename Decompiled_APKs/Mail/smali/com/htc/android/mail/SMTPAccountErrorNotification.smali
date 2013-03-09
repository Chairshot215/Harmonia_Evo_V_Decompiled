.class public Lcom/htc/android/mail/SMTPAccountErrorNotification;
.super Lcom/htc/android/mail/MailNotification;
.source "SMTPAccountErrorNotification.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "SMTPAccountErrorNotification"

.field private static sIsShowNotificationCompletedOnBoot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/SMTPAccountErrorNotification;->DEBUG:Z

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/SMTPAccountErrorNotification;->sIsShowNotificationCompletedOnBoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x7f0b01cb

    .line 31
    invoke-direct {p0}, Lcom/htc/android/mail/MailNotification;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/MailNotification;->mType:I

    .line 34
    const v0, 0x7f020065

    iput v0, p0, Lcom/htc/android/mail/MailNotification;->mIconResource:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/MailNotification;->mRowId:J

    .line 36
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTicker:Ljava/lang/String;

    .line 37
    const v0, 0x7f0b01cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/MailNotification;->mTitle:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/android/mail/SMTPAccountErrorNotification;->DEBUG:Z

    return v0
.end method

.method public static reShowAllSMTPAccountErrorNotificaitionInBlockingMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showAllSMTPAccountErrorNotificaition(Landroid/content/Context;ZZ)V

    .line 237
    return-void
.end method

.method public static showAllSMTPAccountErrorNotificaition(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 228
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showAllSMTPAccountErrorNotificaition(Landroid/content/Context;ZZ)V

    .line 229
    return-void
.end method

.method public static showAllSMTPAccountErrorNotificaition(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "createNewThread"
    .parameter "forceReshow"

    .prologue
    .line 240
    if-nez p2, :cond_1

    .line 241
    sget-boolean v1, Lcom/htc/android/mail/SMTPAccountErrorNotification;->sIsShowNotificationCompletedOnBoot:Z

    if-eqz v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/mail/SMTPAccountErrorNotification;->sIsShowNotificationCompletedOnBoot:Z

    .line 248
    :cond_1
    new-instance v0, Lcom/htc/android/mail/SMTPAccountErrorNotification$2;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/SMTPAccountErrorNotification$2;-><init>(Landroid/content/Context;)V

    .line 266
    .local v0, runnable:Ljava/lang/Runnable;
    if-eqz p1, :cond_2

    .line 267
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 269
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static showAllSMTPAccountErrorNotificaitionInBlockingMode(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-static {p0, v0, v0}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showAllSMTPAccountErrorNotificaition(Landroid/content/Context;ZZ)V

    .line 233
    return-void
.end method


# virtual methods
.method public clearNotification(J)I
    .locals 10
    .parameter "accid"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 145
    .local v7, nm:Landroid/app/NotificationManager;
    const/4 v6, 0x0

    .line 146
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 148
    .local v8, rowId:J
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

    const-string v4, " AND _type=2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    const-string v0, "SMTPAccountErrorNotification"

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
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 162
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/notification/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :goto_1
    long-to-int v0, v8

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 169
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 153
    :cond_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    const/4 v0, -0x1

    goto :goto_2

    .line 166
    :catch_0
    move-exception v0

    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public clearNotificationInLine(J)I
    .locals 4
    .parameter "accid"

    .prologue
    .line 173
    sget-boolean v1, Lcom/htc/android/mail/SMTPAccountErrorNotification;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SMTPAccountErrorNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearNotificationInLine: accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 175
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/mail/SMTPAccountErrorNotification$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/android/mail/SMTPAccountErrorNotification$1;-><init>(Lcom/htc/android/mail/SMTPAccountErrorNotification;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    const/4 v1, 0x0

    return v1
.end method

.method public createNotification(ZII)Landroid/app/Notification;
    .locals 8
    .parameter "isFlashEnabled"
    .parameter "sound"
    .parameter "vibrate"

    .prologue
    .line 184
    new-instance v1, Landroid/app/Notification;

    iget v4, p0, Lcom/htc/android/mail/MailNotification;->mIconResource:I

    iget-object v5, p0, Lcom/htc/android/mail/MailNotification;->mTicker:Ljava/lang/String;

    iget-wide v6, p0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 185
    .local v1, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const/high16 v7, 0x800

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 186
    .local v2, pintent:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/android/mail/MailNotification;->mTitle:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 187
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 188
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 190
    .local v3, ringerMode:I
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 193
    :cond_0
    const/4 p2, 0x0

    .line 196
    :cond_1
    if-lez p2, :cond_2

    .line 197
    iget-object v4, p0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 200
    :cond_2
    if-nez v3, :cond_3

    .line 201
    const/4 p3, 0x0

    .line 203
    :cond_3
    if-lez p3, :cond_4

    .line 204
    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 207
    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->flashOnLed()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 208
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 209
    const v4, -0xff0100

    iput v4, v1, Landroid/app/Notification;->ledARGB:I

    .line 210
    const/16 v4, 0x1f4

    iput v4, v1, Landroid/app/Notification;->ledOnMS:I

    .line 211
    const/16 v4, 0x7d0

    iput v4, v1, Landroid/app/Notification;->ledOffMS:I

    .line 215
    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->flashOnJogball()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 216
    const-string v4, "SMTPAccountErrorNotification"

    const-string v5, "enableJogBallLight>"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget v4, v1, Landroid/app/Notification;->flags:I

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 218
    const/4 v4, 0x7

    iput v4, v1, Landroid/app/Notification;->jogMode:I

    .line 222
    :cond_6
    if-lez p3, :cond_7

    .line 223
    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 224
    :cond_7
    return-object v1
.end method

.method public showNotification(J)I
    .locals 20
    .parameter "accid"

    .prologue
    .line 44
    const/4 v11, 0x0

    .line 45
    .local v11, isNotifyExisted:Z
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 46
    const/4 v3, -0x1

    .line 140
    :goto_0
    return v3

    .line 47
    :cond_0
    const/4 v15, 0x0

    .line 49
    .local v15, notifyCursor:Landroid/database/Cursor;
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

    const-string v7, " AND _type=2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 50
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 52
    sget-boolean v3, Lcom/htc/android/mail/SMTPAccountErrorNotification;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SMTPAccountErrorNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "this accid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "existed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_1
    const/4 v11, 0x1

    .line 60
    :goto_1
    const/4 v14, 0x0

    .line 62
    .local v14, notification:Landroid/app/Notification;
    invoke-static/range {p1 .. p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v9

    .line 75
    .local v9, account:Lcom/htc/android/mail/Account;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/accounts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 76
    .local v18, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-class v6, Lcom/htc/android/mail/ecEditAccount;

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const/high16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v4, "provider"

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v4, "doCheck"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v5, "_isExchange"

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_8

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mTarget:Landroid/content/Intent;

    const-string v4, "_isIMAP4"

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v5

    invoke-static {v5}, Lcom/htc/android/mail/Mail;->isIMAP4(I)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    if-eqz v11, :cond_9

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 84
    const-string v3, "_desc"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    .line 85
    const-string v3, "_date"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    .line 86
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailNotification;->mRowId:J

    .line 94
    :cond_2
    :goto_3
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_3
    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->showEmailNotifications()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getEmail(Landroid/content/Context;)Z

    move-result v10

    .line 98
    .local v10, isFlashEnabled:Z
    sget-boolean v3, Lcom/htc/android/mail/Mail;->Hero_Project:Z

    if-nez v3, :cond_4

    .line 100
    const/4 v10, 0x1

    .line 102
    :cond_4
    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->sound()I

    move-result v3

    invoke-virtual {v9}, Lcom/htc/android/mail/Account;->vibrate()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3, v4}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->createNotification(ZII)Landroid/app/Notification;

    move-result-object v14

    .line 111
    if-nez v11, :cond_c

    .line 112
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "_accountid"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    const-string v3, "_title"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailNotification;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "_desc"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v3, "_date"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v3, "_type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    move-wide/from16 v0, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->insertDatabase(JLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    .line 123
    .end local v19           #values:Landroid/content/ContentValues;
    :goto_4
    const/4 v12, 0x0

    .line 124
    .local v12, newCursor:Landroid/database/Cursor;
    const-wide/16 v16, 0x0

    .line 126
    .local v16, rowId:J
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 129
    :goto_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 134
    :cond_5
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 138
    .local v13, nm:Landroid/app/NotificationManager;
    move-wide/from16 v0, v16

    long-to-int v3, v0

    invoke-virtual {v13, v3, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 140
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 55
    .end local v9           #account:Lcom/htc/android/mail/Account;
    .end local v10           #isFlashEnabled:Z
    .end local v12           #newCursor:Landroid/database/Cursor;
    .end local v13           #nm:Landroid/app/NotificationManager;
    .end local v14           #notification:Landroid/app/Notification;
    .end local v16           #rowId:J
    .end local v18           #uri:Landroid/net/Uri;
    :cond_7
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 57
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 80
    .restart local v9       #account:Lcom/htc/android/mail/Account;
    .restart local v14       #notification:Landroid/app/Notification;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 89
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/htc/android/mail/MailNotification;->mCurrTime:J

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/MailNotification;->mNotifyContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mDesc:Ljava/lang/String;

    goto/16 :goto_3

    .line 105
    :cond_a
    sget-boolean v3, Lcom/htc/android/mail/SMTPAccountErrorNotification;->DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "SMTPAccountErrorNotification"

    const-string v4, "no need to notify"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_b
    const/4 v3, -0x1

    goto/16 :goto_0

    .line 120
    .restart local v10       #isFlashEnabled:Z
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/notification/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/MailNotification;->mRowId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/MailNotification;->mNotifyUri:Landroid/net/Uri;

    goto/16 :goto_4

    .line 127
    .restart local v12       #newCursor:Landroid/database/Cursor;
    .restart local v16       #rowId:J
    :catch_1
    move-exception v3

    goto/16 :goto_5
.end method
