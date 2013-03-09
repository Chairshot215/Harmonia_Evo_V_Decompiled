.class public Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;
    }
.end annotation


# static fields
.field private static final AVATAR_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGenericAvatar:Landroid/graphics/Bitmap;

.field private mLastSoundPlayedMs:J

.field private mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

.field private final mNotificationLock:Ljava/lang/Object;

.field private mNotificationMgr:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->AVATAR_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    .line 227
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 228
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 240
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 4
    .parameter "jid"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    const/4 v3, 0x3

    .line 448
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 450
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotify for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 454
    :cond_0
    const/4 v0, 0x0

    .line 455
    .local v0, cancelAll:Z
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v1, :cond_2

    .line 461
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    const-string v1, "cancelNotify: mNotificationInfo is null, cancel all"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 464
    :cond_1
    const/4 v0, 0x1

    .line 466
    :cond_2
    if-nez p1, :cond_4

    .line 467
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 468
    const-string v1, "cancelNotify: jid is null, cancel all"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 470
    :cond_3
    const/4 v0, 0x1

    .line 472
    :cond_4
    if-eqz v0, :cond_5

    .line 473
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 486
    :goto_0
    return-void

    .line 477
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 478
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeForUser(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 479
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v3, p2

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 485
    :cond_6
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 481
    :cond_7
    :try_start_1
    const-string v1, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotify: cannot find notification for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)Landroid/app/Notification;
    .locals 13
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentMessage"
    .parameter "notificationIntent"
    .parameter "lightWeightNotify"
    .parameter "settings"
    .parameter "from"
    .parameter "accountId"
    .parameter "avatar"
    .parameter "unreadCount"
    .parameter "allowAlertStyleNotification"

    .prologue
    .line 532
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    invoke-virtual {v9, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p4

    invoke-static {v10, v11, v0, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f020018

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 541
    .local v7, notification:Landroid/app/Notification$Builder;
    const/4 v9, 0x1

    move/from16 v0, p11

    if-le v0, v9, :cond_1

    .line 542
    move/from16 v0, p11

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 545
    :cond_1
    if-eqz p10, :cond_2

    .line 546
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createNotification: set notification\'s icon to the avatar "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p10

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 550
    :cond_2
    if-nez p5, :cond_3

    if-eqz p7, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v9, p8, v9

    if-lez v9, :cond_3

    if-eqz p12, :cond_3

    .line 552
    const-string v9, "popup"

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 554
    .local v5, isAlertStyleNotification:Z
    if-eqz v5, :cond_3

    .line 555
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.google.android.talk.RECEIVE_MESSAGE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "message"

    move-object/from16 v0, p3

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v9, "from"

    move-object/from16 v0, p7

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v9, "accountId"

    move-wide/from16 v0, p8

    invoke-virtual {v4, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 560
    const-string v9, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 562
    invoke-static/range {p7 .. p7}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, bareJid:Ljava/lang/String;
    const-string v9, "username"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const-string v9, "android.intent.extra.INTENT"

    move-object/from16 v0, p4

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 566
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x800

    invoke-static {v9, v10, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 571
    .end local v2           #bareJid:Ljava/lang/String;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #isAlertStyleNotification:Z
    :cond_3
    const/4 v8, 0x0

    .line 572
    .local v8, shouldVibrate:Z
    if-nez p5, :cond_6

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->shouldSuppressSoundNotification()Z

    move-result v9

    if-nez v9, :cond_6

    .line 573
    move-object/from16 v0, p6

    invoke-direct {p0, v7, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z

    move-result v8

    .line 577
    :cond_4
    :goto_0
    const/4 v3, 0x4

    .line 578
    .local v3, defaults:I
    if-eqz v8, :cond_5

    .line 579
    or-int/lit8 v3, v3, 0x2

    .line 581
    :cond_5
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 583
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 584
    .local v6, n:Landroid/app/Notification;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create notification returning: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 585
    return-object v6

    .line 574
    .end local v3           #defaults:I
    .end local v6           #n:Landroid/app/Notification;
    :cond_6
    sget-boolean v9, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v9, :cond_4

    .line 575
    const-string v9, "createNotification: suppress sound notification"

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private decodeAvatar([B)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 700
    if-nez p1, :cond_1

    move-object v0, v9

    .line 732
    :cond_0
    :goto_0
    return-object v0

    .line 703
    :cond_1
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 704
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    move-object v0, v9

    .line 705
    goto :goto_0

    .line 711
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 712
    .local v3, dwidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 714
    .local v4, dheight:I
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 715
    .local v7, res:Landroid/content/res/Resources;
    const v2, 0x1050005

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 717
    .local v11, vwidth:I
    const v2, 0x1050006

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 720
    .local v10, vheight:I
    if-gt v3, v11, :cond_3

    if-le v4, v10, :cond_0

    .line 725
    :cond_3
    int-to-float v2, v11

    int-to-float v6, v3

    div-float/2addr v2, v6

    int-to-float v6, v10

    int-to-float v12, v4

    div-float/2addr v6, v12

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 727
    .local v8, scale:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 728
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 730
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 731
    .local v9, scaled:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v9

    .line 732
    goto :goto_0
.end method

.method private getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 736
    invoke-static {p1, p2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->loadAvatarData(Landroid/database/Cursor;I)[B

    move-result-object v0

    .line 737
    .local v0, rawData:[B
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->decodeAvatar([B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getGenericAvatar()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 78
    .local v0, bmd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    .line 80
    .end local v0           #bmd:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private internalRemoveAllNotifications()V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->cancelNotifications()V

    .line 511
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeAll()V

    .line 513
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static loadAvatarData(Landroid/database/Cursor;I)[B
    .locals 1
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 696
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 741
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StatusBarNotify] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 745
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StatusBarNotify] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method private notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V
    .locals 20
    .parameter "accountId"
    .parameter "from"
    .parameter "nickname"
    .parameter "title"
    .parameter "tickerText"
    .parameter "message"
    .parameter "intent"
    .parameter "lightWeightNotify"
    .parameter "settings"
    .parameter "allowAlertStyleNotification"

    .prologue
    .line 395
    const/16 v16, 0x0

    .line 396
    .local v16, contentTitle:Ljava/lang/String;
    const/4 v15, 0x0

    .line 397
    .local v15, contentMessage:Ljava/lang/String;
    move-object/from16 v19, p8

    .line 398
    .local v19, notificationIntent:Landroid/content/Intent;
    const/4 v13, 0x0

    .line 399
    .local v13, unreadCount:I
    const/4 v12, 0x0

    .line 401
    .local v12, avatar:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v2, :cond_0

    .line 402
    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;-><init>(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    .line 404
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->add(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->getItemForAccount(J)Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    move-result-object v17

    .line 408
    .local v17, item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v16           #contentTitle:Ljava/lang/String;
    .local v4, contentTitle:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mMessage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    .end local v15           #contentMessage:Ljava/lang/String;
    .local v5, contentMessage:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mNotificationIntent:Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 411
    .end local v19           #notificationIntent:Landroid/content/Intent;
    .local v6, notificationIntent:Landroid/content/Intent;
    :try_start_3
    move-object/from16 v0, v17

    iget v13, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    .line 412
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAvatar:Landroid/graphics/Bitmap;

    .line 413
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v17           #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p3

    move-wide/from16 v10, p1

    move/from16 v14, p11

    .line 419
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;JLandroid/graphics/Bitmap;IZ)Landroid/app/Notification;

    move-result-object v18

    .line 431
    .local v18, notification:Landroid/app/Notification;
    if-eqz v18, :cond_2

    .line 432
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    move-wide/from16 v0, p1

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 443
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    move-wide/from16 v0, p1

    long-to-int v3, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 445
    :cond_2
    return-void

    .line 413
    .end local v4           #contentTitle:Ljava/lang/String;
    .end local v5           #contentMessage:Ljava/lang/String;
    .end local v6           #notificationIntent:Landroid/content/Intent;
    .end local v18           #notification:Landroid/app/Notification;
    .restart local v15       #contentMessage:Ljava/lang/String;
    .restart local v16       #contentTitle:Ljava/lang/String;
    .restart local v19       #notificationIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    move-object/from16 v6, v19

    .end local v19           #notificationIntent:Landroid/content/Intent;
    .restart local v6       #notificationIntent:Landroid/content/Intent;
    move-object v5, v15

    .end local v15           #contentMessage:Ljava/lang/String;
    .restart local v5       #contentMessage:Ljava/lang/String;
    move-object/from16 v4, v16

    .end local v16           #contentTitle:Ljava/lang/String;
    .restart local v4       #contentTitle:Ljava/lang/String;
    :goto_1
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    .end local v5           #contentMessage:Ljava/lang/String;
    .end local v6           #notificationIntent:Landroid/content/Intent;
    .restart local v15       #contentMessage:Ljava/lang/String;
    .restart local v17       #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    .restart local v19       #notificationIntent:Landroid/content/Intent;
    :catchall_1
    move-exception v2

    move-object/from16 v6, v19

    .end local v19           #notificationIntent:Landroid/content/Intent;
    .restart local v6       #notificationIntent:Landroid/content/Intent;
    move-object v5, v15

    .end local v15           #contentMessage:Ljava/lang/String;
    .restart local v5       #contentMessage:Ljava/lang/String;
    goto :goto_1

    .end local v6           #notificationIntent:Landroid/content/Intent;
    .restart local v19       #notificationIntent:Landroid/content/Intent;
    :catchall_2
    move-exception v2

    move-object/from16 v6, v19

    .end local v19           #notificationIntent:Landroid/content/Intent;
    .restart local v6       #notificationIntent:Landroid/content/Intent;
    goto :goto_1

    .end local v17           #item:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :catchall_3
    move-exception v2

    goto :goto_1

    .end local v4           #contentTitle:Ljava/lang/String;
    .end local v5           #contentMessage:Ljava/lang/String;
    .end local v6           #notificationIntent:Landroid/content/Intent;
    .restart local v15       #contentMessage:Ljava/lang/String;
    .restart local v16       #contentTitle:Ljava/lang/String;
    .restart local v19       #notificationIntent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v6, v19

    .end local v19           #notificationIntent:Landroid/content/Intent;
    .restart local v6       #notificationIntent:Landroid/content/Intent;
    move-object v5, v15

    .end local v15           #contentMessage:Ljava/lang/String;
    .restart local v5       #contentMessage:Ljava/lang/String;
    move-object/from16 v4, v16

    .end local v16           #contentTitle:Ljava/lang/String;
    .restart local v4       #contentTitle:Ljava/lang/String;
    goto :goto_0
.end method

.method private setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z
    .locals 12
    .parameter "notification"
    .parameter "settings"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 590
    invoke-virtual {p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextRingtoneURI()Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, ringtoneUri:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrateWhen()Ljava/lang/String;

    move-result-object v7

    .line 597
    .local v7, vibrateWhen:Ljava/lang/String;
    const-string v10, "always"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 598
    .local v5, vibrateAlways:Z
    if-nez v5, :cond_3

    const-string v10, "silent"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v6, v8

    .line 599
    .local v6, vibrateSilent:Z
    :goto_0
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 603
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    if-ne v10, v8, :cond_4

    move v3, v8

    .line 606
    .local v3, nowSilent:Z
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v2, 0x0

    .line 607
    .local v2, notificationSoundUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 608
    if-eqz v2, :cond_0

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mLastSoundPlayedMs:J

    .line 612
    :cond_0
    sget-boolean v10, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setRinger: notificationSoundUri = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 616
    :cond_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_6

    if-eqz v3, :cond_6

    :cond_2
    move v1, v8

    .line 617
    .local v1, b:Z
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setRinger returning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; vibrateAlways == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; vibrateSilent == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; nowSilent == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 621
    return v1

    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #b:Z
    .end local v2           #notificationSoundUri:Landroid/net/Uri;
    .end local v3           #nowSilent:Z
    .end local v6           #vibrateSilent:Z
    :cond_3
    move v6, v9

    .line 598
    goto :goto_0

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v6       #vibrateSilent:Z
    :cond_4
    move v3, v9

    .line 603
    goto :goto_1

    .line 606
    .restart local v3       #nowSilent:Z
    :cond_5
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    .restart local v2       #notificationSoundUri:Landroid/net/Uri;
    :cond_6
    move v1, v9

    .line 616
    goto :goto_3
.end method

.method private shouldSuppressSoundNotification()Z
    .locals 4

    .prologue
    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mLastSoundPlayedMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAllNotifications()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->internalRemoveAllNotifications()V

    .line 490
    return-void
.end method

.method public dismissNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 0
    .parameter "buddy"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 517
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 518
    return-void
.end method

.method public dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 2
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 493
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissNotificationsForAccount: account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 498
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v0, :cond_1

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeForAccount(J)Z

    .line 503
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAvatarForContact(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "contact"
    .parameter "accountId"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 654
    if-nez p1, :cond_0

    .line 655
    const-string v0, "GTalkService"

    const-string v1, "getAvatarForContact: null contact!"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_0
    return-object v5

    .line 658
    :cond_0
    new-array v4, v1, [Ljava/lang/String;

    .line 660
    .local v4, selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v0

    .line 662
    sget-object v0, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI_AVATARS_BY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 663
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-static {v7, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 665
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->AVATAR_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 671
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 672
    .local v6, avatar:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 674
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 676
    if-eqz v6, :cond_1

    .line 677
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 678
    .local v11, res:Landroid/content/res/Resources;
    const v0, 0x1050006

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 680
    .local v9, idealIconHeight:I
    const v0, 0x1050005

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 682
    .local v10, idealIconWidth:I
    const/4 v0, 0x1

    invoke-static {v6, v10, v9, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 687
    .end local v9           #idealIconHeight:I
    .end local v10           #idealIconWidth:I
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 692
    :goto_1
    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getGenericAvatar()Landroid/graphics/Bitmap;

    move-result-object v6

    .end local v6           #avatar:Landroid/graphics/Bitmap;
    :cond_2
    move-object v5, v6

    goto :goto_0

    .line 687
    .restart local v6       #avatar:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 690
    :cond_3
    const-string v0, "getAvatarForContact"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 626
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108008a

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 633
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->shouldSuppressSoundNotification()Z

    move-result v0

    if-nez v0, :cond_1

    .line 634
    invoke-direct {p0, v2, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z

    move-result v0

    .line 636
    :goto_0
    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 640
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 641
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 642
    const-string v3, "accountId"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 643
    const-string v3, "username"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f08006e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 650
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v1, p2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 651
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V
    .locals 16
    .parameter "jid"
    .parameter "nickname"
    .parameter "message"
    .parameter "accountId"
    .parameter "username"
    .parameter "groupId"
    .parameter "lightWeightNotify"
    .parameter "settings"
    .parameter "haveMultipleAccounts"

    .prologue
    .line 273
    const-string v2, "off"

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "notifyChat: notification not enabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    if-eqz p9, :cond_2

    .line 279
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "notifyChat: lightWeightNotify"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, bareJid:Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_4

    invoke-static/range {p7 .. p8}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v15

    .line 287
    .local v15, uri:Landroid/net/Uri;
    :goto_1
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v10, v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 288
    .local v10, intent:Landroid/content/Intent;
    const/high16 v2, 0x3400

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    const-string v2, "from"

    move-object/from16 v0, p1

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v2, "accountId"

    move-wide/from16 v0, p4

    invoke-virtual {v10, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 293
    const-string v2, "from_notify"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    const-string v2, "username"

    move-object/from16 v0, p6

    invoke-virtual {v10, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_3

    .line 297
    const-string v2, "is_muc"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 302
    .local v14, resources:Landroid/content/res/Resources;
    if-eqz p11, :cond_5

    const v2, 0x7f080058

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p6, v3, v4

    invoke-virtual {v14, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, title:Ljava/lang/String;
    :goto_2
    const v2, 0x7f080057

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v14, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, snippet:Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    goto/16 :goto_0

    .line 283
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #snippet:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #resources:Landroid/content/res/Resources;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_4
    invoke-static/range {p4 .. p5}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByAccount(J)Landroid/net/Uri;

    move-result-object v15

    goto :goto_1

    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v14       #resources:Landroid/content/res/Resources;
    .restart local v15       #uri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v7, p2

    .line 302
    goto :goto_2
.end method

.method public notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 16
    .parameter "invitation"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getGroupContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v15

    .line 350
    .local v15, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v10, v2, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 351
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v14

    .line 352
    .local v14, roomJid:Ljava/lang/String;
    const-string v2, "from"

    invoke-virtual {v10, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v2, "accountId"

    move-wide/from16 v0, p2

    invoke-virtual {v10, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 354
    const-string v2, "is_muc"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    const-string v2, "muc_inviter"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "muc_password"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v2, "from_notify"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f080055

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 363
    .local v7, title:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    .local v5, inviter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f08005a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 366
    .local v8, snippet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f08005b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 369
    .local v9, dialogMessage:Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-object v6, v5

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    .line 371
    return-void
.end method

.method public notifySubscriptionRequest(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 14
    .parameter "contact"
    .parameter "message"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 320
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getNotifyFriendInvitation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    const-string v2, "notifySubscriptionRequest: setting says no notify for invite"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyInvite: contact="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 329
    :cond_1
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, bareJid:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.intent.action.GTALK_MANAGE_SUBSCRIPTION"

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    .local v10, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/gtalk-contacts"

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v2, "from"

    invoke-virtual {v10, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v2, "accountId"

    move-wide/from16 v0, p3

    invoke-virtual {v10, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    const-string v2, "from_notify"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    const-string v2, "username"

    invoke-virtual {v10, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    move-object v7, p1

    .line 339
    .local v7, title:Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move-wide/from16 v3, p3

    move-object v6, v5

    move-object/from16 v8, p2

    move-object/from16 v9, p2

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V

    goto :goto_0
.end method

.method public onServiceDestroyed()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public removeChatNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 0
    .parameter "jid"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 314
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 315
    return-void
.end method

.method public removeSubscriptionNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 1
    .parameter "jid"
    .parameter "accountId"
    .parameter "settings"

    .prologue
    .line 344
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 345
    return-void
.end method
