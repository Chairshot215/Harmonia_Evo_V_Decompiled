.class public Lcom/htc/android/mail/eassvc/mail/MailManager;
.super Ljava/lang/Object;
.source "MailManager.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSyncOptions:Lcom/htc/android/mail/eassvc/pim/EASOptions;

.field private mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

.field m_cal:Ljava/util/Calendar;

.field private mnAccountId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/MailSyncSource;)V
    .locals 3
    .parameter "context"
    .parameter "mailSyncSource"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    .line 2100
    const-string v0, "GMT+0000"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->m_cal:Ljava/util/Calendar;

    .line 78
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    .line 80
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    .line 81
    invoke-virtual {p2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getAccountId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    .line 82
    new-instance v0, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    .line 83
    return-void
.end method

.method private addOrUpdateMail(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;)Ljava/util/ArrayList;
    .locals 43
    .parameter "mailboxId"
    .parameter "syncKey"
    .parameter "easEmail"
    .parameter "msgTable"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            "Landroid/net/Uri;",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1294
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "> addOrUpdateMail"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1295
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 1296
    .local v36, startTime:J
    const/4 v13, 0x0

    .line 1297
    .local v13, attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    instance-of v5, v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 1298
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    check-cast v13, Ljava/util/ArrayList;

    .line 1301
    .restart local v13       #attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v0, p1

    invoke-static {v5, v6, v0, v1}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v38

    .line 1302
    .local v38, summariesUri:Landroid/net/Uri;
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addOrUpdateMail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1304
    :cond_2
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v30, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v16, 0x0

    .line 1306
    .local v16, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v32, 0x0

    .line 1308
    .local v32, providerResult:[Landroid/content/ContentProviderResult;
    const/16 v17, 0x0

    .line 1310
    .local v17, cur:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCheckPoint()V

    .line 1312
    const-wide/16 v39, 0x0

    .line 1313
    .local v39, updateId:J
    const/16 v28, 0x0

    .line 1314
    .local v28, mailExist:Z
    new-instance v31, Lcom/htc/android/mail/eassvc/mail/MailItem;

    invoke-direct/range {v31 .. v31}, Lcom/htc/android/mail/eassvc/mail/MailItem;-><init>()V

    .line 1316
    .local v31, pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/mail/MailManager;->populatePIMItem(JLcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)V

    .line 1319
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_account=%d AND _uid=\'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    move-object/from16 v0, v31

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mUid:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1320
    .local v8, existWhere:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1321
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1322
    const/16 v28, 0x1

    .line 1323
    const-string v5, "_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 1329
    :cond_3
    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getMessagesCV()Landroid/content/ContentValues;

    move-result-object v18

    .line 1330
    .local v18, cvMessages:Landroid/content/ContentValues;
    if-nez v18, :cond_5

    .line 1331
    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "message content valuse is null"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1332
    const/4 v13, 0x0

    .line 1485
    .end local v13           #attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1486
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1491
    .end local v8           #existWhere:Ljava/lang/String;
    .end local v18           #cvMessages:Landroid/content/ContentValues;
    .end local v28           #mailExist:Z
    .end local v31           #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    .end local v39           #updateId:J
    :cond_4
    :goto_1
    return-object v13

    .line 1335
    .restart local v8       #existWhere:Ljava/lang/String;
    .restart local v13       #attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    .restart local v18       #cvMessages:Landroid/content/ContentValues;
    .restart local v28       #mailExist:Z
    .restart local v31       #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    .restart local v39       #updateId:J
    :cond_5
    :try_start_1
    const-string v5, "_synckey"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v5, "_notaddTrack"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    const-string v5, "_del"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1339
    if-eqz v28, :cond_6

    const-wide/16 v5, 0x0

    cmp-long v5, v39, v5

    if-lez v5, :cond_6

    .line 1340
    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "use update instead of insert message"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1341
    const-string v5, "_mailboxId"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {v38 .. v38}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v15

    .line 1343
    .local v15, build:Landroid/net/Uri$Builder;
    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1344
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    .line 1345
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1346
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1360
    .end local v15           #build:Landroid/net/Uri$Builder;
    :goto_2
    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getPartsBodyCV()Landroid/content/ContentValues;

    move-result-object v20

    .line 1361
    .local v20, cvPartsMailBody:Landroid/content/ContentValues;
    if-nez v20, :cond_9

    .line 1362
    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "part content value is null"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1363
    const/4 v13, 0x0

    .line 1485
    .end local v13           #attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 1348
    .end local v20           #cvPartsMailBody:Landroid/content/ContentValues;
    .restart local v13       #attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    :cond_6
    if-eqz p5, :cond_8

    .line 1349
    :try_start_2
    invoke-static/range {p5 .. p5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    .line 1353
    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1354
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1471
    .end local v8           #existWhere:Ljava/lang/String;
    .end local v18           #cvMessages:Landroid/content/ContentValues;
    .end local v28           #mailExist:Z
    .end local v31           #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    .end local v39           #updateId:J
    :catch_0
    move-exception v21

    .line 1474
    .local v21, e:Lcom/htc/android/mail/eassvc/core/SyncException;
    :try_start_3
    throw v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1485
    .end local v21           #e:Lcom/htc/android/mail/eassvc/core/SyncException;
    :catchall_0
    move-exception v5

    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1486
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1485
    :cond_7
    throw v5

    .line 1351
    .restart local v8       #existWhere:Ljava/lang/String;
    .restart local v18       #cvMessages:Landroid/content/ContentValues;
    .restart local v28       #mailExist:Z
    .restart local v31       #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    .restart local v39       #updateId:J
    :cond_8
    :try_start_4
    invoke-static/range {v38 .. v38}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    goto :goto_3

    .line 1366
    .restart local v20       #cvPartsMailBody:Landroid/content/ContentValues;
    :cond_9
    if-eqz v28, :cond_c

    const-wide/16 v5, 0x0

    cmp-long v5, v39, v5

    if-lez v5, :cond_c

    .line 1367
    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "use update instead of insert mailbody"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_message=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v39

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND _filename=\'\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1370
    .local v14, bodyWhere:Ljava/lang/String;
    const-string v5, "_message"

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    sget-object v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    .line 1373
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1374
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1375
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    .end local v14           #bodyWhere:Ljava/lang/String;
    :cond_a
    :goto_4
    invoke-virtual/range {v31 .. v31}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getAttachmentSize()I

    move-result v29

    .line 1400
    .local v29, nAttachCount:I
    const/4 v12, 0x0

    .line 1401
    .local v12, attachFlag:[Z
    if-lez v29, :cond_b

    .line 1402
    move/from16 v0, v29

    new-array v12, v0, [Z

    .line 1405
    :cond_b
    const/16 v26, 0x0

    .local v26, j:I
    :goto_5
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 1406
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailItem;->getPartsAttachCV(I)Landroid/content/ContentValues;

    move-result-object v19

    .line 1407
    .local v19, cvPartsAttach:Landroid/content/ContentValues;
    if-nez v19, :cond_e

    .line 1405
    :goto_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 1377
    .end local v12           #attachFlag:[Z
    .end local v19           #cvPartsAttach:Landroid/content/ContentValues;
    .end local v26           #j:I
    .end local v29           #nAttachCount:I
    :cond_c
    sget-object v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    .line 1378
    const-string v5, "_message"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1380
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    if-eqz v5, :cond_d

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    const-string v6, "text/html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1381
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1382
    const-string v5, "_mimetype"

    const-string v6, "text/html"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v5, "_text"

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1385
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 1475
    .end local v8           #existWhere:Ljava/lang/String;
    .end local v18           #cvMessages:Landroid/content/ContentValues;
    .end local v20           #cvPartsMailBody:Landroid/content/ContentValues;
    .end local v28           #mailExist:Z
    .end local v31           #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    .end local v39           #updateId:J
    :catch_1
    move-exception v21

    .line 1477
    .local v21, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_5
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;Lcom/htc/android/mail/eassvc/core/SyncSource;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v35

    .line 1478
    .local v35, se:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual/range {v35 .. v35}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v5

    const/16 v6, 0x32b

    if-ne v5, v6, :cond_19

    .line 1479
    throw v35
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1387
    .end local v21           #e:Ljava/lang/Exception;
    .end local v35           #se:Lcom/htc/android/mail/eassvc/core/SyncException;
    .restart local v8       #existWhere:Ljava/lang/String;
    .restart local v18       #cvMessages:Landroid/content/ContentValues;
    .restart local v20       #cvPartsMailBody:Landroid/content/ContentValues;
    .restart local v28       #mailExist:Z
    .restart local v31       #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    .restart local v39       #updateId:J
    :cond_d
    :try_start_6
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    if-eqz v5, :cond_a

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1388
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1389
    const-string v5, "_text"

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1391
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1411
    .restart local v12       #attachFlag:[Z
    .restart local v19       #cvPartsAttach:Landroid/content/ContentValues;
    .restart local v26       #j:I
    .restart local v29       #nAttachCount:I
    :cond_e
    if-eqz v28, :cond_f

    const-wide/16 v5, 0x0

    cmp-long v5, v39, v5

    if-lez v5, :cond_f

    .line 1412
    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "use update instead of insert attach"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_message=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v39

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND _filename=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1415
    .local v11, attWhere:Ljava/lang/String;
    const-string v5, "_message"

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    sget-object v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    .line 1418
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1419
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1420
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1422
    .end local v11           #attWhere:Ljava/lang/String;
    :cond_f
    sget-object v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    .line 1423
    const-string v5, "_message"

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1424
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1425
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    const/4 v5, 0x1

    aput-boolean v5, v12, v26

    goto/16 :goto_6

    .line 1434
    .end local v19           #cvPartsAttach:Landroid/content/ContentValues;
    :cond_10
    if-eqz v30, :cond_11

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_11

    .line 1435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "mail"

    move-object/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v32

    .line 1439
    :cond_11
    if-eqz p6, :cond_12

    if-eqz v32, :cond_12

    move-object/from16 v0, v32

    array-length v5, v0

    if-lez v5, :cond_12

    .line 1440
    const/4 v5, 0x0

    aget-object v33, v32, v5

    .line 1441
    .local v33, result:Landroid/content/ContentProviderResult;
    if-eqz v33, :cond_15

    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v5, :cond_15

    .line 1442
    move-object/from16 v0, v33

    iget-object v5, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 1443
    .local v24, id:J
    const-wide/16 v5, -0x1

    cmp-long v5, v24, v5

    if-eqz v5, :cond_12

    .line 1444
    move-wide/from16 v0, v24

    move-object/from16 v2, p6

    iput-wide v0, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;->firstRecordId:J

    .line 1454
    .end local v24           #id:J
    .end local v33           #result:Landroid/content/ContentProviderResult;
    :cond_12
    :goto_7
    if-eqz v32, :cond_17

    move-object/from16 v0, v32

    array-length v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_17

    if-eqz v12, :cond_17

    array-length v5, v12

    if-lez v5, :cond_17

    .line 1456
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "processing attachList"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1458
    :cond_13
    move-object/from16 v0, v32

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v32, v5

    iget-object v0, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v34, v0

    .line 1459
    .local v34, resultUri:Landroid/net/Uri;
    if-eqz v34, :cond_16

    .line 1460
    invoke-static/range {v34 .. v34}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 1461
    .restart local v24       #id:J
    const/16 v27, 0x0

    .local v27, k:I
    :goto_8
    array-length v5, v12

    move/from16 v0, v27

    if-ge v0, v5, :cond_17

    .line 1462
    aget-boolean v5, v12, v27

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 1463
    move/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->id:J

    .line 1461
    :cond_14
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1446
    .end local v24           #id:J
    .end local v27           #k:I
    .end local v34           #resultUri:Landroid/net/Uri;
    .restart local v33       #result:Landroid/content/ContentProviderResult;
    :cond_15
    if-eqz v28, :cond_12

    const-wide/16 v5, 0x0

    cmp-long v5, v39, v5

    if-lez v5, :cond_12

    .line 1447
    move-wide/from16 v0, v39

    move-object/from16 v2, p6

    iput-wide v0, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;->firstRecordId:J

    goto :goto_7

    .line 1467
    .end local v33           #result:Landroid/content/ContentProviderResult;
    .restart local v34       #resultUri:Landroid/net/Uri;
    :cond_16
    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "processing attachList, resultUri is null"

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1485
    .end local v34           #resultUri:Landroid/net/Uri;
    :cond_17
    if-eqz v17, :cond_18

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_18

    .line 1486
    .end local v8           #existWhere:Ljava/lang/String;
    .end local v12           #attachFlag:[Z
    .end local v18           #cvMessages:Landroid/content/ContentValues;
    .end local v20           #cvPartsMailBody:Landroid/content/ContentValues;
    .end local v26           #j:I
    .end local v28           #mailExist:Z
    .end local v29           #nAttachCount:I
    .end local v31           #pimItem:Lcom/htc/android/mail/eassvc/mail/MailItem;
    .end local v39           #updateId:J
    :goto_9
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1489
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1490
    .local v22, endTime:J
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "< addOrUpdateMail: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v41, v22, v36

    move-wide/from16 v0, v41

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 1482
    .end local v22           #endTime:J
    .restart local v21       #e:Ljava/lang/Exception;
    .restart local v35       #se:Lcom/htc/android/mail/eassvc/core/SyncException;
    :cond_19
    :try_start_7
    const-string v5, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-object/from16 v0, v21

    invoke-static {v5, v6, v7, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1485
    if-eqz v17, :cond_18

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_9
.end method

.method private checkMoveCommandValid(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;)Z
    .locals 5
    .parameter "messageId"
    .parameter "uid"
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v2, 0x0

    .line 699
    if-eqz p4, :cond_0

    iget-object v3, p4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v2

    .line 701
    :cond_1
    if-eqz p5, :cond_0

    iget-object v3, p5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 703
    iget-object v3, p4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    iget-object v4, p5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;-><init>()V

    .line 705
    .local v0, moveItem:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    iput-wide p1, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    .line 706
    iput-object p3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    .line 707
    iget-object v3, p4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldServerId:Ljava/lang/String;

    .line 708
    iget-object v3, p5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldServerId:Ljava/lang/String;

    .line 710
    new-instance v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct {v1}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V

    .line 711
    .local v1, moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->setMoveMailFlag(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;I)Z

    goto :goto_0

    .line 716
    .end local v0           #moveItem:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    .end local v1           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static delMoveSuccessButNotAddMail(JLjava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 21
    .parameter "accountId"
    .parameter "collId"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, dlMsgSvrId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 147
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 148
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v18, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v10, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_uid"

    aput-object v6, v4, v3

    .line 152
    .local v4, proj:[Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_collectionId=\'%s\' AND _accountId=%d AND _param=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object p2, v7, v19

    const/16 v19, 0x1

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v7, v19

    const/16 v19, 0x2

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v7, v19

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, where:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 154
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 189
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    return-void

    .line 159
    :cond_2
    :try_start_1
    const-string v3, "_uid"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, uid:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 163
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .end local v17           #uid:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 164
    .restart local v17       #uid:Ljava/lang/String;
    if-nez p3, :cond_5

    .line 165
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 189
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v17           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 190
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_4
    throw v3

    .line 167
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v17       #uid:Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .line 168
    .local v13, found:Z
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 169
    .local v16, msgSvrId:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 170
    const/4 v13, 0x1

    .line 174
    .end local v16           #msgSvrId:Ljava/lang/String;
    :cond_7
    if-nez v13, :cond_3

    .line 175
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    .end local v13           #found:Z
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 181
    const-string v3, ","

    const/4 v6, 0x1

    invoke-static {v10, v3, v6}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 182
    .local v11, delSeq:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_uid in (%s) AND _account=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v11, v7, v19

    const/16 v19, 0x1

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v7, v19

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 183
    .local v12, delWhere:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MESSAGES_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v12, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 184
    .local v8, count:I
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "MailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v0, p0

    invoke-static {v3, v0, v1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 187
    .end local v8           #count:I
    .end local v11           #delSeq:Ljava/lang/String;
    .end local v12           #delWhere:Ljava/lang/String;
    :cond_9
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0
.end method

.method private formatDateReceived(Ljava/lang/String;)J
    .locals 14
    .parameter "exchgFormat"

    .prologue
    .line 2105
    if-nez p1, :cond_0

    .line 2106
    const-string v0, "MailManager"

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "formatDateReceived failed: parameter is null"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2107
    const-wide/16 v12, -0x1

    .line 2135
    :goto_0
    return-wide v12

    .line 2110
    :cond_0
    const-wide/16 v12, -0x1

    .line 2113
    .local v12, mailTime:J
    :try_start_0
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2114
    .local v7, Date_Time:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v7, v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2115
    .local v8, Date_split:[Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, v7, v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2116
    .local v10, Time_split:[Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v0, v10, v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2122
    .local v9, Second_split:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->m_cal:Ljava/util/Calendar;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v8, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v3, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v10, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v9, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2129
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->m_cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 2130
    const-wide/16 v0, 0x3e8

    div-long v0, v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long v12, v0, v2

    goto :goto_0

    .line 2131
    .end local v7           #Date_Time:[Ljava/lang/String;
    .end local v8           #Date_split:[Ljava/lang/String;
    .end local v9           #Second_split:[Ljava/lang/String;
    .end local v10           #Time_split:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 2132
    .local v11, e:Ljava/lang/Exception;
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailManager"

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatDateReceived() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2133
    :cond_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private getFolderType(Ljava/lang/String;)I
    .locals 8
    .parameter "type"

    .prologue
    .line 2700
    const/4 v1, -0x1

    .line 2702
    .local v1, ret:I
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 2710
    .end local v1           #ret:I
    .local v2, ret:I
    :goto_0
    return v2

    .line 2705
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 2710
    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_0

    .line 2706
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catch_0
    move-exception v0

    .line 2707
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MailManager"

    iget-wide v4, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not convert type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2708
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getMailbox(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .locals 4
    .parameter "collectionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;",
            ">;)",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;"
        }
    .end annotation

    .prologue
    .line 2139
    .local p2, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_2

    .line 2140
    :cond_0
    const/4 v2, 0x0

    .line 2150
    :cond_1
    :goto_0
    return-object v2

    .line 2142
    :cond_2
    const/4 v2, 0x0

    .line 2143
    .local v2, mailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;

    .line 2144
    .local v1, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2146
    move-object v2, v1

    .line 2147
    goto :goto_0
.end method

.method private isFolderEnable(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)I
    .locals 4
    .parameter "collection"

    .prologue
    const/4 v2, 0x1

    .line 2636
    if-nez p1, :cond_1

    move v1, v2

    .line 2656
    :cond_0
    :goto_0
    return v1

    .line 2640
    :cond_1
    const/4 v1, 0x1

    .line 2642
    .local v1, enableSync:I
    :try_start_0
    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    if-nez v3, :cond_2

    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    if-nez v3, :cond_2

    .line 2643
    const/4 v1, 0x0

    goto :goto_0

    .line 2644
    :cond_2
    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    if-ne v3, v2, :cond_3

    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    if-ne v3, v2, :cond_3

    .line 2645
    const/4 v1, 0x1

    goto :goto_0

    .line 2646
    :cond_3
    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    if-ne v3, v2, :cond_4

    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    if-nez v3, :cond_4

    .line 2647
    const/4 v1, 0x2

    goto :goto_0

    .line 2648
    :cond_4
    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v2, :cond_0

    .line 2649
    const/4 v1, 0x3

    goto :goto_0

    .line 2651
    :catch_0
    move-exception v0

    .line 2652
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2653
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseMailBodySize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/pim/EASOptions;)Ljava/lang/String;
    .locals 17
    .parameter "easEMail"
    .parameter "syncOptions"

    .prologue
    .line 2010
    const-string v9, "0"

    .line 2011
    .local v9, retBodySize:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2012
    .local v6, data:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    if-eqz v13, :cond_1

    .line 2013
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMEData:Ljava/lang/String;

    .line 2018
    :goto_0
    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2019
    sget-boolean v13, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "MailManager"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v16, "parseMailBodySize: Mail.Data is null"

    invoke-static/range {v13 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2020
    :cond_0
    const-string v13, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2097
    :goto_1
    return-object v13

    .line 2015
    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Data:Ljava/lang/String;

    goto :goto_0

    .line 2024
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2025
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    goto :goto_1

    .line 2028
    :cond_3
    const/4 v8, -0x1

    .line 2030
    .local v8, mimeType:I
    :try_start_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    .line 2036
    :goto_2
    const/4 v13, 0x1

    if-ne v8, v13, :cond_4

    .line 2037
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 2031
    :catch_0
    move-exception v7

    .line 2032
    .local v7, e:Ljava/lang/NumberFormatException;
    const-string v13, "MailManager"

    const-string v14, "Convert easEMail.Type from string to int fail. Set mimeType=1"

    invoke-static {v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    const/4 v8, 0x1

    goto :goto_2

    .line 2040
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v4, -0x1

    .line 2041
    .local v4, bodyStartIndex:I
    const/4 v1, -0x1

    .line 2042
    .local v1, bodEndIndex:I
    new-instance v5, Ljava/lang/String;

    const-string v13, "<body>"

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v5, bodyStartTag:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v13, "</body>"

    invoke-direct {v3, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2044
    .local v3, bodyEndTag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2046
    .local v2, body:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2047
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2049
    if-le v1, v4, :cond_5

    if-lez v4, :cond_5

    if-lez v1, :cond_5

    .line 2051
    invoke-virtual {v6, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2052
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .end local v1           #bodEndIndex:I
    .end local v2           #body:Ljava/lang/String;
    .end local v3           #bodyEndTag:Ljava/lang/String;
    .end local v4           #bodyStartIndex:I
    .end local v5           #bodyStartTag:Ljava/lang/String;
    .end local v8           #mimeType:I
    :goto_3
    move-object v13, v9

    .line 2097
    goto :goto_1

    .line 2056
    .restart local v1       #bodEndIndex:I
    .restart local v2       #body:Ljava/lang/String;
    .restart local v3       #bodyEndTag:Ljava/lang/String;
    .restart local v4       #bodyStartIndex:I
    .restart local v5       #bodyStartTag:Ljava/lang/String;
    .restart local v8       #mimeType:I
    :cond_5
    move-object/from16 v0, p2

    iget v12, v0, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    .line 2058
    .local v12, truncationSize:I
    const-wide/16 v10, -0x1

    .line 2059
    .local v10, size:J
    packed-switch v12, :pswitch_data_0

    .line 2090
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    goto :goto_3

    .line 2062
    :pswitch_0
    const-wide/16 v10, 0x200

    .line 2063
    goto :goto_4

    .line 2065
    :pswitch_1
    const-wide/16 v10, 0x400

    .line 2066
    goto :goto_4

    .line 2068
    :pswitch_2
    const-wide/16 v10, 0x800

    .line 2069
    goto :goto_4

    .line 2071
    :pswitch_3
    const-wide/16 v10, 0x1400

    .line 2072
    goto :goto_4

    .line 2074
    :pswitch_4
    const-wide/16 v10, 0x2800

    .line 2075
    goto :goto_4

    .line 2077
    :pswitch_5
    const-wide/16 v10, 0x5000

    .line 2078
    goto :goto_4

    .line 2080
    :pswitch_6
    const-wide/32 v10, 0xc800

    .line 2081
    goto :goto_4

    .line 2083
    :pswitch_7
    const-wide/32 v10, 0x19000

    .line 2084
    goto :goto_4

    .line 2086
    :pswitch_8
    const-wide/16 v10, 0x0

    goto :goto_4

    .line 2092
    .end local v1           #bodEndIndex:I
    .end local v2           #body:Ljava/lang/String;
    .end local v3           #bodyEndTag:Ljava/lang/String;
    .end local v4           #bodyStartIndex:I
    .end local v5           #bodyStartTag:Ljava/lang/String;
    .end local v8           #mimeType:I
    .end local v10           #size:J
    .end local v12           #truncationSize:I
    :catch_1
    move-exception v7

    .line 2093
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2094
    const-string v9, "0"

    goto :goto_3

    .line 2059
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private prcessReadSize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)V
    .locals 12
    .parameter "easEMail"
    .parameter "pimMail"

    .prologue
    .line 2748
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v11, "processReadSize"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2749
    :cond_0
    const/4 v0, 0x0

    .line 2750
    .local v0, data:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2751
    .local v1, dataSize:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2752
    .local v7, truncated:Ljava/lang/String;
    iget-boolean v8, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    if-eqz v8, :cond_2

    .line 2753
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMEData:Ljava/lang/String;

    .line 2754
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMESize:Ljava/lang/String;

    .line 2755
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMETruncated:Ljava/lang/String;

    .line 2762
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2763
    const-string v8, "0"

    iput-object v8, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    .line 2764
    const-string v8, ""

    iput-object v8, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    .line 2765
    iget-boolean v8, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    if-eqz v8, :cond_3

    .line 2766
    const-string v8, ""

    iput-object v8, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMEData:Ljava/lang/String;

    .line 2799
    :cond_1
    :goto_1
    return-void

    .line 2757
    :cond_2
    iget-object v0, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Data:Ljava/lang/String;

    .line 2758
    iget-object v1, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->EstimatedDataSize:Ljava/lang/String;

    .line 2759
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Truncated:Ljava/lang/String;

    goto :goto_0

    .line 2768
    :cond_3
    const-string v8, ""

    iput-object v8, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Data:Ljava/lang/String;

    goto :goto_1

    .line 2770
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2775
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2776
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2778
    :cond_7
    iput-object v1, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    .line 2779
    iput-object v1, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;

    goto :goto_1

    .line 2780
    :cond_8
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mSyncOptions:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v8, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    const/16 v9, 0x9

    if-eq v8, v9, :cond_9

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mSyncOptions:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    iget v8, v8, Lcom/htc/android/mail/eassvc/pim/EASOptions;->mailTruncationSize:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_a

    .line 2782
    :cond_9
    iput-object v1, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    .line 2783
    iput-object v1, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;

    goto :goto_1

    .line 2785
    :cond_a
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mSyncOptions:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    invoke-direct {p0, p1, v8}, Lcom/htc/android/mail/eassvc/mail/MailManager;->parseMailBodySize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/pim/EASOptions;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    .line 2787
    const-wide/16 v5, -0x1

    .local v5, readSize:J
    const-wide/16 v3, -0x1

    .line 2789
    .local v3, estimateSize:J
    :try_start_0
    iget-object v8, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2790
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2791
    cmp-long v8, v5, v3

    if-lez v8, :cond_1

    .line 2792
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v8, :cond_b

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v11, "Modify estimate data size"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 2793
    :cond_b
    const-wide/16 v8, 0xbb8

    add-long/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2795
    :catch_0
    move-exception v2

    .line 2796
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private processDownloadTotalSize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)Ljava/lang/String;
    .locals 15
    .parameter "easEMail"
    .parameter "pimMail"

    .prologue
    .line 2248
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2249
    :cond_0
    const-string v11, "MailManager"

    iget-wide v12, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v14, "processDownloadTotalSize failed: param is null"

    invoke-static {v11, v12, v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2250
    const-string v11, "0"

    .line 2290
    :goto_0
    return-object v11

    .line 2253
    :cond_1
    const-wide/16 v4, -0x1

    .line 2255
    .local v4, downloadTotalSize:J
    :try_start_0
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v11, :cond_3

    .line 2257
    const-wide/16 v4, 0x0

    .line 2266
    :goto_1
    const-wide/16 v1, 0x0

    .line 2267
    .local v1, attachSize:J
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2268
    .local v3, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v3, :cond_7

    .line 2270
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    iget-object v8, v11, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentFilePath:Ljava/lang/String;

    .line 2271
    .local v8, path:Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 2272
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentEstimatedDataSize:Ljava/lang/String;

    if-nez v11, :cond_5

    .line 2268
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2260
    .end local v1           #attachSize:J
    .end local v3           #count:I
    .end local v7           #i:I
    .end local v8           #path:Ljava/lang/String;
    :cond_3
    :try_start_1
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    goto :goto_1

    .line 2261
    :catch_0
    move-exception v6

    .line 2262
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-boolean v11, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "MailManager"

    iget-wide v12, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v14, "pimMail.mReadTotalsize format exception, return 0"

    invoke-static {v11, v12, v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2263
    :cond_4
    const-string v11, "0"

    goto :goto_0

    .line 2277
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #attachSize:J
    .restart local v3       #count:I
    .restart local v7       #i:I
    .restart local v8       #path:Ljava/lang/String;
    :cond_5
    const-wide/16 v9, 0x0

    .line 2279
    .local v9, size:J
    :try_start_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    iget-object v11, v11, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentEstimatedDataSize:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v9

    .line 2284
    :goto_4
    add-long/2addr v1, v9

    goto :goto_3

    .line 2280
    :catch_1
    move-exception v6

    .line 2281
    .restart local v6       #e:Ljava/lang/NumberFormatException;
    sget-boolean v11, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "MailManager"

    iget-wide v12, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v14, "easEMail.mailAttachment.get(i).AttachmentEstimatedDataSize format exception"

    invoke-static {v11, v12, v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2282
    :cond_6
    const-wide/16 v9, 0x0

    goto :goto_4

    .line 2289
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v8           #path:Ljava/lang/String;
    .end local v9           #size:J
    :cond_7
    add-long/2addr v4, v1

    .line 2290
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private processMIMEType(Lcom/htc/android/mail/eassvc/common/EASEMail;)Ljava/lang/String;
    .locals 7
    .parameter "easEMail"

    .prologue
    .line 2918
    const-string v1, "text/plain"

    .line 2919
    .local v1, PlainText:Ljava/lang/String;
    const-string v0, "text/html"

    .line 2920
    .local v0, HTML:Ljava/lang/String;
    iget-object v3, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2931
    .end local v1           #PlainText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 2924
    .restart local v1       #PlainText:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v3, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object v1, v0

    .line 2927
    goto :goto_0

    .line 2929
    :catch_0
    move-exception v2

    .line 2930
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v3, "MailManager"

    iget-wide v4, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v6, "processMIMEType failed"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private processMessageSize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)Ljava/lang/String;
    .locals 13
    .parameter "easEMail"
    .parameter "pimMail"

    .prologue
    .line 2190
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2191
    :cond_0
    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "processMessageSize failed, param is null"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2192
    const-string v9, "0"

    .line 2243
    :goto_0
    return-object v9

    .line 2195
    :cond_1
    const-wide/16 v5, -0x1

    .line 2196
    .local v5, messageSize:J
    iget-object v9, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 2197
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "! ReadTotalsize is null, use current mail body size"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2199
    :cond_2
    :try_start_0
    iget-object v9, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadsize:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 2203
    :cond_3
    :goto_1
    iget-boolean v9, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    if-eqz v9, :cond_7

    .line 2204
    iget-object v9, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMETruncated:Ljava/lang/String;

    if-eqz v9, :cond_5

    const-string v9, "1"

    iget-object v10, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMETruncated:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2205
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "mail body is truncated, set read totalsize is read size + 10"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2206
    :cond_4
    const-wide/16 v9, 0xa

    add-long/2addr v5, v9

    .line 2223
    :cond_5
    :goto_2
    const-wide/16 v0, 0x0

    .line 2224
    .local v0, attachSize:J
    iget-object v9, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2225
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v2, :cond_c

    .line 2226
    iget-object v9, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    iget-object v9, v9, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentEstimatedDataSize:Ljava/lang/String;

    if-nez v9, :cond_a

    .line 2228
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "mailAttachment size is null, continue"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2225
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2200
    .end local v0           #attachSize:J
    .end local v2           #count:I
    .end local v4           #i:I
    :catch_0
    move-exception v3

    .line 2201
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "Convert pimMail.mReadsize from string to value failed."

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 2209
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_7
    iget-object v9, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Truncated:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->Truncated:Ljava/lang/String;

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2210
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "mail body is truncated, set read totalsize is read size + 10"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2211
    :cond_8
    const-wide/16 v9, 0xa

    add-long/2addr v5, v9

    goto :goto_2

    .line 2217
    :cond_9
    :try_start_1
    iget-object v9, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    goto :goto_2

    .line 2218
    :catch_1
    move-exception v3

    .line 2219
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "Convert pimMail.mReadTotalsize from string to value failed"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    .line 2231
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #attachSize:J
    .restart local v2       #count:I
    .restart local v4       #i:I
    :cond_a
    const-wide/16 v7, 0x0

    .line 2233
    .local v7, size:J
    :try_start_2
    iget-object v9, p1, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    iget-object v9, v9, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentEstimatedDataSize:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v7

    .line 2238
    :goto_5
    add-long/2addr v0, v7

    goto :goto_4

    .line 2234
    :catch_2
    move-exception v3

    .line 2235
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_b

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "easEMail.mailAttachment.get(i).AttachmentEstimatedDataSize formant exception"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2236
    :cond_b
    const-wide/16 v7, 0x0

    goto :goto_5

    .line 2242
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v7           #size:J
    :cond_c
    add-long/2addr v5, v0

    .line 2243
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private processMimeAttachment(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/mail/MailItem;Lcom/htc/android/mail/eassvc/common/EASEMail;)V
    .locals 13
    .parameter "message"
    .parameter
    .parameter "pimMail"
    .parameter "email"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/mimemessage/MimeMessage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/mimemessage/Part;",
            ">;",
            "Lcom/htc/android/mail/eassvc/mail/MailItem;",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2868
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 2869
    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "processMimeAttachment null"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2915
    :cond_0
    return-void

    .line 2873
    :cond_1
    sget-boolean v9, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MailManager"

    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v12, "processMimeAttachment"

    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2874
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/mimemessage/Part;

    .line 2876
    .local v8, part:Lcom/htc/android/mail/mimemessage/Part;
    invoke-interface {v8}, Lcom/htc/android/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2877
    .local v3, contentType:Ljava/lang/String;
    const-string v9, "name"

    invoke-static {v3, v9}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2878
    .local v7, name:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 2879
    invoke-interface {v8}, Lcom/htc/android/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/mimemessage/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, contentDisposition:Ljava/lang/String;
    const-string v9, "filename"

    invoke-static {v2, v9}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2883
    .end local v2           #contentDisposition:Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Lcom/htc/android/mail/mimemessage/Part;->getContentId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    const/4 v1, 0x0

    .line 2885
    .local v1, cid:Ljava/lang/String;
    :goto_1
    if-eqz v7, :cond_3

    .line 2888
    if-eqz p3, :cond_8

    .line 2889
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;

    .line 2890
    .local v6, item:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    iget-object v9, v6, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 2893
    iget-object v9, v6, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2894
    iput-object v1, v6, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    .line 2895
    const-string v9, "1"

    iput-object v9, v6, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    .line 2899
    .end local v6           #item:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIncattachment:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2900
    const-string v9, "1"

    move-object/from16 v0, p3

    iput-object v9, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIncattachment:Ljava/lang/String;

    goto :goto_0

    .line 2883
    .end local v1           #cid:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v8}, Lcom/htc/android/mail/mimemessage/Part;->getContentId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "<"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ">"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2902
    .restart local v1       #cid:Ljava/lang/String;
    :cond_8
    if-eqz p4, :cond_3

    .line 2903
    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    .line 2904
    .local v6, item:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    iget-object v9, v6, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentDisplayName:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 2907
    iget-object v9, v6, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 2908
    iput-object v1, v6, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentContentId:Ljava/lang/String;

    .line 2909
    const-string v9, "1"

    iput-object v9, v6, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private processMimeBody(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/mail/MailItem;Lcom/htc/android/mail/eassvc/common/EASEMail;)V
    .locals 13
    .parameter "message"
    .parameter
    .parameter "pimMail"
    .parameter "email"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/mimemessage/MimeMessage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/mimemessage/Part;",
            ">;",
            "Lcom/htc/android/mail/eassvc/mail/MailItem;",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2816
    .local p2, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v11, "processMimeBody"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2817
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2818
    .local v1, Htmlbody:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2819
    .local v2, Textbody:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/mimemessage/Part;

    .line 2820
    .local v7, viewable:Lcom/htc/android/mail/mimemessage/Part;
    invoke-interface {v7}, Lcom/htc/android/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/html"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2821
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xc8000

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 2822
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Due to Htmlbdoy is large. stop get the content."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2839
    .end local v7           #viewable:Lcom/htc/android/mail/mimemessage/Part;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 2840
    .local v4, mimeType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2841
    .local v5, text:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2842
    .local v6, type:Ljava/lang/String;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_9

    .line 2843
    const-string v4, "text/html"

    .line 2844
    const-string v6, "2"

    .line 2845
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2856
    :goto_2
    if-eqz p3, :cond_c

    .line 2857
    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    .line 2858
    move-object/from16 v0, p3

    iput-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    .line 2863
    :cond_3
    :goto_3
    return-void

    .line 2825
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .restart local v7       #viewable:Lcom/htc/android/mail/mimemessage/Part;
    :cond_4
    const-wide/32 v8, 0xc8000

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getTextFromPart(Lcom/htc/android/mail/mimemessage/Part;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    sget-boolean v8, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Html:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2827
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_8

    :cond_6
    invoke-interface {v7}, Lcom/htc/android/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/plain"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2828
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v10, 0xc8000

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 2829
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Due to Textbody is large. stop get the content."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 2832
    :cond_7
    const-wide/32 v8, 0xc8000

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mimemessage/MimeUtility;->getTextFromPart(Lcom/htc/android/mail/mimemessage/Part;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    sget-boolean v8, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Plain:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2835
    :cond_8
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown body:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Lcom/htc/android/mail/mimemessage/Part;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v7}, Lcom/htc/android/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2846
    .end local v7           #viewable:Lcom/htc/android/mail/mimemessage/Part;
    .restart local v4       #mimeType:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    .restart local v6       #type:Ljava/lang/String;
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 2847
    const-string v6, "1"

    .line 2848
    const-string v4, "text/plain"

    .line 2849
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 2851
    :cond_a
    sget-boolean v8, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v8, :cond_b

    const-string v8, "MailManager"

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v11, "body is empty"

    invoke-static {v8, v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2852
    :cond_b
    const-string v6, "1"

    .line 2853
    const-string v4, "text/plain"

    goto/16 :goto_2

    .line 2859
    :cond_c
    if-eqz p4, :cond_3

    .line 2860
    move-object/from16 v0, p4

    iput-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    .line 2861
    move-object/from16 v0, p4

    iput-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Data:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method private processMimeData(Lcom/htc/android/mail/mimemessage/MimeMessage;Lcom/htc/android/mail/eassvc/mail/MailItem;Lcom/htc/android/mail/eassvc/common/EASEMail;)V
    .locals 2
    .parameter "message"
    .parameter "pimMail"
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2803
    .local v1, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2804
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/mimemessage/Part;>;"
    invoke-static {p1, v1, v0}, Lcom/htc/android/mail/mimemessage/MimeUtility;->collectParts(Lcom/htc/android/mail/mimemessage/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2807
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMimeBody(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/mail/MailItem;Lcom/htc/android/mail/eassvc/common/EASEMail;)V

    .line 2810
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMimeAttachment(Lcom/htc/android/mail/mimemessage/MimeMessage;Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/mail/MailItem;Lcom/htc/android/mail/eassvc/common/EASEMail;)V

    .line 2811
    return-void
.end method

.method private processSubject(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "subject"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2170
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 2171
    .local v0, bRet:[Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2172
    :cond_0
    const-string v2, ""

    aput-object v2, v0, v3

    .line 2173
    const-string v2, ""

    aput-object v2, v0, v4

    .line 2185
    :goto_0
    return-object v0

    .line 2177
    :cond_1
    invoke-static {p1}, Lcom/htc/android/mail/BaseStone;->TrimReFwd(Ljava/lang/String;)I

    move-result v1

    .line 2178
    .local v1, nTrim:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 2179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 2180
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_0

    .line 2182
    :cond_2
    aput-object p1, v0, v3

    .line 2183
    const-string v2, ""

    aput-object v2, v0, v4

    goto :goto_0
.end method

.method public static retrieveCollectionFromDB_static(JLjava/util/ArrayList;Landroid/content/Context;)V
    .locals 8
    .parameter "accountId"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2433
    .local p2, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;>;"
    if-nez p2, :cond_1

    .line 2466
    :cond_0
    :goto_0
    return-void

    .line 2437
    :cond_1
    const/4 v6, 0x0

    .line 2439
    .local v6, curMailbox:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2444
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 2446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_account = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2447
    .local v3, whereMailbox:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2448
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 2462
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2463
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2453
    :cond_3
    :try_start_1
    new-instance v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;-><init>()V

    .line 2454
    .local v7, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->id:Ljava/lang/String;

    .line 2455
    const-string v1, "_serverid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    .line 2456
    const-string v1, "_parentid"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->parentid:Ljava/lang/String;

    .line 2457
    const-string v1, "_account"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->account:Ljava/lang/String;

    .line 2459
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2460
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 2462
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v3           #whereMailbox:Ljava/lang/String;
    .end local v7           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2462
    :cond_4
    throw v1
.end method

.method private retrieveMailbox(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .locals 4
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;",
            ">;)",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;"
        }
    .end annotation

    .prologue
    .line 2154
    .local p2, mailboxList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_2

    .line 2155
    :cond_0
    const/4 v2, 0x0

    .line 2166
    :cond_1
    :goto_0
    return-object v2

    .line 2158
    :cond_2
    const/4 v2, 0x0

    .line 2159
    .local v2, mailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;

    .line 2160
    .local v1, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2161
    move-object v2, v1

    .line 2162
    goto :goto_0
.end method

.method private setCollectionSyncUp_Down(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)V
    .locals 8
    .parameter "collection"

    .prologue
    .line 2469
    if-nez p1, :cond_1

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2473
    :cond_1
    :try_start_0
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2475
    .local v5, type:I
    const/4 v0, 0x0

    .line 2476
    .local v0, down:Z
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$FolderType_SyncDown_List;->mailType:[I

    .line 2477
    .local v3, mailDownType:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_2

    .line 2478
    aget v7, v3, v2

    if-ne v5, v7, :cond_5

    .line 2479
    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 2480
    const/4 v0, 0x1

    .line 2484
    :cond_2
    if-nez v0, :cond_3

    .line 2485
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 2488
    :cond_3
    const/4 v6, 0x0

    .line 2489
    .local v6, up:Z
    sget-object v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$FolderType_SyncUp_List;->mailType:[I

    .line 2490
    .local v4, mailUpType:[I
    const/4 v2, 0x0

    :goto_2
    array-length v7, v4

    if-ge v2, v7, :cond_4

    .line 2491
    aget v7, v4, v2

    if-ne v5, v7, :cond_6

    .line 2492
    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    .line 2493
    const/4 v6, 0x1

    .line 2497
    :cond_4
    if-nez v6, :cond_0

    .line 2498
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2500
    .end local v0           #down:Z
    .end local v2           #i:I
    .end local v3           #mailDownType:[I
    .end local v4           #mailUpType:[I
    .end local v5           #type:I
    .end local v6           #up:Z
    :catch_0
    move-exception v1

    .line 2501
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2477
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #down:Z
    .restart local v2       #i:I
    .restart local v3       #mailDownType:[I
    .restart local v5       #type:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2490
    .restart local v4       #mailUpType:[I
    .restart local v6       #up:Z
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private subStringFrom(Ljava/lang/String;Lcom/htc/android/mail/eassvc/mail/MailItem;)V
    .locals 12
    .parameter "addrFrom"
    .parameter "pimMail"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 1935
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1936
    const-string v6, "MailManager"

    iget-wide v7, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "subStringFrom failed, email address is empty"

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2005
    :goto_0
    return-void

    .line 1940
    :cond_0
    const/4 v5, 0x0

    .line 1942
    .local v5, mailaddress:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/Mailaddress;>;"
    :try_start_0
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getProtocolVer()D

    move-result-wide v6

    const-wide/high16 v8, 0x4028

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    .line 1943
    const/4 v6, 0x1

    const-string v7, "utf-8"

    const-string v8, "utf-8"

    invoke-static {p1, v6, v7, v8}, Lcom/htc/android/mail/Headers;->splitMailAddress(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1951
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1952
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mDisplayName:Ljava/lang/String;

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    .line 1953
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailaddress;

    iget-object v6, v6, Lcom/htc/android/mail/Mailaddress;->mEmail:Ljava/lang/String;

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;

    goto :goto_0

    .line 1945
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    const-string v7, "utf-8"

    const-string v8, "utf-8"

    invoke-static {p1, v6, v7, v8}, Lcom/htc/android/mail/Headers;->splitMailAddressFor2003(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 1947
    :catch_0
    move-exception v2

    .line 1948
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1958
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const-string v6, "MailManager"

    iget-wide v7, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "subStringFrom, mail address is empty"

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1959
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1960
    .local v0, arrayMail:[C
    const/4 v1, 0x0

    .line 1961
    .local v1, count:I
    const/4 v4, -0x1

    .line 1962
    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 1963
    aget-char v6, v0, v3

    const/16 v7, 0x22

    if-ne v6, v7, :cond_3

    .line 1964
    move v4, v3

    .line 1965
    add-int/lit8 v1, v1, 0x1

    .line 1967
    :cond_3
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    .line 1971
    :cond_4
    if-eq v4, v11, :cond_7

    .line 1973
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    .line 1974
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1975
    :catch_1
    move-exception v2

    .line 1976
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    sget-boolean v6, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "MailManager"

    iget-wide v7, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "subStringFrom failed, error#1"

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1977
    :cond_5
    const-string v6, ""

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    .line 1978
    iput-object p1, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;

    goto/16 :goto_0

    .line 1962
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1983
    :cond_7
    const/4 v3, 0x0

    :goto_3
    array-length v6, v0

    if-ge v3, v6, :cond_8

    .line 1984
    aget-char v6, v0, v3

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_9

    .line 1985
    move v4, v3

    .line 1991
    :cond_8
    if-eq v4, v11, :cond_a

    .line 1992
    const/4 v6, 0x0

    add-int/lit8 v7, v4, -0x1

    :try_start_3
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    .line 1993
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1998
    :catch_2
    move-exception v2

    .line 1999
    .restart local v2       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "MailManager"

    iget-wide v7, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "subStringFrom failed, error#2"

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2000
    const-string v6, ""

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    .line 2001
    iput-object p1, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;

    goto/16 :goto_0

    .line 1983
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1995
    :cond_a
    :try_start_4
    const-string v6, ""

    iput-object v6, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFrom:Ljava/lang/String;

    .line 1996
    iput-object p1, p2, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method private updateMailBody_body(Landroid/net/Uri;Landroid/database/Cursor;Lcom/htc/android/mail/eassvc/common/EASEMail;JJ)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;
    .locals 21
    .parameter "partsURI"
    .parameter "curParts"
    .parameter "email"
    .parameter "messageId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    sget-boolean v16, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v16, :cond_0

    const-string v16, "MailManager"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v17, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "> updateMailBody_body: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v19}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 328
    :cond_0
    new-instance v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;

    invoke-direct {v15}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;-><init>()V

    .line 329
    .local v15, updateMailBody:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 330
    new-instance v14, Lcom/htc/android/mail/eassvc/mail/MailItem;

    invoke-direct {v14}, Lcom/htc/android/mail/eassvc/mail/MailItem;-><init>()V

    .line 331
    .local v14, pimMail:Lcom/htc/android/mail/eassvc/mail/MailItem;
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/htc/android/mail/eassvc/mail/MailManager;->populatePIMItem(JLcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)V

    .line 332
    iget-object v0, v14, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->mimeType:Ljava/lang/String;

    .line 333
    iget-object v0, v14, Lcom/htc/android/mail/eassvc/mail/MailItem;->mNativeBodyType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->nativeType:Ljava/lang/String;

    .line 334
    iget-object v0, v14, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    .line 335
    iget-object v0, v14, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->attachmentList:Ljava/util/ArrayList;

    .line 345
    .end local v14           #pimMail:Lcom/htc/android/mail/eassvc/mail/MailItem;
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-nez v16, :cond_5

    .line 346
    sget-boolean v16, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v16, :cond_1

    const-string v16, "MailManager"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v17, v0

    const-string v19, "insert mail body. #1"

    invoke-static/range {v16 .. v19}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 347
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v7, cv:Landroid/content/ContentValues;
    const-string v16, "_message"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const-string v16, "_mimetype"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v16, "_nativeType"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->nativeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v16, "_text"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v16, "_account"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Flag:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 354
    const-string v16, "_flags"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Flag:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 433
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-object v15

    .line 337
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMIMEType(Lcom/htc/android/mail/eassvc/common/EASEMail;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->mimeType:Ljava/lang/String;

    .line 338
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->NaviteBodyType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->nativeType:Ljava/lang/String;

    .line 339
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Data:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 363
    :cond_5
    const/4 v4, 0x0

    .line 364
    .local v4, bodyFlag:Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v11, partList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    const-string v16, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 367
    .local v12, partsId:J
    const-string v16, "_filename"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, fileName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 371
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v16, "_mimetype"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v16, "_text"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 375
    .local v5, builder:Landroid/net/Uri$Builder;
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 376
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 377
    .local v6, cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 378
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const/4 v4, 0x1

    .line 408
    .end local v5           #builder:Landroid/net/Uri$Builder;
    .end local v6           #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_7
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_6

    .line 410
    if-nez v4, :cond_a

    .line 413
    sget-boolean v16, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v16, :cond_8

    const-string v16, "MailManager"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v17, v0

    const-string v19, "insert mail body. #2"

    invoke-static/range {v16 .. v19}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 414
    :cond_8
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v16, "_message"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string v16, "_mimetype"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v16, "_nativeType"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->nativeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v16, "_text"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v16, "_account"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Flag:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 421
    const-string v16, "_flags"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Flag:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 424
    .restart local v6       #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 425
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v6           #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_b

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "mail"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 432
    :cond_b
    sget-boolean v16, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v16, :cond_3

    const-string v16, "MailManager"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v17, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "< updateMailBody_body: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v16 .. v19}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 387
    :cond_c
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->attachmentList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->attachmentList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    .line 388
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->attachmentList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;

    .line 389
    .local v10, item:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    iget-object v0, v10, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    const-string v16, "1"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 393
    iget-object v0, v10, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 394
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v16, "_contentId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v16, "_cid"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v16, "_inline"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v16, "_contenttype"

    sget v17, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 400
    .restart local v5       #builder:Landroid/net/Uri$Builder;
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 401
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 402
    .restart local v6       #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 403
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method


# virtual methods
.method public addSendMeetingMailRecord(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "calendarEventId"

    .prologue
    const-wide/16 v1, 0x0

    .line 2729
    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    cmp-long v0, p3, v1

    if-lez v0, :cond_1

    .line 2730
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSendMeetingMailRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2731
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p3, p4}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->addSendMeetingMailRecord(J)V

    .line 2733
    :cond_1
    return-void
.end method

.method public cleanExisted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "mailboxSvrId"
    .parameter "syncKey"

    .prologue
    .line 1239
    const/4 v7, 0x0

    .line 1241
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0, v4}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxIdByMailboxSvrId(JLjava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v12

    .line 1242
    .local v12, mailboxId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-gtz v1, :cond_1

    .line 1243
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "cleanExisted(): Can not query mailbox id"

    invoke-static {v1, v4, v5, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    .end local v12           #mailboxId:J
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1281
    :cond_0
    return-void

    .line 1247
    .restart local v12       #mailboxId:J
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 1248
    .local v3, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_mailboxId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND _syncKey > 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1249
    .local v16, whereClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1250
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 1278
    :cond_2
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1254
    :cond_3
    :try_start_2
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "clean exist mail"

    invoke-static {v1, v4, v5, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1255
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1258
    .local v14, nId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_5

    .line 1259
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1262
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1263
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "!!Attention!! start cleanExisted"

    invoke-static {v1, v4, v5, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1264
    const-string v1, ","

    const/4 v2, 0x1

    invoke-static {v11, v1, v2}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 1265
    .local v10, idSeq:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_id in (%s) AND _mailboxId = \'%d\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1266
    .local v17, whereId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1267
    .local v8, delrow:I
    if-lez v8, :cond_7

    .line 1268
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete number: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v5, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1278
    .end local v8           #delrow:I
    .end local v10           #idSeq:Ljava/lang/String;
    .end local v17           #whereId:Ljava/lang/String;
    :cond_6
    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1270
    .restart local v8       #delrow:I
    .restart local v10       #idSeq:Ljava/lang/String;
    .restart local v17       #whereId:Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "nothing data has be deleted"

    invoke-static {v1, v4, v5, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1275
    .end local v3           #projection:[Ljava/lang/String;
    .end local v8           #delrow:I
    .end local v10           #idSeq:Ljava/lang/String;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #mailboxId:J
    .end local v14           #nId:J
    .end local v16           #whereClause:Ljava/lang/String;
    .end local v17           #whereId:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1276
    .local v9, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v1, v4, v5, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1278
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1273
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v11       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #mailboxId:J
    .restart local v14       #nId:J
    .restart local v16       #whereClause:Ljava/lang/String;
    :cond_8
    :try_start_5
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "cleanExisted() list is null"

    invoke-static {v1, v4, v5, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1278
    .end local v3           #projection:[Ljava/lang/String;
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #mailboxId:J
    .end local v14           #nId:J
    .end local v16           #whereClause:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1279
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1278
    :cond_9
    throw v1
.end method

.method public cleanTrackStatus(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2334
    .local p1, addMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2338
    :cond_1
    const/4 v3, 0x0

    .line 2339
    .local v3, uidList:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2340
    .local v2, uid:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 2341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2343
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2346
    .end local v2           #uid:Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2347
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_synckey"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_uid IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public combineMoveCommand(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V
    .locals 1
    .parameter "moveItems"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->combineMoveCommand(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V

    .line 743
    return-void
.end method

.method public deleteCancelledAttachment(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)V
    .locals 6
    .parameter "attachItem"

    .prologue
    .line 2714
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->savePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2726
    :cond_0
    :goto_0
    return-void

    .line 2718
    :cond_1
    :try_start_0
    const-string v2, "MailManager"

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->accountId:J

    const-string v5, "delete cancelled attachment"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2719
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->savePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2720
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2721
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailManager"

    iget-wide v3, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->accountId:J

    const-string v5, "deleteCancelledAttachment fail"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2723
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2724
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteDelCommand(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, delList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->deleteDelCommand(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public deleteEmptyFolderCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "collId"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->deleteEmptyFolderCommand(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public deleteMail(JZZ)Z
    .locals 15
    .parameter "messageId"
    .parameter "addToTrack"
    .parameter "delAttach"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    sget-boolean v10, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "MailManager"

    iget-wide v11, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "> deleteMail: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 103
    :cond_0
    iget-wide v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-gtz v10, :cond_3

    .line 104
    :cond_1
    const-string v10, "MailManager"

    iget-wide v11, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v13, "deleteMail error: parameter is null"

    invoke-static {v10, v11, v12, v13}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 105
    const/4 v2, 0x0

    .line 133
    :cond_2
    :goto_0
    return v2

    .line 108
    :cond_3
    const/4 v2, 0x0

    .line 109
    .local v2, bRet:Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v7, opList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_5

    const-string v4, "1"

    .line 113
    .local v4, delAttachmentParam:Ljava/lang/String;
    :goto_1
    sget-object v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 114
    .local v3, builder:Landroid/net/Uri$Builder;
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    const-string v10, "delAttachment"

    invoke-virtual {v3, v10, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 117
    .local v5, delMsgBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_accountId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND _message="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, whereTrack:Ljava/lang/String;
    sget-object v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 122
    .local v6, delTrackBuilder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 123
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "mail"

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v8

    .line 126
    .local v8, result:[Landroid/content/ContentProviderResult;
    if-eqz v8, :cond_4

    array-length v10, v8

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 127
    const/4 v10, 0x0

    aget-object v10, v8, v10

    iget-object v10, v10, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_4

    .line 128
    const/4 v2, 0x1

    .line 132
    :cond_4
    sget-boolean v10, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "MailManager"

    iget-wide v11, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "< deleteMail: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v3           #builder:Landroid/net/Uri$Builder;
    .end local v4           #delAttachmentParam:Ljava/lang/String;
    .end local v5           #delMsgBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #delTrackBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #result:[Landroid/content/ContentProviderResult;
    .end local v9           #whereTrack:Ljava/lang/String;
    :cond_5
    const-string v4, "0"

    goto/16 :goto_1
.end method

.method public deleteMeetingMailRecord(J)V
    .locals 1
    .parameter "calendarEventId"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->deleteMeetingMailRecord(J)V

    .line 772
    return-void
.end method

.method public deleteSurplusMail()I
    .locals 7

    .prologue
    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_del=1 AND _account=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->SummariesDeleteMailURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, count:I
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailManager"

    iget-wide v3, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteSurplusMail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 140
    :cond_0
    return v0
.end method

.method public deleteUpdCommand(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, updList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->deleteUpdCommand(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public firstFolderUpdate(Ljava/util/ArrayList;)V
    .locals 29
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 775
    .local p1, addFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "> firstTime_Upd_folderInfo()"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 776
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 777
    :cond_1
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "firstTime_Upd_folderInfo, parameter is null"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 929
    :cond_2
    :goto_0
    return-void

    .line 780
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    .line 781
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "firstTime_Upd_folderInfo, account id is null."

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " _type IN ( \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' , \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND _account = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->deleteAccountCommand()I

    .line 800
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 801
    .local v15, mapMailbox:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_type"

    aput-object v3, v4, v2

    .line 802
    .local v4, projection:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( _type != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND _type != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND _account = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 805
    .local v5, whereMailbox:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 807
    .local v9, curMailbox:Landroid/database/Cursor;
    if-eqz v9, :cond_7

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 809
    :cond_5
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 810
    .local v14, id:Ljava/lang/String;
    const-string v2, "_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 811
    .local v25, type:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 812
    move-object/from16 v0, v25

    invoke-interface {v15, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 817
    .end local v14           #id:Ljava/lang/String;
    .end local v25           #type:Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 818
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 819
    const/4 v9, 0x0

    .line 823
    :cond_8
    const/16 v21, 0x0

    .local v21, strDraft:Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, strTrash:Ljava/lang/String;
    const/16 v23, 0x0

    .line 825
    .local v23, strSend:Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .local v19, providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 827
    .local v26, typeFolderUserCreate:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 828
    .local v16, nSize:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_d

    .line 829
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v0, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 830
    .local v20, shortName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v11, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    .line 831
    .local v11, decodeName:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 832
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "First time, can\'t retrieve hierarchyName"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 833
    move-object/from16 v11, v20

    .line 839
    :cond_9
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 840
    .local v10, cv:Landroid/content/ContentValues;
    const-string v2, "_undecodename"

    move-object/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v2, "_decodename"

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v2, "_shortname"

    move-object/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v2, "_account"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const-string v3, "_serverid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v3, "_parentid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v3, "_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v3, "_synckey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v3, "_default_sync"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-boolean v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 850
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 855
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 856
    .local v18, opBuilder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 857
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 817
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #decodeName:Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #nSize:I
    .end local v18           #opBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v19           #providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v20           #shortName:Ljava/lang/String;
    .end local v21           #strDraft:Ljava/lang/String;
    .end local v23           #strSend:Ljava/lang/String;
    .end local v24           #strTrash:Ljava/lang/String;
    .end local v26           #typeFolderUserCreate:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_a

    .line 818
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 819
    const/4 v9, 0x0

    .line 817
    :cond_a
    throw v2

    .line 859
    .restart local v10       #cv:Landroid/content/ContentValues;
    .restart local v11       #decodeName:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v16       #nSize:I
    .restart local v19       #providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v20       #shortName:Ljava/lang/String;
    .restart local v21       #strDraft:Ljava/lang/String;
    .restart local v23       #strSend:Ljava/lang/String;
    .restart local v24       #strTrash:Ljava/lang/String;
    .restart local v26       #typeFolderUserCreate:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 860
    .local v22, strId:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 864
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 865
    .local v8, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 867
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 868
    .restart local v18       #opBuilder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 869
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 880
    .local v17, nType:I
    packed-switch v17, :pswitch_data_0

    goto :goto_2

    .line 883
    :pswitch_0
    move-object/from16 v21, v20

    .line 884
    goto :goto_2

    .line 875
    .end local v17           #nType:I
    .end local v18           #opBuilder:Landroid/content/ContentProviderOperation$Builder;
    :cond_c
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 876
    .restart local v18       #opBuilder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 877
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 886
    .restart local v17       #nType:I
    :pswitch_1
    move-object/from16 v24, v20

    .line 887
    goto :goto_2

    .line 889
    :pswitch_2
    move-object/from16 v23, v20

    goto :goto_2

    .line 896
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v11           #decodeName:Ljava/lang/String;
    .end local v17           #nType:I
    .end local v18           #opBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #shortName:Ljava/lang/String;
    .end local v22           #strId:Ljava/lang/String;
    :cond_d
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 897
    .restart local v10       #cv:Landroid/content/ContentValues;
    if-eqz v21, :cond_e

    .line 898
    const-string v2, "_draftfolder"

    move-object/from16 v0, v21

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v2, "_draftfoldertext"

    move-object/from16 v0, v21

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_e
    if-eqz v24, :cond_f

    .line 902
    const-string v2, "_trashfolder"

    move-object/from16 v0, v24

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v2, "_trashfoldertext"

    move-object/from16 v0, v24

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_f
    if-eqz v23, :cond_10

    .line 906
    const-string v2, "_sentfolder"

    move-object/from16 v0, v23

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v2, "_sentfoldertext"

    move-object/from16 v0, v23

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_10
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 910
    sget-object v2, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    .line 911
    .restart local v18       #opBuilder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 912
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    .end local v18           #opBuilder:Landroid/content/ContentProviderOperation$Builder;
    :cond_11
    if-eqz v19, :cond_12

    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mail"

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 928
    :cond_12
    :goto_4
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "< firstTime_Upd_folderInfo()"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 924
    :catch_0
    move-exception v12

    .line 925
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    return-wide v0
.end method

.method public getAttachmentMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .parameter "fileReference"
    .parameter "isGlobal"

    .prologue
    .line 437
    const/4 v7, 0x0

    .line 438
    .local v7, mime:Ljava/lang/String;
    const/4 v6, 0x0

    .line 439
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->PARTS_URI:Landroid/net/Uri;

    .line 440
    .local v1, partURI:Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 441
    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    .line 444
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_mimetype"

    aput-object v4, v2, v0

    .line 445
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "_account=%d AND _filereference=\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object p1, v5, v8

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 447
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 451
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_2
    return-object v7

    .line 451
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 452
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_3
    throw v0
.end method

.method public getAttachmentSize(Ljava/lang/String;)J
    .locals 11
    .parameter "fileReference"

    .prologue
    .line 460
    const-wide/16 v7, 0x0

    .line 461
    .local v7, size:J
    const/4 v6, 0x0

    .line 463
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_filesize"

    aput-object v1, v2, v0

    .line 464
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_account=%d AND _filereference=\'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->PARTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 466
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 470
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_1
    return-wide v7

    .line 470
    .end local v2           #proj:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_2
    throw v0
.end method

.method getClientIds(Ljava/lang/String;)[J
    .locals 13
    .parameter "serverIdList"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1701
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    .local v6, alMessageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1704
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1705
    .local v7, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v11, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND _uid in ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1709
    .local v8, curEasmessage:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1716
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1719
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1720
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v10, v0, [J

    .line 1721
    .local v10, list:[J
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v10

    if-ge v9, v0, :cond_5

    .line 1722
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, v10, v9

    .line 1721
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1715
    .end local v9           #i:I
    .end local v10           #list:[J
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1716
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1715
    :cond_3
    throw v0

    :cond_4
    move-object v10, v4

    .line 1726
    :cond_5
    return-object v10
.end method

.method public getDefaultInboxColID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2387
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/database/ExchangeUtil;->getDefaultInboxColID(JLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "collId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 755
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->getDelList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyFolderCommand(Ljava/lang/String;)Z
    .locals 1
    .parameter "collId"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->getEmptyFolderCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMeetingInvitation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->getMeetingInvitation()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMeetingResp()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2744
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->getMeetingResp()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMoveItemInfo()Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .locals 34

    .prologue
    .line 592
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MailManager"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v10, "- getMoveItemInfo()"

    invoke-static {v4, v7, v8, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 594
    :cond_0
    const/16 v19, 0x0

    .line 595
    .local v19, curTracking:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 596
    .local v18, curMessage:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 597
    .local v28, moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 598
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v23, mailboxInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v27, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x3

    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_message"

    aput-object v7, v5, v4

    const/4 v4, 0x1

    const-string v7, "_uid"

    aput-object v7, v5, v4

    const/4 v4, 0x2

    const-string v7, "_collectionId"

    aput-object v7, v5, v4

    .line 602
    .local v5, trackProj:[Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_accountId=%d AND _move=1 AND _param=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, trackWhere:Ljava/lang/String;
    sget-object v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 604
    if-eqz v19, :cond_b

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 606
    :cond_1
    const-string v4, "_message"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 607
    .local v24, message:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 608
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    :cond_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 612
    if-eqz v27, :cond_3

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-gtz v4, :cond_5

    .line 613
    :cond_3
    const/4 v4, 0x0

    .line 690
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 691
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 694
    .end local v5           #trackProj:[Ljava/lang/String;
    .end local v6           #trackWhere:Ljava/lang/String;
    .end local v24           #message:Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v4

    .line 619
    .restart local v5       #trackProj:[Ljava/lang/String;
    .restart local v6       #trackWhere:Ljava/lang/String;
    .restart local v24       #message:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v4, ","

    const/4 v7, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v4, v7}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 620
    .local v21, idSeq:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_accountId=%d AND _message in (%s) AND _move=1 AND _param=%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object v21, v8, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 621
    .local v32, updateWhere:Ljava/lang/String;
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 622
    .local v33, values:Landroid/content/ContentValues;
    const-string v4, "_param"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    sget-object v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v3, v4, v0, v1, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 624
    .local v17, count:I
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "MailManager"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMoveItemInfo, set param=2: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v7, v8, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 629
    :cond_6
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v7, v8, v0, v4}, Lcom/htc/android/mail/eassvc/mail/MailManager;->retrieveCollectionFromDB_static(JLjava/util/ArrayList;Landroid/content/Context;)V

    .line 631
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 633
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "MailManager"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v10, "some items need to be moved."

    invoke-static {v4, v7, v8, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 634
    :cond_7
    new-instance v29, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct/range {v29 .. v29}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    .end local v28           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .local v29, moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :cond_8
    const-wide/16 v25, -0x1

    .line 637
    .local v25, messageId:J
    const/4 v13, 0x0

    .line 638
    .local v13, uid:Ljava/lang/String;
    const/16 v31, 0x0

    .line 639
    .local v31, srcCollId:Ljava/lang/String;
    const/16 v22, 0x0

    .line 641
    .local v22, mailboxId:Ljava/lang/String;
    :try_start_2
    const-string v4, "_message"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 642
    const-string v4, "_collectionId"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 644
    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v9, v4

    const/4 v4, 0x1

    const-string v7, "_uid"

    aput-object v7, v9, v4

    const/4 v4, 0x2

    const-string v7, "_mailboxId"

    aput-object v7, v9, v4

    .line 645
    .local v9, MessageProj:[Ljava/lang/String;
    sget-object v4, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MESSAGES_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    .line 646
    .local v16, builder:Landroid/net/Uri$Builder;
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 648
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 649
    if-eqz v18, :cond_d

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 651
    const-string v4, "_uid"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 652
    const-string v4, "_mailboxId"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v22

    .line 658
    if-eqz v18, :cond_9

    :try_start_4
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 659
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getMailbox(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;

    move-result-object v14

    .line 663
    .local v14, srcMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->retrieveMailbox(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;

    move-result-object v15

    .local v15, dstMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    move-object/from16 v10, p0

    move-wide/from16 v11, v25

    .line 666
    invoke-direct/range {v10 .. v15}, Lcom/htc/android/mail/eassvc/mail/MailManager;->checkMoveCommandValid(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 684
    :cond_a
    :goto_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v28, v29

    .line 690
    .end local v9           #MessageProj:[Ljava/lang/String;
    .end local v13           #uid:Ljava/lang/String;
    .end local v14           #srcMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .end local v15           #dstMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .end local v16           #builder:Landroid/net/Uri$Builder;
    .end local v17           #count:I
    .end local v21           #idSeq:Ljava/lang/String;
    .end local v22           #mailboxId:Ljava/lang/String;
    .end local v24           #message:Ljava/lang/String;
    .end local v25           #messageId:J
    .end local v29           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .end local v31           #srcCollId:Ljava/lang/String;
    .end local v32           #updateWhere:Ljava/lang/String;
    .end local v33           #values:Landroid/content/ContentValues;
    .restart local v28       #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :cond_b
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    .line 691
    .end local v5           #trackProj:[Ljava/lang/String;
    .end local v6           #trackWhere:Ljava/lang/String;
    :goto_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object/from16 v4, v28

    .line 694
    goto/16 :goto_0

    .line 654
    .end local v28           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .restart local v5       #trackProj:[Ljava/lang/String;
    .restart local v6       #trackWhere:Ljava/lang/String;
    .restart local v9       #MessageProj:[Ljava/lang/String;
    .restart local v13       #uid:Ljava/lang/String;
    .restart local v16       #builder:Landroid/net/Uri$Builder;
    .restart local v17       #count:I
    .restart local v21       #idSeq:Ljava/lang/String;
    .restart local v22       #mailboxId:Ljava/lang/String;
    .restart local v24       #message:Ljava/lang/String;
    .restart local v25       #messageId:J
    .restart local v29       #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .restart local v31       #srcCollId:Ljava/lang/String;
    .restart local v32       #updateWhere:Ljava/lang/String;
    .restart local v33       #values:Landroid/content/ContentValues;
    :cond_d
    :try_start_5
    const-string v4, "MailManager"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v10, "getMoveItemInfo: get msg fail"

    invoke-static {v4, v7, v8, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 655
    const/16 v28, 0x0

    .line 658
    if-eqz v18, :cond_e

    :try_start_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e

    .line 659
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 690
    :cond_e
    if-eqz v19, :cond_f

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_f

    .line 691
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object/from16 v4, v28

    move-object/from16 v28, v29

    .line 655
    .end local v29           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .restart local v28       #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    goto/16 :goto_0

    .line 658
    .end local v28           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .restart local v29       #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_10

    :try_start_7
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_10

    .line 659
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_10
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 686
    .end local v9           #MessageProj:[Ljava/lang/String;
    .end local v16           #builder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v20

    move-object/from16 v28, v29

    .line 687
    .end local v5           #trackProj:[Ljava/lang/String;
    .end local v6           #trackWhere:Ljava/lang/String;
    .end local v13           #uid:Ljava/lang/String;
    .end local v17           #count:I
    .end local v21           #idSeq:Ljava/lang/String;
    .end local v22           #mailboxId:Ljava/lang/String;
    .end local v24           #message:Ljava/lang/String;
    .end local v25           #messageId:J
    .end local v29           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .end local v31           #srcCollId:Ljava/lang/String;
    .end local v32           #updateWhere:Ljava/lang/String;
    .end local v33           #values:Landroid/content/ContentValues;
    .local v20, e:Ljava/lang/Exception;
    .restart local v28       #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :goto_3
    :try_start_8
    const-string v4, "MailManager"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-object/from16 v0, v20

    invoke-static {v4, v7, v8, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 688
    const/16 v28, 0x0

    .line 690
    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_2

    .line 670
    .end local v20           #e:Ljava/lang/Exception;
    .end local v28           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .restart local v5       #trackProj:[Ljava/lang/String;
    .restart local v6       #trackWhere:Ljava/lang/String;
    .restart local v9       #MessageProj:[Ljava/lang/String;
    .restart local v13       #uid:Ljava/lang/String;
    .restart local v14       #srcMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v15       #dstMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .restart local v16       #builder:Landroid/net/Uri$Builder;
    .restart local v17       #count:I
    .restart local v21       #idSeq:Ljava/lang/String;
    .restart local v22       #mailboxId:Ljava/lang/String;
    .restart local v24       #message:Ljava/lang/String;
    .restart local v25       #messageId:J
    .restart local v29       #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .restart local v31       #srcCollId:Ljava/lang/String;
    .restart local v32       #updateWhere:Ljava/lang/String;
    .restart local v33       #values:Landroid/content/ContentValues;
    :cond_11
    :try_start_9
    new-instance v30, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;

    invoke-direct/range {v30 .. v30}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;-><init>()V

    .line 671
    .local v30, newItem:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    if-eqz v13, :cond_a

    if-eqz v31, :cond_a

    iget-object v4, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-wide/16 v7, 0x0

    cmp-long v4, v25, v7

    if-lez v4, :cond_a

    .line 674
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "MailManager"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMoveItemInfo uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v7, v8, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 675
    :cond_12
    sget-boolean v4, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v4, :cond_13

    const-string v4, "MailManager"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMoveItemInfo collectionId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v7, v8, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 676
    :cond_13
    move-wide/from16 v0, v25

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->messageId:J

    .line 677
    const/4 v4, 0x1

    move-object/from16 v0, v30

    iput v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->fromSvrFlag:I

    .line 678
    move-object/from16 v0, v30

    iput-object v13, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcMsgServerId:Ljava/lang/String;

    .line 679
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->srcFldServerId:Ljava/lang/String;

    .line 680
    iget-object v4, v15, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;->serverid:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;->dstFldServerId:Ljava/lang/String;

    .line 682
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;->moveItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1

    .line 690
    .end local v9           #MessageProj:[Ljava/lang/String;
    .end local v14           #srcMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .end local v15           #dstMailboxInfo:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$MailboxInfo;
    .end local v16           #builder:Landroid/net/Uri$Builder;
    .end local v30           #newItem:Lcom/htc/android/mail/eassvc/pim/EASMoveItems$EASMoveItem;
    :catchall_1
    move-exception v4

    move-object/from16 v28, v29

    .end local v5           #trackProj:[Ljava/lang/String;
    .end local v6           #trackWhere:Ljava/lang/String;
    .end local v13           #uid:Ljava/lang/String;
    .end local v17           #count:I
    .end local v21           #idSeq:Ljava/lang/String;
    .end local v22           #mailboxId:Ljava/lang/String;
    .end local v24           #message:Ljava/lang/String;
    .end local v25           #messageId:J
    .end local v29           #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    .end local v31           #srcCollId:Ljava/lang/String;
    .end local v32           #updateWhere:Ljava/lang/String;
    .end local v33           #values:Landroid/content/ContentValues;
    .restart local v28       #moveItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :goto_4
    if-eqz v19, :cond_14

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_14

    .line 691
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_14
    throw v4

    :catchall_2
    move-exception v4

    goto :goto_4

    .line 686
    :catch_1
    move-exception v20

    goto/16 :goto_3
.end method

.method public getUpdList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "collId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASUpdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->getUpdList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isMeetingRecordExist(J)Z
    .locals 1
    .parameter "calendarEventId"

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->isMeetingRecordExist(J)Z

    move-result v0

    return v0
.end method

.method public isSDsave()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2353
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_1

    .line 2354
    const-string v0, "MailManager"

    iget-wide v3, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v1, "isSDsave: mnAccountId is null"

    invoke-static {v0, v3, v4, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2374
    :cond_0
    :goto_0
    return v8

    .line 2358
    :cond_1
    const/4 v8, 0x0

    .line 2359
    .local v8, sdSave:I
    const/4 v7, 0x0

    .line 2361
    .local v7, curAccount:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_enableSDsave"

    aput-object v1, v2, v0

    .line 2362
    .local v2, proj:[Ljava/lang/String;
    sget-object v0, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 2363
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2364
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2365
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2366
    const-string v0, "_enableSDsave"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2369
    :cond_2
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2369
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2370
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2369
    :cond_3
    throw v0
.end method

.method public loadMailboxInfo(Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2561
    .local p1, svrCollectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    if-nez p1, :cond_1

    .line 2633
    :cond_0
    :goto_0
    return-void

    .line 2564
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v19, "> loadMailboxInfo"

    move-object/from16 v0, v19

    invoke-static {v2, v5, v6, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 2566
    :cond_2
    const/4 v9, 0x0

    .line 2567
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2569
    .local v7, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 2570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2572
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_account=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2573
    .local v4, selection:Ljava/lang/String;
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_shortname"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "_decodename"

    aput-object v5, v3, v2

    const/4 v2, 0x2

    const-string v5, "_serverid"

    aput-object v5, v3, v2

    const/4 v2, 0x3

    const-string v5, "_parentid"

    aput-object v5, v3, v2

    const/4 v2, 0x4

    const-string v5, "_type"

    aput-object v5, v3, v2

    const/4 v2, 0x5

    const-string v5, "_synckey"

    aput-object v5, v3, v2

    const/4 v2, 0x6

    const-string v5, "_enablesync"

    aput-object v5, v3, v2

    const/4 v2, 0x7

    const-string v5, "_default_sync"

    aput-object v5, v3, v2

    .line 2574
    .local v3, proj:[Ljava/lang/String;
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2575
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    .line 2627
    :cond_3
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2628
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    move-object v8, v7

    .line 2580
    .end local v7           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .local v8, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :try_start_1
    const-string v2, "_shortname"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2581
    .local v11, displayName:Ljava/lang/String;
    const-string v2, "_decodename"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2582
    .local v14, hierarchyName:Ljava/lang/String;
    const-string v2, "_serverid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2583
    .local v16, serverId:Ljava/lang/String;
    const-string v2, "_parentid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2584
    .local v15, parentId:Ljava/lang/String;
    const-string v2, "_type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2585
    .local v18, type:Ljava/lang/String;
    const-string v2, "_synckey"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2586
    .local v17, synckey:Ljava/lang/String;
    const-string v2, "_enablesync"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2587
    .local v13, enableSyncFolder:I
    const-string v2, "_default_sync"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v10, 0x1

    .line 2589
    .local v10, defaultSync:Z
    :goto_1
    new-instance v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2590
    .end local v8           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v7       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :try_start_2
    iput-object v11, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    .line 2591
    iput-object v14, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    .line 2592
    move-object/from16 v0, v16

    iput-object v0, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    .line 2593
    iput-object v15, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    .line 2594
    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    .line 2595
    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    .line 2596
    iput-boolean v10, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    .line 2598
    packed-switch v13, :pswitch_data_0

    .line 2616
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 2617
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    .line 2621
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_4

    .line 2627
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2628
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v10           #defaultSync:Z
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #enableSyncFolder:I
    .end local v14           #hierarchyName:Ljava/lang/String;
    .end local v15           #parentId:Ljava/lang/String;
    .end local v16           #serverId:Ljava/lang/String;
    .end local v17           #synckey:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2632
    :cond_5
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v19, "< loadMailboxInfo"

    move-object/from16 v0, v19

    invoke-static {v2, v5, v6, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2587
    .end local v7           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v8       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v11       #displayName:Ljava/lang/String;
    .restart local v13       #enableSyncFolder:I
    .restart local v14       #hierarchyName:Ljava/lang/String;
    .restart local v15       #parentId:Ljava/lang/String;
    .restart local v16       #serverId:Ljava/lang/String;
    .restart local v17       #synckey:Ljava/lang/String;
    .restart local v18       #type:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 2600
    .end local v8           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v7       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v10       #defaultSync:Z
    :pswitch_0
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 2601
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2624
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v10           #defaultSync:Z
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #enableSyncFolder:I
    .end local v14           #hierarchyName:Ljava/lang/String;
    .end local v15           #parentId:Ljava/lang/String;
    .end local v16           #serverId:Ljava/lang/String;
    .end local v17           #synckey:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 2625
    .local v12, e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2627
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    .line 2604
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v10       #defaultSync:Z
    .restart local v11       #displayName:Ljava/lang/String;
    .restart local v13       #enableSyncFolder:I
    .restart local v14       #hierarchyName:Ljava/lang/String;
    .restart local v15       #parentId:Ljava/lang/String;
    .restart local v16       #serverId:Ljava/lang/String;
    .restart local v17       #synckey:Ljava/lang/String;
    .restart local v18       #type:Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 2605
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 2627
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v10           #defaultSync:Z
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #enableSyncFolder:I
    .end local v14           #hierarchyName:Ljava/lang/String;
    .end local v15           #parentId:Ljava/lang/String;
    .end local v16           #serverId:Ljava/lang/String;
    .end local v17           #synckey:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2628
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2627
    :cond_7
    throw v2

    .line 2608
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v10       #defaultSync:Z
    .restart local v11       #displayName:Ljava/lang/String;
    .restart local v13       #enableSyncFolder:I
    .restart local v14       #hierarchyName:Ljava/lang/String;
    .restart local v15       #parentId:Ljava/lang/String;
    .restart local v16       #serverId:Ljava/lang/String;
    .restart local v17       #synckey:Ljava/lang/String;
    .restart local v18       #type:Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x1

    :try_start_6
    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 2609
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z

    goto :goto_2

    .line 2612
    :pswitch_3
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncDown:Z

    .line 2613
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->enableSyncUp:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 2627
    .end local v7           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v10           #defaultSync:Z
    .end local v11           #displayName:Ljava/lang/String;
    .end local v13           #enableSyncFolder:I
    .end local v14           #hierarchyName:Ljava/lang/String;
    .end local v15           #parentId:Ljava/lang/String;
    .end local v16           #serverId:Ljava/lang/String;
    .end local v17           #synckey:Ljava/lang/String;
    .end local v18           #type:Ljava/lang/String;
    .restart local v8       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v7       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    goto :goto_5

    .line 2624
    .end local v7           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v8       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :catch_1
    move-exception v12

    move-object v7, v8

    .end local v8           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v7       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    goto :goto_4

    .line 2598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public populatePIMItem(JLcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)V
    .locals 20
    .parameter "mailboxId"
    .parameter "easEMail"
    .parameter "pimMail"

    .prologue
    .line 1731
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-gtz v3, :cond_0

    .line 1732
    const-string v3, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v4, "populatePIMItem failed: account id is null"

    invoke-static {v3, v6, v7, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1932
    :goto_0
    return-void

    .line 1736
    :cond_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAccount:Ljava/lang/String;

    .line 1737
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mUid:Ljava/lang/String;

    .line 1738
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->From:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->subStringFrom(Ljava/lang/String;Lcom/htc/android/mail/eassvc/mail/MailItem;)V

    .line 1739
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->ReplyTo:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReplyTo:Ljava/lang/String;

    .line 1741
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Subject:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processSubject(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1742
    .local v19, subj:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v19, v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubject:Ljava/lang/String;

    .line 1743
    const/4 v3, 0x1

    aget-object v3, v19, v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubjType:Ljava/lang/String;

    .line 1744
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->To:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mTo:Ljava/lang/String;

    .line 1745
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->CC:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mCc:Ljava/lang/String;

    .line 1746
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->ThreadTopic:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mThreadtopic:Ljava/lang/String;

    .line 1748
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->DateReceived:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->formatDateReceived(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDate:Ljava/lang/String;

    .line 1751
    const-string v12, "0"

    .line 1752
    .local v12, estimatedDataSize:Ljava/lang/String;
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    if-eqz v3, :cond_7

    .line 1753
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMESize:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v12, "0"

    .line 1757
    :goto_1
    move-object/from16 v0, p4

    iput-object v12, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReadTotalsize:Ljava/lang/String;

    .line 1760
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->prcessReadSize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)V

    .line 1762
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processDownloadTotalSize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDownloadTotalSize:Ljava/lang/String;

    .line 1763
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMessageSize(Lcom/htc/android/mail/eassvc/common/EASEMail;Lcom/htc/android/mail/eassvc/mail/MailItem;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageSize:Ljava/lang/String;

    .line 1764
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Read:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRead:Ljava/lang/String;

    .line 1766
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MessageClass:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1767
    const-string v3, "IPM.Note"

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MessageClass:Ljava/lang/String;

    .line 1769
    :cond_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MessageClass:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClass:Ljava/lang/String;

    .line 1770
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MessageClass:Ljava/lang/String;

    const-string v4, "IPM.Note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1771
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iput v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClassInt:I

    .line 1781
    :goto_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMailbox_Id:Ljava/lang/String;

    .line 1782
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->ClientName:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMailbox:Ljava/lang/String;

    .line 1783
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Importance:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mImportance:Ljava/lang/String;

    .line 1784
    const-string v3, ""

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReference:Ljava/lang/String;

    .line 1786
    const/4 v3, 0x1

    new-array v9, v3, [J

    .line 1787
    .local v9, nPsuedoGroupId:[J
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->ThreadTopic:Ljava/lang/String;

    .line 1788
    .local v5, threadTopic:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1789
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSubject:Ljava/lang/String;

    .line 1791
    :cond_2
    :goto_3
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mFromemail:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->To:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->CC:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->CC:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReference:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lcom/htc/android/mail/BaseStone;->getGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v13

    .line 1794
    .local v13, group:Ljava/lang/String;
    if-nez v13, :cond_3

    .line 1795
    const-string v13, ""

    .line 1798
    :cond_3
    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mGroup:Ljava/lang/String;

    .line 1799
    const/4 v3, 0x0

    aget-wide v3, v9, v3

    move-object/from16 v0, p4

    iput-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mPsuedoGroupId:J

    .line 1810
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 1811
    .local v18, sMailBodyType_Text:Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->NaviteBodyType:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 1812
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/mail/MailItem;->mNativeBodyType:Ljava/lang/String;

    .line 1818
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIncattachment:Ljava/lang/String;

    .line 1820
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1821
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->mailAttachment:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;

    .line 1823
    .local v10, attachment:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    new-instance v17, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;

    invoke-direct/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;-><init>()V

    .line 1824
    .local v17, pimMailAttach:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilename:Ljava/lang/String;

    .line 1825
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentFilePath:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilepath:Ljava/lang/String;

    .line 1826
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentEstimatedDataSize:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFileSize:Ljava/lang/String;

    .line 1827
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentFileRef:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mFilereference:Ljava/lang/String;

    .line 1828
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    .line 1829
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentContentId:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mContentId:Ljava/lang/String;

    .line 1831
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1835
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1836
    const-string v3, "0"

    iput-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    .line 1838
    const-string v3, "0"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    .line 1855
    :cond_5
    :goto_6
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->NaviteBodyType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->NaviteBodyType:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1856
    const-string v3, "0"

    iput-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    .line 1857
    const-string v3, "0"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    goto :goto_5

    .line 1753
    .end local v5           #threadTopic:Ljava/lang/String;
    .end local v9           #nPsuedoGroupId:[J
    .end local v10           #attachment:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v13           #group:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #pimMailAttach:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    .end local v18           #sMailBodyType_Text:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMESize:Ljava/lang/String;

    goto/16 :goto_1

    .line 1755
    :cond_7
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->EstimatedDataSize:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v12, "0"

    :goto_7
    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->EstimatedDataSize:Ljava/lang/String;

    goto :goto_7

    .line 1772
    :cond_9
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MessageClass:Ljava/lang/String;

    const-string v4, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1773
    const/4 v3, 0x6

    move-object/from16 v0, p4

    iput v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClassInt:I

    goto/16 :goto_2

    .line 1774
    :cond_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MessageClass:Ljava/lang/String;

    const-string v4, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1775
    const/4 v3, 0x7

    move-object/from16 v0, p4

    iput v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClassInt:I

    goto/16 :goto_2

    .line 1777
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iput v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClassInt:I

    goto/16 :goto_2

    .line 1789
    .restart local v5       #threadTopic:Ljava/lang/String;
    .restart local v9       #nPsuedoGroupId:[J
    :cond_c
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Subject:Ljava/lang/String;

    goto/16 :goto_3

    .line 1814
    .restart local v13       #group:Ljava/lang/String;
    .restart local v18       #sMailBodyType_Text:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->NaviteBodyType:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mNativeBodyType:Ljava/lang/String;

    goto/16 :goto_4

    .line 1839
    .restart local v10       #attachment:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v17       #pimMailAttach:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    :cond_e
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1840
    const-string v3, "1"

    iput-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    .line 1842
    const-string v3, "1"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    goto/16 :goto_6

    .line 1858
    :cond_f
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Type:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1862
    const-string v3, "0"

    iput-object v3, v10, Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;->AttachmentIsInLine:Ljava/lang/String;

    .line 1863
    const-string v3, "0"

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    goto/16 :goto_5

    .line 1869
    .end local v10           #attachment:Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #pimMailAttach:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    :cond_10
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->isMimeData:Z

    if-eqz v3, :cond_16

    .line 1872
    :try_start_0
    new-instance v16, Lcom/htc/android/mail/mimemessage/MimeMessage;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->MIMEData:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Lcom/htc/android/mail/mimemessage/MimeMessage;-><init>(Ljava/io/InputStream;)V

    .line 1873
    .local v16, message:Lcom/htc/android/mail/mimemessage/MimeMessage;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMimeData(Lcom/htc/android/mail/mimemessage/MimeMessage;Lcom/htc/android/mail/eassvc/mail/MailItem;Lcom/htc/android/mail/eassvc/common/EASEMail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1883
    .end local v16           #message:Lcom/htc/android/mail/mimemessage/MimeMessage;
    :goto_8
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1884
    const-string v3, "text/html"

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1885
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v3, :cond_11

    const-string v3, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v4, "preview: html preview"

    invoke-static {v3, v6, v7, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1886
    :cond_11
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mPreview:Ljava/lang/String;

    .line 1894
    :cond_12
    :goto_9
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mailAttach:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;

    .line 1895
    .local v15, item:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    iget-object v3, v15, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "0"

    iget-object v4, v15, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1896
    :cond_14
    const-string v3, "1"

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIncattachment:Ljava/lang/String;

    .line 1908
    .end local v15           #item:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    :cond_15
    :goto_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->AllDayEvent:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mAllDayEvent:Ljava/lang/String;

    .line 1909
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->StartTime:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mStartTime:Ljava/lang/String;

    .line 1910
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->DTStamp:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mDtStamp:Ljava/lang/String;

    .line 1911
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->EndTime:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mEndTime:Ljava/lang/String;

    .line 1912
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->InstanceType:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mInstanceType:Ljava/lang/String;

    .line 1913
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Location:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mLocation:Ljava/lang/String;

    .line 1914
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Organizer:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mOrganizer:Ljava/lang/String;

    .line 1915
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->RecurrenceId:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrenceId:Ljava/lang/String;

    .line 1916
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Reminder:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mReminder:Ljava/lang/String;

    .line 1917
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->ResponseRequested:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mResponseRequested:Ljava/lang/String;

    .line 1918
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Sensitivity:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mSensitivity:Ljava/lang/String;

    .line 1919
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->IntDBusyStatus:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIntDBusyStatus:Ljava/lang/String;

    .line 1920
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->TimeZone:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mTimezone:Ljava/lang/String;

    .line 1921
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->GlobalObjId:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mGlobalObjId:Ljava/lang/String;

    .line 1922
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Category:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mCategory:Ljava/lang/String;

    .line 1923
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Type:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Type:Ljava/lang/String;

    .line 1924
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Occurrences:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Occurrences:Ljava/lang/String;

    .line 1925
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Interval:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Interval:Ljava/lang/String;

    .line 1926
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_DayOfWeek:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_DayOfWeek:Ljava/lang/String;

    .line 1927
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_DayOfMonth:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_DayOfMonth:Ljava/lang/String;

    .line 1928
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_WeekOfMonth:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_WeekOfMonth:Ljava/lang/String;

    .line 1929
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_MonthOfYear:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_MonthOfYear:Ljava/lang/String;

    .line 1930
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Recurrence_Until:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mRecurrence_Until:Ljava/lang/String;

    .line 1931
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->FlagStatus:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessages_Flags:Ljava/lang/String;

    goto/16 :goto_0

    .line 1874
    .end local v14           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 1875
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 1878
    .end local v11           #e:Ljava/lang/Exception;
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->processMIMEType(Lcom/htc/android/mail/eassvc/common/EASEMail;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    .line 1879
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Data:Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    goto/16 :goto_8

    .line 1887
    :cond_17
    const-string v3, "text/plain"

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMimetype:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1888
    sget-boolean v3, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v3, :cond_18

    const-string v3, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v4, "preview: plain text preview"

    invoke-static {v3, v6, v7, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1889
    :cond_18
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mText:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mPreview:Ljava/lang/String;

    goto/16 :goto_9

    .line 1898
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v15       #item:Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;
    :cond_19
    iget-object v3, v15, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "1"

    iget-object v4, v15, Lcom/htc/android/mail/eassvc/mail/MailItem$pimAttachInfo;->mIsInLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClass:Ljava/lang/String;

    if-eqz v3, :cond_13

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mMessageClass:Ljava/lang/String;

    const-string v4, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1902
    const-string v3, "1"

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailItem;->mIncattachment:Ljava/lang/String;

    goto/16 :goto_a
.end method

.method public processAddFolder(Ljava/util/ArrayList;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, addFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    sget-boolean v13, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "MailManager"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v16, "> processAddFolder()"

    invoke-static/range {v13 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 939
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_3

    .line 940
    :cond_1
    const-string v13, "MailManager"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v16, "process add folder: parameter is null"

    invoke-static/range {v13 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1080
    :cond_2
    :goto_0
    return-void

    .line 943
    :cond_3
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-gtz v13, :cond_4

    .line 944
    const-string v13, "MailManager"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v16, "process add folder failed: account id is null"

    invoke-static/range {v13 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v6, defaultTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 950
    .local v12, userCreateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 951
    .local v9, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getFolderType(Ljava/lang/String;)I

    move-result v10

    .line 952
    .local v10, nType:I
    packed-switch v10, :pswitch_data_0

    .line 964
    :pswitch_0
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 954
    :pswitch_1
    const-string v13, "MailManager"

    const-string v14, "process add folder failed: folder type error"

    invoke-static {v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 961
    :pswitch_2
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 970
    .end local v9           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v10           #nType:I
    :cond_5
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 971
    const/4 v4, 0x0

    .line 972
    .local v4, cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v11, providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 974
    .restart local v9       #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 975
    iget-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    iput-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    .line 978
    :cond_6
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 979
    .local v5, cv:Landroid/content/ContentValues;
    const-string v13, "_undecodename"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v13, "_decodename"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v13, "_shortname"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v13, "_account"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 983
    const-string v13, "_serverid"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v13, "_parentid"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v13, "_type"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v13, "_synckey"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v13, "_enablesync"

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/eassvc/mail/MailManager;->isFolderEnable(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v13, "_default_sync"

    iget-boolean v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 990
    sget-object v13, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 991
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 992
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    const/4 v4, 0x0

    .line 994
    goto/16 :goto_2

    .line 997
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v9           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :cond_7
    :try_start_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "mail"

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .end local v4           #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_8
    :goto_3
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 1007
    const/4 v3, 0x0

    .line 1008
    .local v3, count:I
    const/4 v4, 0x0

    .line 1009
    .restart local v4       #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .restart local v11       #providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 1011
    .restart local v9       #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    const-string v13, "MailManager"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "process add folder type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v13 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1013
    iget-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1014
    iget-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    iput-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    .line 1017
    :cond_9
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    .restart local v5       #cv:Landroid/content/ContentValues;
    const-string v13, "_undecodename"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v13, "_decodename"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v13, "_shortname"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v13, "_account"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1022
    const-string v13, "_serverid"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string v13, "_parentid"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v13, "_type"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string v13, "_synckey"

    iget-object v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v13, "_enablesync"

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/android/mail/eassvc/mail/MailManager;->isFolderEnable(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string v13, "_default_sync"

    iget-boolean v14, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1029
    const/4 v2, 0x0

    .line 1030
    .local v2, column:Ljava/lang/String;
    iget-object v13, v9, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getFolderType(Ljava/lang/String;)I

    move-result v10

    .line 1031
    .restart local v10       #nType:I
    packed-switch v10, :pswitch_data_1

    .line 1054
    :goto_5
    sget-object v13, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1055
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1056
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    const/4 v4, 0x0

    .line 1059
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1060
    sget-object v13, Lcom/htc/android/mail/eassvc/pim/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1061
    .local v1, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1062
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1063
    invoke-virtual {v4, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1064
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    add-int/lit8 v3, v3, 0x1

    .line 1067
    .end local v1           #builder:Landroid/net/Uri$Builder;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 1068
    goto/16 :goto_4

    .line 1000
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #count:I
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v9           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v10           #nType:I
    :catch_0
    move-exception v7

    .line 1001
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1033
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v2       #column:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v5       #cv:Landroid/content/ContentValues;
    .restart local v9       #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v10       #nType:I
    :pswitch_3
    const-string v13, "_defaultfolder"

    const v14, 0x7fffffff

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string v2, "_defaultfolderId"

    .line 1035
    goto :goto_5

    .line 1037
    :pswitch_4
    const-string v13, "_defaultfolder"

    const v14, 0x7ffffffc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    const-string v2, "_draftfolderId"

    .line 1039
    goto :goto_5

    .line 1041
    :pswitch_5
    const-string v13, "_defaultfolder"

    const v14, 0x7ffffffe

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    const-string v2, "_trashfolderId"

    .line 1043
    goto :goto_5

    .line 1045
    :pswitch_6
    const-string v13, "_defaultfolder"

    const v14, 0x7ffffffd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1046
    const-string v2, "_sentfolderId"

    .line 1047
    goto/16 :goto_5

    .line 1049
    :pswitch_7
    const-string v13, "_defaultfolder"

    const v14, 0x7ffffffb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1050
    const-string v2, "_outfolderId"

    goto/16 :goto_5

    .line 1071
    .end local v2           #column:Ljava/lang/String;
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v9           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v10           #nType:I
    :cond_b
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 1072
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v14, "mail"

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1079
    .end local v3           #count:I
    .end local v4           #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_c
    :goto_6
    sget-boolean v13, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v13, :cond_2

    const-string v13, "MailManager"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v16, "< processAddFolder()"

    invoke-static/range {v13 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 1074
    .restart local v3       #count:I
    .restart local v4       #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v11       #providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_1
    move-exception v7

    .line 1075
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 952
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1031
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public processDelFolder(Ljava/util/ArrayList;)V
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1169
    .local p1, delFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "> process delete folder start"

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1170
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1171
    :cond_0
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "process delete folder failed: parameter is null"

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1235
    :goto_0
    return-void

    .line 1174
    :cond_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    .line 1175
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "process delete folder failed: account id is null"

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 1182
    :cond_2
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 1183
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1184
    .local v21, nSize:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move/from16 v0, v21

    if-ge v14, v0, :cond_b

    .line 1186
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v5, v6, v1, v2}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxIdByMailboxSvrId(JLjava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v17

    .line 1190
    .local v17, mailboxId:J
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_serverid=\'%s\' AND _account=%d"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v1, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    aput-object v1, v6, v7

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    .local v4, whereMailboxs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1192
    .local v13, curMailboxs:Landroid/database/Cursor;
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1193
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 1194
    .local v19, nId:J
    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 1195
    .local v11, builder:Landroid/net/Uri$Builder;
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1197
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delList["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] - mailbxs delete complete"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 1200
    .end local v11           #builder:Landroid/net/Uri$Builder;
    .end local v19           #nId:J
    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1201
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1206
    :cond_4
    const-wide/16 v1, 0x0

    cmp-long v1, v17, v1

    if-gtz v1, :cond_6

    .line 1184
    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1210
    :cond_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_mailboxId=%d AND _account=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1211
    .local v8, whereMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1212
    .local v12, curEasmessage:Landroid/database/Cursor;
    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1213
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v15, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1216
    .local v22, strId:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1217
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1221
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1222
    const-string v1, ","

    const/4 v2, 0x1

    invoke-static {v15, v1, v2}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 1223
    .local v16, idSeq:Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_id in (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 1224
    .local v23, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1227
    .end local v16           #idSeq:Ljava/lang/String;
    .end local v23           #where:Ljava/lang/String;
    :cond_9
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v1, :cond_a

    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delList["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] - messages delete complete"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 1230
    .end local v15           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22           #strId:Ljava/lang/String;
    :cond_a
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1231
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1234
    .end local v4           #whereMailboxs:Ljava/lang/String;
    .end local v8           #whereMessage:Ljava/lang/String;
    .end local v12           #curEasmessage:Landroid/database/Cursor;
    .end local v13           #curMailboxs:Landroid/database/Cursor;
    .end local v17           #mailboxId:J
    :cond_b
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "< process delete folder finish"

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public processMailAdd(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;)Ljava/util/ArrayList;
    .locals 4
    .parameter "mailboxId"
    .parameter "syncKey"
    .parameter "easEmail"
    .parameter "msgTable"
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            "Landroid/net/Uri;",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailManager"

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "- processMailAdd()"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1287
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/htc/android/mail/eassvc/mail/MailManager;->addOrUpdateMail(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public processMailChangeList(JLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)Z
    .locals 32
    .parameter "mailboxId"
    .parameter "syncKey"
    .parameter
    .parameter
    .parameter
    .parameter "msgTableUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1496
    .local p4, updObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail;>;"
    .local p5, delObjList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail;>;"
    .local p6, attachList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v5, "- processChangeList()"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 1498
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v0, p1

    invoke-static {v2, v3, v0, v1}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v24

    .line 1499
    .local v24, summariesUri:Landroid/net/Uri;
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addOrUpdateMail: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1504
    :cond_1
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1507
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCheckPoint()V

    .line 1509
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    .local v28, updList_read:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1511
    .local v29, updList_unRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    .local v25, updList_flag0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1513
    .local v26, updList_flag1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1515
    .local v27, updList_flag2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .local v18, i:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v21

    .local v21, listSize:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 1516
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/common/EASEMail;

    .line 1517
    .local v6, easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 1515
    :cond_2
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1521
    :cond_3
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->DateReceived:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1522
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v5, "mail update: DateReceived is not null"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1523
    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lcom/htc/android/mail/eassvc/mail/MailManager;->addOrUpdateMail(JLjava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Landroid/net/Uri;Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMailSyncResult;)Ljava/util/ArrayList;

    move-result-object v20

    .line 1524
    .local v20, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    if-eqz v20, :cond_2

    .line 1525
    move-object/from16 v0, p6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1649
    .end local v6           #easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .end local v18           #i:I
    .end local v20           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASEMail$AttachInfo;>;"
    .end local v21           #listSize:I
    .end local v25           #updList_flag0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #updList_flag1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27           #updList_flag2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #updList_read:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29           #updList_unRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 1650
    .local v16, e:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_6

    .line 1651
    throw v16

    .line 1530
    .end local v16           #e:Lcom/htc/android/mail/eassvc/core/SyncException;
    .restart local v6       #easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v18       #i:I
    .restart local v21       #listSize:I
    .restart local v25       #updList_flag0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26       #updList_flag1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27       #updList_flag2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28       #updList_read:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v29       #updList_unRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    iget-object v0, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->Read:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1531
    .local v23, read:Ljava/lang/String;
    iget-object v0, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->FlagStatus:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1533
    .local v17, flag:Ljava/lang/String;
    if-eqz v23, :cond_7

    const-string v2, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1534
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    :cond_5
    :goto_2
    if-eqz v17, :cond_8

    const-string v2, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1539
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1652
    .end local v6           #easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .end local v17           #flag:Ljava/lang/String;
    .end local v18           #i:I
    .end local v21           #listSize:I
    .end local v23           #read:Ljava/lang/String;
    .end local v25           #updList_flag0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #updList_flag1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27           #updList_flag2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #updList_read:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29           #updList_unRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v16

    .line 1653
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1661
    .end local v16           #e:Ljava/lang/Exception;
    :cond_6
    :goto_3
    if-eqz p5, :cond_17

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 1663
    const/16 v22, 0x0

    .line 1664
    .local v22, nSize:I
    new-instance v14, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;

    invoke-direct {v14}, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;-><init>()V

    .line 1665
    .local v14, delMail:Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;
    const/16 v18, 0x0

    .restart local v18       #i:I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v21

    .restart local v21       #listSize:I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    .line 1666
    move-object/from16 v0, p5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/common/EASEMail;

    .line 1667
    .restart local v6       #easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1665
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1535
    .end local v14           #delMail:Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;
    .end local v22           #nSize:I
    .restart local v17       #flag:Ljava/lang/String;
    .restart local v23       #read:Ljava/lang/String;
    .restart local v25       #updList_flag0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26       #updList_flag1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v27       #updList_flag2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v28       #updList_read:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v29       #updList_unRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    if-eqz v23, :cond_5

    :try_start_2
    const-string v2, "0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1536
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1540
    :cond_8
    if-eqz v17, :cond_9

    const-string v2, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1541
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1542
    :cond_9
    if-eqz v17, :cond_2

    const-string v2, "2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1543
    iget-object v2, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1546
    .end local v6           #easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .end local v17           #flag:Ljava/lang/String;
    .end local v23           #read:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCheckPoint()V

    .line 1547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getCurrentItemNum()J

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCurrentItemNum(J)V

    .line 1549
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1550
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1551
    .local v13, cv:Landroid/content/ContentValues;
    const-string v2, "_read"

    const-string v3, "1"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 1554
    .local v19, idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account=%d AND _uid in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1556
    .local v31, whereUId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getClientIds(Ljava/lang/String;)[J

    move-result-object v11

    .line 1558
    .local v11, messageIds:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v13, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 1559
    .local v30, updUID:I
    if-nez v30, :cond_b

    .line 1560
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processChangeList() updList_read fail: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1563
    :cond_b
    if-eqz v11, :cond_c

    .line 1564
    new-instance v7, Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-direct {v7}, Lcom/htc/android/mail/MailEventBroadcaster;-><init>()V

    .line 1565
    .local v7, mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendSetReadStatusIntent(Landroid/content/Context;J[JI)V

    .line 1569
    .end local v7           #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    .end local v11           #messageIds:[J
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #idSeq:Ljava/lang/String;
    .end local v30           #updUID:I
    .end local v31           #whereUId:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 1570
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1571
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v2, "_read"

    const-string v3, "0"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 1574
    .restart local v19       #idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account=%d AND _uid in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1576
    .restart local v31       #whereUId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getClientIds(Ljava/lang/String;)[J

    move-result-object v11

    .line 1578
    .restart local v11       #messageIds:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v13, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 1579
    .restart local v30       #updUID:I
    if-nez v30, :cond_d

    .line 1580
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processChangeList() updList_read fail: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1583
    :cond_d
    if-eqz v11, :cond_e

    .line 1584
    new-instance v7, Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-direct {v7}, Lcom/htc/android/mail/MailEventBroadcaster;-><init>()V

    .line 1585
    .restart local v7       #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendSetReadStatusIntent(Landroid/content/Context;J[JI)V

    .line 1589
    .end local v7           #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    .end local v11           #messageIds:[J
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #idSeq:Ljava/lang/String;
    .end local v30           #updUID:I
    .end local v31           #whereUId:Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 1590
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1591
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v2, "_flags"

    const-string v3, "0"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 1594
    .restart local v19       #idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account=%d AND _uid in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1596
    .restart local v31       #whereUId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getClientIds(Ljava/lang/String;)[J

    move-result-object v11

    .line 1598
    .restart local v11       #messageIds:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v13, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 1599
    .restart local v30       #updUID:I
    if-nez v30, :cond_f

    .line 1600
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processChangeList() updList_flag0 fail: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1603
    :cond_f
    if-eqz v11, :cond_10

    .line 1604
    new-instance v7, Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-direct {v7}, Lcom/htc/android/mail/MailEventBroadcaster;-><init>()V

    .line 1605
    .restart local v7       #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendMarkStarIntent(Landroid/content/Context;J[JI)V

    .line 1609
    .end local v7           #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    .end local v11           #messageIds:[J
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #idSeq:Ljava/lang/String;
    .end local v30           #updUID:I
    .end local v31           #whereUId:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 1610
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1611
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v2, "_flags"

    const-string v3, "1"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 1614
    .restart local v19       #idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account=%d AND _uid in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1616
    .restart local v31       #whereUId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getClientIds(Ljava/lang/String;)[J

    move-result-object v11

    .line 1618
    .restart local v11       #messageIds:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v13, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 1619
    .restart local v30       #updUID:I
    if-nez v30, :cond_11

    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_11

    .line 1620
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processChangeList() updList_flag1 fail: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1623
    :cond_11
    if-eqz v11, :cond_12

    .line 1624
    new-instance v7, Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-direct {v7}, Lcom/htc/android/mail/MailEventBroadcaster;-><init>()V

    .line 1625
    .restart local v7       #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendMarkStarIntent(Landroid/content/Context;J[JI)V

    .line 1629
    .end local v7           #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    .end local v11           #messageIds:[J
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #idSeq:Ljava/lang/String;
    .end local v30           #updUID:I
    .end local v31           #whereUId:Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1630
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1631
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v2, "_flags"

    const-string v3, "2"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const-string v2, ","

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 1634
    .restart local v19       #idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account=%d AND _uid in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1636
    .restart local v31       #whereUId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getClientIds(Ljava/lang/String;)[J

    move-result-object v11

    .line 1638
    .restart local v11       #messageIds:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v13, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v30

    .line 1639
    .restart local v30       #updUID:I
    if-nez v30, :cond_13

    .line 1640
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processChangeList() updList_flag2 fail: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1643
    :cond_13
    if-eqz v11, :cond_6

    .line 1644
    new-instance v7, Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-direct {v7}, Lcom/htc/android/mail/MailEventBroadcaster;-><init>()V

    .line 1645
    .restart local v7       #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const/4 v12, 0x2

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendMarkStarIntent(Landroid/content/Context;J[JI)V
    :try_end_2
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 1671
    .end local v7           #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    .end local v11           #messageIds:[J
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #idSeq:Ljava/lang/String;
    .end local v25           #updList_flag0:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #updList_flag1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v27           #updList_flag2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v28           #updList_read:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29           #updList_unRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30           #updUID:I
    .end local v31           #whereUId:Ljava/lang/String;
    .restart local v6       #easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    .restart local v14       #delMail:Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;
    .restart local v22       #nSize:I
    :cond_14
    add-int/lit8 v22, v22, 0x1

    .line 1672
    iget-object v2, v14, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    iget-object v3, v6, Lcom/htc/android/mail/eassvc/common/EASEMail;->ServerID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1675
    .end local v6           #easEMail:Lcom/htc/android/mail/eassvc/common/EASEMail;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCheckPoint()V

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mMailSyncSrc:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getCurrentItemNum()J

    move-result-wide v3

    move/from16 v0, v22

    int-to-long v8, v0

    add-long/2addr v3, v8

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCurrentItemNum(J)V

    .line 1678
    iget-object v2, v14, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    iget-object v2, v14, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 1679
    iget-object v2, v14, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    const-string v3, ","

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/database/ExchangeUtil;->combine(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v19

    .line 1680
    .restart local v19       #idSeq:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_account=%d AND _uid in (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    aput-object v19, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 1683
    .restart local v31       #whereUId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->getClientIds(Ljava/lang/String;)[J

    move-result-object v11

    .line 1685
    .restart local v11       #messageIds:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1686
    .local v15, delUID:I
    if-gtz v15, :cond_16

    .line 1687
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processChangeList() delObj fail: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v14, Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;->mailSvrId:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1690
    :cond_16
    if-eqz v11, :cond_17

    .line 1691
    new-instance v7, Lcom/htc/android/mail/MailEventBroadcaster;

    invoke-direct {v7}, Lcom/htc/android/mail/MailEventBroadcaster;-><init>()V

    .line 1692
    .restart local v7       #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v7, v2, v3, v4, v11}, Lcom/htc/android/mail/MailEventBroadcaster;->sendDeleteMailIntent(Landroid/content/Context;J[J)V

    .line 1697
    .end local v7           #mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;
    .end local v11           #messageIds:[J
    .end local v14           #delMail:Lcom/htc/android/mail/eassvc/pim/EASDeleteItems;
    .end local v15           #delUID:I
    .end local v18           #i:I
    .end local v19           #idSeq:Ljava/lang/String;
    .end local v21           #listSize:I
    .end local v22           #nSize:I
    .end local v31           #whereUId:Ljava/lang/String;
    :cond_17
    const/4 v2, 0x1

    return v2
.end method

.method public processMoveMailFail(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z
    .locals 1
    .parameter "moveItems"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->processMoveMailFail(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z

    move-result v0

    return v0
.end method

.method public processMoveMailSuccess(Ljava/util/ArrayList;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 747
    .local p1, moveMailRespList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMoveItemsResp;>;"
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->processMoveMailSuccess(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method public processUpdFolder(Ljava/util/ArrayList;)V
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1089
    .local p1, updFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "> processUpdFolder()"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 1091
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1092
    :cond_1
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "process update folder failed: parameter is null"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1161
    :cond_2
    :goto_0
    return-void

    .line 1095
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_4

    .line 1096
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "process update folder failed: account id is null"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 1103
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1104
    .local v20, providerOpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x0

    .line 1105
    .local v11, curMailboxsUpd:Landroid/database/Cursor;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 1106
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1107
    .local v19, nSize:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 1109
    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v0, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1110
    .local v21, shortName:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v13, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    .line 1111
    .local v13, decodeName:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1112
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Upd folder: can\'t retrieve hierarchyName: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 1113
    move-object/from16 v13, v21

    .line 1116
    :cond_5
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1117
    .local v12, cv:Landroid/content/ContentValues;
    const-string v2, "_undecodename"

    move-object/from16 v0, v21

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v2, "_decodename"

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v2, "_shortname"

    move-object/from16 v0, v21

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const-string v2, "_account"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string v3, "_serverid"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string v3, "_parentid"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v3, "_type"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v3, "_synckey"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/eassvc/mail/MailManager;->isFolderEnable(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)I

    move-result v15

    .line 1126
    .local v15, enableSync:I
    const-string v2, "_enablesync"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    const-string v3, "_default_sync"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-boolean v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1129
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_serverid=\'%s\' AND _account=%d"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    aput-object v2, v7, v22

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v7, v2

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1130
    .local v5, whereMailbox:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1131
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1132
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1134
    .local v17, nId:J
    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1135
    .local v8, builder:Landroid/net/Uri$Builder;
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1138
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1139
    .local v9, cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1140
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 1141
    .local v10, cpOperation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #cpOperation:Landroid/content/ContentProviderOperation;
    .end local v17           #nId:J
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1147
    .end local v5           #whereMailbox:Ljava/lang/String;
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v13           #decodeName:Ljava/lang/String;
    .end local v15           #enableSync:I
    .end local v21           #shortName:Ljava/lang/String;
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1107
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1143
    :catch_0
    move-exception v14

    .line 1144
    .local v14, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1146
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1147
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1146
    :cond_8
    throw v2

    .line 1153
    :cond_9
    if-eqz v20, :cond_a

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "mail"

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1160
    :cond_a
    :goto_3
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "< processUpdFolder()"

    invoke-static {v2, v6, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 1156
    :catch_1
    move-exception v14

    .line 1157
    .restart local v14       #e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public release()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->release()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    .line 98
    :cond_0
    return-void
.end method

.method public removeAllSyncMessages(Ljava/lang/String;)Z
    .locals 12
    .parameter "collectionSvrId"

    .prologue
    .line 2660
    sget-boolean v7, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MailManager"

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "> removeAllSyncMessages: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2661
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2662
    const-string v7, "MailManager"

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v10, "remove all sync messages fail: parameter is null"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2663
    const/4 v0, 0x0

    .line 2696
    :cond_1
    :goto_0
    return v0

    .line 2666
    :cond_2
    const/4 v0, 0x0

    .line 2667
    .local v0, bRet:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2668
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 2671
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    :try_start_0
    iget-wide v7, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v8, p1, v9}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxIdByMailboxSvrId(JLjava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v3

    .line 2672
    .local v3, mailboxId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-gtz v7, :cond_4

    .line 2673
    const-string v7, "MailManager"

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v10, "remove all sync messages fail: can not retrieve mail box id"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2690
    .end local v3           #mailboxId:J
    :catch_0
    move-exception v2

    .line 2691
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "MailManager"

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v7, v8, v9, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V

    .line 2692
    const/4 v0, 0x0

    .line 2695
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_1
    sget-boolean v7, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "MailManager"

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "< removeAllSyncMessages: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 2676
    .restart local v3       #mailboxId:J
    :cond_4
    :try_start_1
    sget-object v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MESSAGES_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2677
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_account = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND _mailboxId = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND _uid is not null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2678
    .local v6, where:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2679
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    sget-object v7, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASTRACKING_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2682
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_accountId = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND _collectionId = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2683
    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2684
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 2687
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "mail"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2688
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public retrieveCollectionFromDB(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2391
    .local p1, svrCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 2429
    :cond_0
    :goto_0
    return-void

    .line 2395
    :cond_1
    const/4 v7, 0x0

    .line 2397
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2399
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_account=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2400
    .local v3, where:Ljava/lang/String;
    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->MAILBOXS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2401
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 2425
    :cond_2
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2426
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v3           #where:Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2406
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #where:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v1, "_undecodename"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2407
    .local v9, name:Ljava/lang/String;
    const-string v1, "_serverid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2408
    .local v11, svrCollId:Ljava/lang/String;
    const-string v1, "_parentid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2409
    .local v10, parentId:Ljava/lang/String;
    const-string v1, "_type"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2411
    .local v12, type:Ljava/lang/String;
    new-instance v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    invoke-direct {v6}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;-><init>()V

    .line 2412
    .local v6, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iput-object v9, v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    .line 2413
    iput-object v10, v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    .line 2414
    iput-object v11, v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    .line 2415
    iput-object v12, v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    .line 2416
    invoke-direct {p0, v6}, Lcom/htc/android/mail/eassvc/mail/MailManager;->setCollectionSyncUp_Down(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)V

    .line 2418
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 2425
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2422
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #parentId:Ljava/lang/String;
    .end local v11           #svrCollId:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2423
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2425
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2426
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2425
    :cond_4
    throw v1
.end method

.method public saveMailboxInfo(JLjava/util/ArrayList;)Z
    .locals 13
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2506
    .local p3, svrCollectionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_2

    .line 2507
    :cond_0
    const-string v10, "MailManager"

    const-string v11, "save mail box info failed: collection is empty"

    invoke-static {v10, p1, p2, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2508
    const/4 v0, 0x0

    .line 2557
    :cond_1
    :goto_0
    return v0

    .line 2511
    :cond_2
    sget-boolean v10, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "MailManager"

    const-string v11, "> saveMailboxInfo"

    invoke-static {v10, p1, p2, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2513
    :cond_3
    const/4 v0, 0x0

    .line 2514
    .local v0, bRet:Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2515
    .local v8, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 2516
    .local v2, cpBuilder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v3, 0x0

    .line 2518
    .local v3, cv:Landroid/content/ContentValues;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    move-object v4, v3

    .end local v3           #cv:Landroid/content/ContentValues;
    .local v4, cv:Landroid/content/ContentValues;
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;

    .line 2519
    .local v1, collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    iget-object v10, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "-1"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2520
    :cond_5
    sget-boolean v10, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "MailManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveMailBoxInfo ERROR! collection Id null: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, p1, p2, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2552
    .end local v1           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 2553
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v7           #i$:Ljava/util/Iterator;
    .restart local v3       #cv:Landroid/content/ContentValues;
    .local v5, e:Ljava/lang/Exception;
    :goto_2
    const-string v10, "MailManager"

    invoke-static {v10, p1, p2, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V

    .line 2556
    .end local v5           #e:Ljava/lang/Exception;
    :goto_3
    sget-boolean v10, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "MailManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "< saveMailboxInfo: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, p1, p2, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 2523
    .end local v3           #cv:Landroid/content/ContentValues;
    .restart local v1       #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .restart local v4       #cv:Landroid/content/ContentValues;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2524
    .end local v4           #cv:Landroid/content/ContentValues;
    .restart local v3       #cv:Landroid/content/ContentValues;
    :try_start_3
    const-string v10, "_parentid"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ParentID:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    const-string v10, "_serverid"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    const-string v10, "_synckey"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->SyncKey:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    const-string v10, "_type"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    const-string v10, "_undecodename"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    const-string v10, "_shortname"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->DisplayName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    const-string v10, "_decodename"

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->HierarchyName:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    invoke-direct {p0, v1}, Lcom/htc/android/mail/eassvc/mail/MailManager;->isFolderEnable(Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;)I

    move-result v6

    .line 2532
    .local v6, enableSync:I
    const-string v10, "_enablesync"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2533
    const-string v10, "_default_sync"

    iget-boolean v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->defaultSync:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2535
    sget-object v10, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMAILBOXS_URI:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2537
    iget-object v10, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2538
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_type=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->Type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' AND _account="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2542
    .local v9, selection:Ljava/lang/String;
    :goto_4
    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2543
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2545
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    .line 2546
    .end local v3           #cv:Landroid/content/ContentValues;
    .restart local v4       #cv:Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 2540
    .end local v4           #cv:Landroid/content/ContentValues;
    .end local v9           #selection:Ljava/lang/String;
    .restart local v3       #cv:Landroid/content/ContentValues;
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_serverid=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;->ServerID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' AND _account="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    .restart local v9       #selection:Ljava/lang/String;
    goto :goto_4

    .line 2548
    .end local v1           #collection:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASCollection;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v6           #enableSync:I
    .end local v9           #selection:Ljava/lang/String;
    .restart local v4       #cv:Landroid/content/ContentValues;
    :cond_9
    if-eqz v8, :cond_a

    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_a

    .line 2549
    iget-object v10, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "mail"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2551
    :cond_a
    const/4 v0, 0x1

    move-object v3, v4

    .line 2554
    .end local v4           #cv:Landroid/content/ContentValues;
    .restart local v3       #cv:Landroid/content/ContentValues;
    goto/16 :goto_3

    .line 2552
    .end local v7           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method

.method public setMoveMailFlag(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;I)Z
    .locals 1
    .parameter "moveItems"
    .parameter "flag"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mTrackManager:Lcom/htc/android/mail/eassvc/mail/MailTrackManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/mail/MailTrackManager;->setMoveMailFlag(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;I)Z

    move-result v0

    return v0
.end method

.method public setSyncOptions(Lcom/htc/android/mail/eassvc/pim/EASOptions;)V
    .locals 0
    .parameter "syncOption"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mSyncOptions:Lcom/htc/android/mail/eassvc/pim/EASOptions;

    .line 91
    return-void
.end method

.method public updateAccountLastUpdateTime()V
    .locals 4

    .prologue
    .line 2378
    sget-boolean v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailManager"

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "- updateAccountLastUpdateTime()"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2379
    :cond_0
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 2380
    const-string v0, "MailManager"

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v3, "update account last update time failed: Account id is null"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2384
    :goto_0
    return-void

    .line 2383
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastAccountLastUpdateTime(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public updateAttachment(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .parameter "strFileRef"
    .parameter "strSavePath"
    .parameter "globalAttach"

    .prologue
    .line 480
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MailManager"

    iget-wide v6, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "> updateAttachment: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 481
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 482
    :cond_1
    const-string v5, "MailManager"

    iget-wide v6, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v8, "Update attachment failed: parameter is null"

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    .line 505
    :cond_2
    :goto_0
    return v0

    .line 486
    :cond_3
    const/4 v0, 0x0

    .line 487
    .local v0, bRet:Z
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 488
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "_filepath"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v3, 0x0

    .line 491
    .local v3, partsURI:Landroid/net/Uri;
    if-nez p3, :cond_5

    .line 492
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    .line 496
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_account="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    .local v4, where:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND _filereference="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {v4, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 499
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 500
    .local v2, nRow:I
    if-lez v2, :cond_4

    .line 501
    const/4 v0, 0x1

    .line 504
    :cond_4
    sget-boolean v5, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "MailManager"

    iget-wide v6, p0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "< updateAttachment: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 494
    .end local v2           #nRow:I
    .end local v4           #where:Ljava/lang/StringBuilder;
    :cond_5
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    goto :goto_1
.end method

.method public updateDownloadedSize(Ljava/lang/String;Z)Z
    .locals 30
    .parameter "strFileReference"
    .parameter "globalAttach"

    .prologue
    .line 512
    sget-boolean v6, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MailManager"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "> updateDownloadedSize: "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v28, ", "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v10, v11, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 513
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 514
    const-string v6, "MailManager"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v7, "update downloaded size failed: parameter is null"

    invoke-static {v6, v10, v11, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 515
    const/4 v13, 0x0

    .line 588
    :cond_1
    :goto_0
    return v13

    .line 518
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 520
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v12, -0x1

    .line 521
    .local v12, attachSize:I
    const-wide/16 v25, -0x1

    .line 522
    .local v25, originalDLSize:J
    const-wide/16 v20, -0x1

    .line 523
    .local v20, messageSize:J
    const-wide/16 v18, 0x0

    .line 524
    .local v18, messageId:J
    const/4 v13, 0x0

    .line 526
    .local v13, bRet:Z
    const/16 v22, 0x0

    .line 527
    .local v22, messagesURI:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 528
    .local v3, partsURI:Landroid/net/Uri;
    if-nez p2, :cond_5

    .line 529
    sget-object v22, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    .line 530
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    .line 537
    :goto_1
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_message"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "_filesize"

    aput-object v7, v4, v6

    .line 538
    .local v4, partsProj:[Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_account=%d AND _filereference=\'%s\'"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, partsWhere:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 540
    .local v16, curParts:Landroid/database/Cursor;
    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 541
    const-string v6, "_message"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 542
    const-string v6, "_filesize"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 544
    :cond_3
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 545
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-gtz v6, :cond_6

    .line 548
    const-string v6, "MailManager"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v7, "Cannot get the download mail messageId from parts table"

    invoke-static {v6, v10, v11, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 549
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 532
    .end local v4           #partsProj:[Ljava/lang/String;
    .end local v5           #partsWhere:Ljava/lang/String;
    .end local v16           #curParts:Landroid/database/Cursor;
    :cond_5
    sget-object v22, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 533
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    goto :goto_1

    .line 553
    .restart local v4       #partsProj:[Ljava/lang/String;
    .restart local v5       #partsWhere:Ljava/lang/String;
    .restart local v16       #curParts:Landroid/database/Cursor;
    :cond_6
    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_readsize"

    aput-object v7, v8, v6

    const/4 v6, 0x1

    const-string v7, "_downloadtotalsize"

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-string v7, "_messagesize"

    aput-object v7, v8, v6

    .line 554
    .local v8, msgProj:[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 555
    .local v9, msgWhere:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    move-object/from16 v7, v22

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 556
    .local v15, curMsg:Landroid/database/Cursor;
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 557
    const-string v6, "_downloadtotalsize"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v25, v0

    .line 558
    const-string v6, "_messagesize"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v20, v0

    .line 561
    :cond_7
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    .line 562
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 564
    :cond_8
    const-wide/16 v6, -0x1

    cmp-long v6, v25, v6

    if-eqz v6, :cond_9

    const-wide/16 v6, -0x1

    cmp-long v6, v20, v6

    if-nez v6, :cond_a

    .line 565
    :cond_9
    const-string v6, "MailManager"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v7, "Can\'t get the _downloadtotalsize or messageSize column from easmessages table"

    invoke-static {v6, v10, v11, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 566
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 570
    :cond_a
    int-to-long v6, v12

    add-long v23, v25, v6

    .line 573
    .local v23, newSize:J
    cmp-long v6, v23, v20

    if-lez v6, :cond_b

    .line 574
    move-wide/from16 v23, v20

    .line 577
    :cond_b
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 578
    .local v17, cv:Landroid/content/ContentValues;
    const-string v6, "_downloadtotalsize"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v14

    .line 581
    .local v14, builder:Landroid/net/Uri$Builder;
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 582
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v6, v0, v7, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v27

    .line 583
    .local v27, upd:I
    if-lez v27, :cond_c

    .line 584
    const/4 v13, 0x1

    .line 587
    :cond_c
    sget-boolean v6, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "MailManager"

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< updateDownloadedSize: "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v10, v11, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateMailAction(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .parameter "collId"
    .parameter "uid"
    .parameter "action"

    .prologue
    .line 2294
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "> updateMailAction: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2295
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p3, :cond_3

    .line 2296
    :cond_1
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "updateMailAction error: parameter is null"

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2331
    :cond_2
    :goto_0
    return-void

    .line 2299
    :cond_3
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0, v5}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxIdByMailboxSvrId(JLjava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v11

    .line 2300
    .local v11, mailboxId:J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2301
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "_mailAct"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    const/4 v10, 0x0

    .line 2304
    .local v10, id:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 2305
    .local v3, proj:[Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_account=%d AND _uid=\'%s\' AND _mailboxId=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v5, v6

    invoke-static {v1, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2306
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2307
    .local v8, cur:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2308
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2310
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2311
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2313
    :cond_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2314
    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "updateMailAction error: Can not get id"

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2318
    :cond_6
    sget-object v1, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2319
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v7, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v9, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2321
    sget-boolean v1, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v2, "< updateMailAction"

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2324
    :cond_7
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_8

    .line 2326
    sget-object v1, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    aput-wide v15, v13, v14

    invoke-virtual {v1, v2, v5, v6, v13}, Lcom/htc/android/mail/MailEventBroadcaster;->sendReplyMailCount(Landroid/content/Context;J[J)V

    goto/16 :goto_0

    .line 2327
    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    .line 2329
    sget-object v1, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    aput-wide v15, v13, v14

    invoke-virtual {v1, v2, v5, v6, v13}, Lcom/htc/android/mail/MailEventBroadcaster;->sendForwardMailCount(Landroid/content/Context;J[J)V

    goto/16 :goto_0
.end method

.method public updateMailBody(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/EASEMail;Z)Z
    .locals 34
    .parameter "uid"
    .parameter "email"
    .parameter "globalMail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMailBody: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 197
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "update mail body error: parameter is null"

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 199
    const/16 v17, 0x0

    .line 320
    :cond_1
    :goto_0
    return v17

    .line 200
    :cond_2
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-wide/16 v9, 0x0

    cmp-long v2, v5, v9

    if-gtz v2, :cond_3

    .line 201
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "update mail body error accountId is null"

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 202
    const/16 v17, 0x0

    goto :goto_0

    .line 205
    :cond_3
    const/16 v17, 0x0

    .line 206
    .local v17, bRet:Z
    const/16 v19, 0x0

    .line 207
    .local v19, curMessage:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 208
    .local v11, curParts:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 209
    .local v3, messagesURI:Landroid/net/Uri;
    const/16 v24, 0x0

    .line 210
    .local v24, partsURI:Landroid/net/Uri;
    if-nez p3, :cond_6

    .line 211
    sget-object v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASMESSAGES_URI:Landroid/net/Uri;

    .line 212
    sget-object v24, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EASPARTS_URI:Landroid/net/Uri;

    .line 220
    :goto_1
    const/4 v2, 0x6

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "_mailboxId"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_readsize"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "_readtotalsize"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "_downloadtotalsize"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "_messagesize"

    aput-object v5, v4, v2

    .line 221
    .local v4, strProjection:[Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    const-string v2, "_account="

    move-object/from16 v0, v31

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .local v31, whereClause:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND _uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 225
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_7

    .line 226
    :cond_4
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "update mail body failed: Cannot find this mail record in database #1"

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    const/16 v17, 0x0

    .line 308
    .end local v17           #bRet:Z
    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 309
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 310
    const/16 v19, 0x0

    .line 312
    :cond_5
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 314
    :goto_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 214
    .end local v4           #strProjection:[Ljava/lang/String;
    .end local v31           #whereClause:Ljava/lang/StringBuilder;
    .restart local v17       #bRet:Z
    :cond_6
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrMessagesURI:Landroid/net/Uri;

    .line 215
    sget-object v24, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 230
    .restart local v4       #strProjection:[Ljava/lang/String;
    .restart local v31       #whereClause:Ljava/lang/StringBuilder;
    :cond_7
    :try_start_1
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 231
    .local v13, messageId:J
    const-string v2, "_mailboxId"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 232
    .local v15, mailboxId:J
    const-string v2, "_readtotalsize"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 233
    .local v28, totalSize:J
    const-string v2, "_readsize"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 234
    .local v22, nOriginalReadSize:I
    const-string v2, "_downloadtotalsize"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 235
    .local v23, nOriginaldlSize:I
    const-string v2, "_messagesize"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 237
    .local v21, nMessageSize:I
    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v7, v2

    const/4 v2, 0x1

    const-string v5, "_filename"

    aput-object v5, v7, v2

    const/4 v2, 0x2

    const-string v5, "_text"

    aput-object v5, v7, v2

    .line 238
    .local v7, strPartsProjection:[Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_account=%d AND _message=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, whereParts:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, v24

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 240
    if-nez v11, :cond_9

    .line 241
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "update mail body failed: Cannot find this mail record in database #2"

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    const/16 v17, 0x0

    .line 308
    .end local v17           #bRet:Z
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8

    .line 309
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 310
    const/16 v19, 0x0

    .line 312
    :cond_8
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 246
    .restart local v17       #bRet:Z
    :cond_9
    const/16 v30, 0x0

    .local v30, updateMailBody:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;
    move-object/from16 v9, p0

    move-object/from16 v10, v24

    move-object/from16 v12, p2

    .line 247
    :try_start_2
    invoke-direct/range {v9 .. v16}, Lcom/htc/android/mail/eassvc/mail/MailManager;->updateMailBody_body(Landroid/net/Uri;Landroid/database/Cursor;Lcom/htc/android/mail/eassvc/common/EASEMail;JJ)Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;

    move-result-object v30

    .line 250
    const-wide/16 v25, 0x0

    .line 251
    .local v25, readSize:J
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Truncated:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASEMail;->Truncated:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 259
    :cond_a
    move-wide/from16 v25, v28

    .line 269
    :goto_3
    const/16 v20, 0x0

    .line 271
    .local v20, cv:Landroid/content/ContentValues;
    const-wide/16 v5, 0x0

    cmp-long v2, v25, v5

    if-lez v2, :cond_d

    .line 272
    move/from16 v0, v23

    int-to-long v5, v0

    move/from16 v0, v22

    int-to-long v9, v0

    sub-long v9, v25, v9

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v23, v0

    .line 275
    move/from16 v0, v23

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 276
    move/from16 v23, v21

    .line 278
    :cond_b
    if-nez v20, :cond_c

    .line 279
    new-instance v20, Landroid/content/ContentValues;

    .end local v20           #cv:Landroid/content/ContentValues;
    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .restart local v20       #cv:Landroid/content/ContentValues;
    :cond_c
    const-string v2, "_readSize"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const-string v2, "_downloadtotalsize"

    move/from16 v0, v23

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_d
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 287
    if-nez v20, :cond_e

    .line 288
    new-instance v20, Landroid/content/ContentValues;

    .end local v20           #cv:Landroid/content/ContentValues;
    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .restart local v20       #cv:Landroid/content/ContentValues;
    :cond_e
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_15

    const-string v2, "text/html"

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 291
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "updMailBody: html preview"

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 292
    :cond_f
    const-string v2, "_preview"

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/android/mail/MailCommon;->converHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_10
    :goto_4
    if-eqz v20, :cond_11

    .line 300
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 301
    .local v18, builder:Landroid/net/Uri$Builder;
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v5, v0, v6, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v27

    .line 303
    .local v27, row:I
    if-lez v27, :cond_11

    .line 304
    const/16 v17, 0x1

    .line 308
    .end local v18           #builder:Landroid/net/Uri$Builder;
    .end local v27           #row:I
    :cond_11
    if-eqz v19, :cond_12

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_12

    .line 309
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 310
    const/16 v19, 0x0

    .line 312
    :cond_12
    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_13

    .line 313
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 314
    const/4 v11, 0x0

    .line 317
    :cond_13
    if-nez v17, :cond_1

    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 318
    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMailBody("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): fail"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v20           #cv:Landroid/content/ContentValues;
    :cond_14
    move-wide/from16 v25, v28

    goto/16 :goto_3

    .line 294
    .restart local v20       #cv:Landroid/content/ContentValues;
    :cond_15
    :try_start_3
    sget-boolean v2, Lcom/htc/android/mail/eassvc/mail/MailManager;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string v2, "MailManager"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/mail/MailManager;->mnAccountId:J

    const-string v9, "updMailBody: plain text preview"

    invoke-static {v2, v5, v6, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 295
    :cond_16
    const-string v2, "_preview"

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/android/mail/MailCommon;->s_convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 308
    .end local v4           #strProjection:[Ljava/lang/String;
    .end local v7           #strPartsProjection:[Ljava/lang/String;
    .end local v8           #whereParts:Ljava/lang/String;
    .end local v13           #messageId:J
    .end local v15           #mailboxId:J
    .end local v20           #cv:Landroid/content/ContentValues;
    .end local v21           #nMessageSize:I
    .end local v22           #nOriginalReadSize:I
    .end local v23           #nOriginaldlSize:I
    .end local v25           #readSize:J
    .end local v28           #totalSize:J
    .end local v30           #updateMailBody:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$UpdateMailBody;
    .end local v31           #whereClause:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_17

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_17

    .line 309
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 310
    const/16 v19, 0x0

    .line 312
    :cond_17
    if-eqz v11, :cond_18

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_18

    .line 313
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 314
    const/4 v11, 0x0

    .line 308
    :cond_18
    throw v2
.end method
