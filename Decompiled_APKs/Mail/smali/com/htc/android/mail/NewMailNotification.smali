.class public Lcom/htc/android/mail/NewMailNotification;
.super Lcom/htc/android/mail/MailNotification;
.source "NewMailNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/NewMailNotification$Version;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "NewMailNotification"

.field private static sIsShowNotificationCompletedOnBoot:Z

.field public static sVersion:I


# instance fields
.field mNotifyContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/NewMailNotification;->sIsShowNotificationCompletedOnBoot:Z

    .line 44
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/htc/android/mail/MailNotification;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;JIJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-static/range {p0 .. p5}, Lcom/htc/android/mail/NewMailNotification;->showNotification(Landroid/content/Context;JIJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    return v0
.end method

.method public static declared-synchronized clearNotification(Landroid/content/Context;J)I
    .locals 13
    .parameter "context"
    .parameter "accid"

    .prologue
    .line 297
    const-class v12, Lcom/htc/android/mail/NewMailNotification;

    monitor-enter v12

    :try_start_0
    sget-boolean v0, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NewMailNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNotification: accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 299
    .local v9, nm:Landroid/app/NotificationManager;
    const-string v3, " (_type = 1) "

    .line 300
    .local v3, where:Ljava/lang/String;
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (_accountid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 304
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 305
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 306
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 308
    .local v10, rowId:J
    const-string v0, "_accountid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 310
    .local v6, accountId:J
    :try_start_2
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/notification/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 313
    :goto_1
    long-to-int v0, v10

    :try_start_3
    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 315
    sget v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 317
    invoke-static {p0, v6, v7}, Lcom/htc/android/mail/MailShortcut;->clearMailShortcut(Landroid/content/Context;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 322
    .end local v6           #accountId:J
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #rowId:J
    :catch_0
    move-exception v0

    .line 328
    :cond_3
    :goto_2
    const/4 v0, 0x0

    monitor-exit v12

    return v0

    .line 320
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_4
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 324
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 297
    .end local v3           #where:Ljava/lang/String;
    .end local v9           #nm:Landroid/app/NotificationManager;
    :catchall_1
    move-exception v0

    monitor-exit v12

    throw v0

    .line 311
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #accountId:J
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #nm:Landroid/app/NotificationManager;
    .restart local v10       #rowId:J
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static clearNotificationInLine(Landroid/content/Context;J)I
    .locals 4
    .parameter "context"
    .parameter "accid"

    .prologue
    .line 332
    sget-boolean v1, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NewMailNotification"

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

    .line 333
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 334
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/mail/NewMailNotification$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/android/mail/NewMailNotification$2;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    const/4 v1, 0x0

    return v1
.end method

.method public static createNotification(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;ZJII)Landroid/app/Notification;
    .locals 9
    .parameter "context"
    .parameter "iconResource"
    .parameter "ticker"
    .parameter "currTime"
    .parameter "title"
    .parameter "desc"
    .parameter "target"
    .parameter "deleteIntent"
    .parameter "isFlashEnabled"
    .parameter "accountId"
    .parameter "sound"
    .parameter "vibrate"

    .prologue
    .line 254
    sget-boolean v6, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "NewMailNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createNotification: isFlashEnabled> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sound> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p12

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", vibrate>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p13

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 256
    .local v3, notification:Landroid/app/Notification;
    const/high16 v6, 0x2000

    move-wide/from16 v0, p10

    long-to-int v7, v0

    invoke-static {v6, v7}, Lcom/htc/android/mail/MailCommon;->genRequestCode(II)I

    move-result v6

    const/high16 v7, 0x800

    move-object/from16 v0, p7

    invoke-static {p0, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 257
    .local v4, pintent:Landroid/app/PendingIntent;
    invoke-virtual {v3, p0, p5, p6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 258
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p8

    invoke-static {p0, v6, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 259
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 260
    .local v2, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 262
    .local v5, ringerMode:I
    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 265
    :cond_1
    const/16 p12, 0x0

    .line 268
    :cond_2
    if-lez p12, :cond_3

    .line 269
    invoke-static {p0}, Lcom/htc/android/mail/NewMailNotification;->getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 272
    :cond_3
    if-nez v5, :cond_4

    .line 273
    const/16 p13, 0x0

    .line 275
    :cond_4
    if-lez p13, :cond_5

    .line 276
    iget v6, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 279
    :cond_5
    if-eqz p9, :cond_7

    invoke-static {}, Lcom/htc/android/mail/NewMailNotification;->flashOnLed()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 280
    sget-boolean v6, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "NewMailNotification"

    const-string v7, "enableLedLight>"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_6
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 282
    const v6, -0xff0100

    iput v6, v3, Landroid/app/Notification;->ledARGB:I

    .line 283
    const/16 v6, 0x1f4

    iput v6, v3, Landroid/app/Notification;->ledOnMS:I

    .line 284
    const/16 v6, 0x7d0

    iput v6, v3, Landroid/app/Notification;->ledOffMS:I

    .line 288
    :cond_7
    if-eqz p9, :cond_8

    invoke-static {}, Lcom/htc/android/mail/NewMailNotification;->flashOnJogball()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 289
    const-string v6, "NewMailNotification"

    const-string v7, "enableJogBallLight>new"

    invoke-static {v6, v7}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget v6, v3, Landroid/app/Notification;->flags:I

    const/high16 v7, 0x1

    or-int/2addr v6, v7

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 291
    const/4 v6, 0x7

    iput v6, v3, Landroid/app/Notification;->jogMode:I

    .line 293
    :cond_8
    return-object v3
.end method

.method public static declared-synchronized exist(Landroid/content/Context;J)Z
    .locals 11
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 394
    const-class v10, Lcom/htc/android/mail/NewMailNotification;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 395
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, " (_type = 1) "

    .line 396
    .local v3, where:Ljava/lang/String;
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND (_accountid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    :cond_0
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(*) as total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 401
    .local v7, count:I
    if-eqz v6, :cond_2

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 405
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_2
    if-lez v7, :cond_3

    move v1, v8

    :goto_0
    monitor-exit v10

    return v1

    :cond_3
    move v1, v9

    goto :goto_0

    .line 394
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method private static generateIconResource(Landroid/content/Context;J)I
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 187
    invoke-static {}, Lcom/htc/android/mail/Mail;->isHuxEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 189
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v1

    .line 190
    .local v1, mailAccount:Lcom/htc/android/mail/Account;
    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, provider:Ljava/lang/String;
    const-string v3, "Yahoo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const v3, 0x7f020046

    .line 203
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v1           #mailAccount:Lcom/htc/android/mail/Account;
    .end local v2           #provider:Ljava/lang/String;
    :goto_0
    return v3

    .line 194
    .restart local v0       #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v1       #mailAccount:Lcom/htc/android/mail/Account;
    .restart local v2       #provider:Ljava/lang/String;
    :cond_0
    const-string v3, "AOL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const v3, 0x7f02002e

    goto :goto_0

    .line 196
    :cond_1
    const-string v3, "MSN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    const v3, 0x7f020040

    goto :goto_0

    .line 198
    :cond_2
    const-string v3, "Google"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    const v3, 0x7f02003f

    goto :goto_0

    .line 203
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v1           #mailAccount:Lcom/htc/android/mail/Account;
    .end local v2           #provider:Ljava/lang/String;
    :cond_3
    const v3, 0x7f020064

    goto :goto_0
.end method

.method private static getRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 11
    .parameter "context"

    .prologue
    .line 230
    const/4 v6, 0x0

    .line 231
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 232
    .local v10, soundUri:Landroid/net/Uri;
    const-string v9, ""

    .line 233
    .local v9, soundString:Ljava/lang/String;
    const-string v3, "refType=\'EMail\'"

    .line 235
    .local v3, selectionWithRefType:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.htc.sdm.provider.SDMProvider/setting"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "soundUri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 243
    :cond_0
    if-eqz v6, :cond_1

    .line 244
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_1
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 249
    const/4 v0, 0x5

    invoke-static {p0, v10, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v8

    .line 250
    .local v8, ringtone:Landroid/media/Ringtone;
    invoke-virtual {v8}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 239
    .end local v8           #ringtone:Landroid/media/Ringtone;
    :catch_0
    move-exception v7

    .line 240
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-boolean v0, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "NewMailNotification"

    const-string v1, "Exception happened when getRingtoneUri"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_3
    throw v0
.end method

.method public static reShowAllNewMailNotificaitionInBlockingMode(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/NewMailNotification;->showAllNewMailNotificaition(Landroid/content/Context;ZZ)V

    .line 352
    return-void
.end method

.method public static showAllNewMailNotificaition(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 343
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/NewMailNotification;->showAllNewMailNotificaition(Landroid/content/Context;ZZ)V

    .line 344
    return-void
.end method

.method public static showAllNewMailNotificaition(Landroid/content/Context;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "createNewThread"
    .parameter "forceReshow"

    .prologue
    .line 355
    if-nez p2, :cond_1

    .line 356
    sget-boolean v1, Lcom/htc/android/mail/NewMailNotification;->sIsShowNotificationCompletedOnBoot:Z

    if-eqz v1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/android/mail/NewMailNotification;->sIsShowNotificationCompletedOnBoot:Z

    .line 363
    :cond_1
    sget-boolean v1, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "NewMailNotification"

    const-string v2, "showAllNewMailNotificaition>"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_2
    new-instance v0, Lcom/htc/android/mail/NewMailNotification$3;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/NewMailNotification$3;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, runnable:Ljava/lang/Runnable;
    if-eqz p1, :cond_3

    .line 387
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 389
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static showAllNewMailNotificaitionInBlockingMode(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-static {p0, v0, v0}, Lcom/htc/android/mail/NewMailNotification;->showAllNewMailNotificaition(Landroid/content/Context;ZZ)V

    .line 348
    return-void
.end method

.method private static declared-synchronized showNotification(Landroid/content/Context;JIJ)I
    .locals 36
    .parameter "context"
    .parameter "accid"
    .parameter "newUnread"
    .parameter "firstMessageId"

    .prologue
    .line 58
    const-class v35, Lcom/htc/android/mail/NewMailNotification;

    monitor-enter v35

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    const/4 v4, -0x1

    .line 183
    :goto_0
    monitor-exit v35

    return v4

    .line 60
    :cond_0
    const/16 v29, 0x0

    .line 61
    .local v29, notifyCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 63
    .local v14, currTime:J
    invoke-static/range {p1 .. p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v25

    .line 64
    .local v25, account:Lcom/htc/android/mail/Account;
    if-nez v25, :cond_1

    const/4 v4, -0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    .line 69
    :cond_2
    invoke-static/range {p0 .. p2}, Lcom/htc/android/mail/NewMailNotification;->generateIconResource(Landroid/content/Context;J)I

    move-result v12

    .line 71
    .local v12, iconResource:I
    const v4, 0x7f0b0069

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 72
    .local v16, title:Ljava/lang/String;
    const v4, 0x7f0b01a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, ticker:Ljava/lang/String;
    const/16 v17, 0x0

    .line 75
    .local v17, desc:Ljava/lang/String;
    const/16 v33, 0x0

    .line 78
    .local v33, unread:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailProvider;->sNotificationURI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_accountid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND _type=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 79
    if-nez v29, :cond_3

    const/4 v4, -0x1

    goto :goto_0

    .line 80
    :cond_3
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 82
    const-string v4, "_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 83
    .local v31, rowId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mail/notification/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 84
    .local v30, notifyUri:Landroid/net/Uri;
    const-string v4, "_messageid"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 86
    .local v9, messageId:J
    sget v4, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const-wide/16 v9, -0x1

    .line 88
    :cond_4
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    const-wide v7, 0x7ffffffffffffffaL

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/htc/android/mail/MailCommon;->getUnreadNumber(Landroid/content/Context;JJJ)I

    move-result v33

    .line 89
    if-nez v33, :cond_5

    .line 90
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/htc/android/mail/NewMailNotification;->clearNotification(Landroid/content/Context;J)I

    .line 91
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 92
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 94
    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->updateNumberToNotification(Landroid/content/Context;JI)V

    .line 121
    .end local v9           #messageId:J
    :cond_6
    :goto_1
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 123
    sget-boolean v4, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "NewMailNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new Unread mail count is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_7
    new-instance v18, Landroid/content/Intent;

    const-class v4, Lcom/htc/android/mail/MailListTab;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v18, target:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v4, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v4, 0x400

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 136
    const-string v4, "accountId"

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    const-string v4, "NOT_BACK_TO_INBOX"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    if-eqz v25, :cond_8

    .line 139
    const-string v4, "mailboxId"

    const-wide v5, 0x7ffffffffffffffaL

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    const-string v4, "GO_TO_TAB"

    const-string v5, "tab_inbox"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v4, "dont_set_last_acct_entry"

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x1

    move/from16 v0, v33

    if-le v0, v4, :cond_12

    const v4, 0x7f0b0209

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 146
    invoke-static/range {p0 .. p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getEmail(Landroid/content/Context;)Z

    move-result v20

    .line 147
    .local v20, isFlashEnabled:Z
    sget-boolean v4, Lcom/htc/android/mail/Mail;->Hero_Project:Z

    if-nez v4, :cond_9

    .line 148
    const/16 v20, 0x1

    .line 150
    :cond_9
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->showEmailNotifications()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    if-lez v33, :cond_13

    .line 151
    new-instance v19, Landroid/content/Intent;

    const-string v4, "com.htc.android.mail.intent.action.ACTION_CANCEL_NOTIFIY"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v19, deleteIntent:Landroid/content/Intent;
    const-string v4, "com.htc.android.mail"

    const-string v5, "com.htc.android.mail.mailservice.MailService"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v4, "AccountId"

    const-wide v5, 0x7fffffffffffffffL

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v21

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->sound()I

    move-result v23

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->vibrate()I

    move-result v24

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v24}, Lcom/htc/android/mail/NewMailNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;ZJII)Landroid/app/Notification;

    move-result-object v28

    .line 155
    .local v28, notification:Landroid/app/Notification;
    sget-boolean v4, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "NewMailNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unread email=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_a
    sget-boolean v4, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "NewMailNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "notifyUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_b
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/NotificationManager;

    .line 166
    .local v27, nm:Landroid/app/NotificationManager;
    move-wide/from16 v0, v31

    long-to-int v4, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 168
    invoke-static/range {p0 .. p2}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcut(Landroid/content/Context;J)V

    .line 170
    sget-object v4, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-virtual {v4}, Lcom/htc/android/mail/MailEventBroadcaster;->setMessageChange()V

    .line 171
    sget-object v4, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    .line 174
    new-instance v26, Landroid/content/Intent;

    const-string v4, "android.mail.notification.NotifyNewMail"

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v26, intent:Landroid/content/Intent;
    const-string v4, "accountId"

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    sget-boolean v4, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "NewMailNotification"

    const-string v5, "[ATS][com.htc.android.mail][receive_mail][successful]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 98
    .end local v18           #target:Landroid/content/Intent;
    .end local v19           #deleteIntent:Landroid/content/Intent;
    .end local v20           #isFlashEnabled:Z
    .end local v26           #intent:Landroid/content/Intent;
    .end local v27           #nm:Landroid/app/NotificationManager;
    .end local v28           #notification:Landroid/app/Notification;
    .end local v30           #notifyUri:Landroid/net/Uri;
    .end local v31           #rowId:J
    :cond_d
    if-gtz p3, :cond_f

    .line 99
    sget-boolean v4, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "NewMailNotification"

    const-string v5, "newUnread <= 0, will not create new notification"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_e
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 103
    :cond_f
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v34, values:Landroid/content/ContentValues;
    const-string v4, "_accountid"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v4, "_title"

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "_desc"

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v4, "_date"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v4, "_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v4, "_messageid"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string v4, "_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    move-wide/from16 v0, p1

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/NewMailNotification;->insertDatabase(JLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 112
    .restart local v30       #notifyUri:Landroid/net/Uri;
    if-nez v30, :cond_10

    const/4 v4, -0x1

    goto/16 :goto_0

    .line 113
    :cond_10
    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v31

    .line 114
    .restart local v31       #rowId:J
    sget v4, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 115
    move/from16 v33, p3

    goto/16 :goto_1

    .line 116
    :cond_11
    sget v4, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 117
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v4

    const-wide v6, 0x7ffffffffffffffaL

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/htc/android/mail/MailCommon;->getUnreadNumber(Landroid/content/Context;JJ)I

    move-result v33

    goto/16 :goto_1

    .line 144
    .end local v34           #values:Landroid/content/ContentValues;
    .restart local v18       #target:Landroid/content/Intent;
    :cond_12
    const v4, 0x7f0b0208

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto/16 :goto_2

    .line 157
    .restart local v20       #isFlashEnabled:Z
    :cond_13
    sget-boolean v4, Lcom/htc/android/mail/NewMailNotification;->DEBUG:Z

    if-eqz v4, :cond_14

    const-string v4, "NewMailNotification"

    const-string v5, "no need to notify"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_14
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 58
    .end local v12           #iconResource:I
    .end local v13           #ticker:Ljava/lang/String;
    .end local v14           #currTime:J
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #desc:Ljava/lang/String;
    .end local v18           #target:Landroid/content/Intent;
    .end local v20           #isFlashEnabled:Z
    .end local v25           #account:Lcom/htc/android/mail/Account;
    .end local v30           #notifyUri:Landroid/net/Uri;
    .end local v31           #rowId:J
    .end local v33           #unread:I
    :catchall_0
    move-exception v4

    monitor-exit v35

    throw v4
.end method

.method public static showNotificationInLine(Landroid/content/Context;JIJ)I
    .locals 8
    .parameter "context"
    .parameter "accid"
    .parameter "newUnread"
    .parameter "firstMessageId"

    .prologue
    .line 207
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v7

    .line 208
    .local v7, handler:Landroid/os/Handler;
    new-instance v0, Lcom/htc/android/mail/NewMailNotification$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/android/mail/NewMailNotification$1;-><init>(Landroid/content/Context;JIJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public showNotification(J)I
    .locals 1
    .parameter "accid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method
