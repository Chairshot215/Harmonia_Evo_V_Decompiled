.class public Lcom/htc/providers/uploads/UploadNotification;
.super Ljava/lang/Object;
.source "UploadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "UploadNotification"

.field private static final TAG:Ljava/lang/String; = "UploadNotification"


# instance fields
.field private final CANCELLED_STATUS:I

.field private final RUNNING_STATUS:I

.field private final SUCCESS_STATUS:I

.field private final WAITING_STATUS:I

.field private curRunningBatchId:I

.field private isNewInsert:Z

.field private isOnBoot:Z

.field mActiveNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/providers/uploads/UploadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompleteNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/providers/uploads/UploadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mLastTime:J

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private preStateTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    .line 53
    iput-boolean v1, p0, Lcom/htc/providers/uploads/UploadNotification;->isNewInsert:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/providers/uploads/UploadNotification;->isOnBoot:Z

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification;->SUCCESS_STATUS:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification;->CANCELLED_STATUS:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification;->RUNNING_STATUS:I

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/providers/uploads/UploadNotification;->WAITING_STATUS:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mLastTime:J

    .line 131
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mContentResolver:Landroid/content/ContentResolver;

    .line 133
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    .line 137
    return-void
.end method

.method private collateNotification()V
    .locals 22

    .prologue
    .line 176
    const-string v2, "UploadNotification"

    const-string v3, "colloateNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 228
    const/4 v11, 0x0

    .line 231
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "batch_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "current_bytes"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "total_bytes"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "status"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "lastmod"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "control"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "batch_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 239
    const/16 v17, -0x1

    .line 240
    .local v17, preBatchId:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v20

    .line 242
    .local v20, unUsedBatchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_e

    .line 243
    const-string v2, "batch_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 244
    .local v10, batchId:I
    const-string v2, "total_bytes"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 245
    .local v19, totalBytes:I
    const-string v2, "current_bytes"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 246
    .local v13, currentBytes:I
    const-string v2, "status"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 247
    .local v18, status:I
    const-string v2, "control"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 249
    .local v12, control:I
    const/16 v16, 0x0

    .line 251
    .local v16, item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    check-cast v16, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .line 253
    .restart local v16       #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->addItem(II)V

    .line 254
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->minStatus:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    .line 255
    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->minStatus:I

    .line 256
    :cond_0
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->maxStatus:I

    move/from16 v0, v18

    if-le v0, v2, :cond_1

    .line 257
    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->maxStatus:I

    .line 258
    :cond_1
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->runningNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->runningNum:I

    .line 260
    :cond_2
    const/16 v2, 0x1ea

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    .line 261
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->cancelledNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->cancelledNum:I

    .line 264
    :cond_3
    const/4 v2, -0x1

    if-eq v12, v2, :cond_4

    .line 265
    move-object/from16 v0, v16

    iput v12, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->control:I

    .line 309
    :cond_4
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    move/from16 v0, v17

    if-eq v0, v10, :cond_5

    .line 310
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/providers/uploads/UploadNotification;->removeFalseNotification(I)V

    .line 312
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 313
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/providers/uploads/UploadNotification;->removeFalseNotification(I)V

    .line 315
    :cond_6
    move/from16 v17, v10

    .line 242
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 321
    .end local v10           #batchId:I
    .end local v12           #control:I
    .end local v13           #currentBytes:I
    .end local v16           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    .end local v17           #preBatchId:I
    .end local v18           #status:I
    .end local v19           #totalBytes:I
    .end local v20           #unUsedBatchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v14

    .line 322
    .local v14, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "UploadNotification"

    const-string v3, "colloateNotification failed!"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    if-eqz v11, :cond_7

    .line 325
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v11, 0x0

    .line 330
    .end local v14           #e:Ljava/lang/Exception;
    :cond_7
    :goto_2
    return-void

    .line 268
    .restart local v10       #batchId:I
    .restart local v12       #control:I
    .restart local v13       #currentBytes:I
    .restart local v16       #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    .restart local v17       #preBatchId:I
    .restart local v18       #status:I
    .restart local v19       #totalBytes:I
    .restart local v20       #unUsedBatchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    :try_start_2
    const-string v2, "UploadNotification"

    const-string v3, "Not found in active notifications, new a NotificationItem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v16, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .end local v16           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    invoke-direct/range {v16 .. v16}, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;-><init>()V

    .line 270
    .restart local v16       #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->id:I

    .line 271
    const-string v2, "batch_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    .line 272
    const-string v2, "status"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->maxStatus:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->minStatus:I

    .line 274
    new-instance v21, Ljava/lang/StringBuffer;

    const-string v2, "_id"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 275
    .local v21, where:Ljava/lang/StringBuffer;
    const-string v2, " = "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    const/4 v9, 0x0

    .line 278
    .local v9, batchExist:Z
    const/4 v8, 0x0

    .line 280
    .local v8, bCursor:Landroid/database/Cursor;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "service_title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "insert_time"

    aput-object v6, v4, v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 284
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 285
    const/4 v9, 0x1

    .line 286
    const-string v2, "control"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->control:I

    .line 287
    const-string v2, "insert_time"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->insertTime:J

    .line 288
    const-string v2, "service_title"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->serviceTitle:Ljava/lang/String;

    .line 289
    invoke-static/range {v18 .. v18}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 290
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->runningNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->runningNum:I

    .line 292
    :cond_9
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->addItem(II)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 299
    :cond_a
    if-eqz v8, :cond_b

    .line 300
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    const/4 v8, 0x0

    .line 304
    :cond_b
    :goto_3
    if-nez v9, :cond_4

    .line 305
    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 324
    .end local v8           #bCursor:Landroid/database/Cursor;
    .end local v9           #batchExist:Z
    .end local v10           #batchId:I
    .end local v12           #control:I
    .end local v13           #currentBytes:I
    .end local v16           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    .end local v17           #preBatchId:I
    .end local v18           #status:I
    .end local v19           #totalBytes:I
    .end local v20           #unUsedBatchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21           #where:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_c

    .line 325
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v11, 0x0

    :cond_c
    throw v2

    .line 296
    .restart local v8       #bCursor:Landroid/database/Cursor;
    .restart local v9       #batchExist:Z
    .restart local v10       #batchId:I
    .restart local v12       #control:I
    .restart local v13       #currentBytes:I
    .restart local v16       #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    .restart local v17       #preBatchId:I
    .restart local v18       #status:I
    .restart local v19       #totalBytes:I
    .restart local v20       #unUsedBatchList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21       #where:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v14

    .line 297
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "UploadNotification"

    const-string v3, "bCursor failed!"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 299
    if-eqz v8, :cond_b

    .line 300
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    const/4 v8, 0x0

    goto :goto_3

    .line 299
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_d

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 301
    const/4 v8, 0x0

    :cond_d
    throw v2

    .line 318
    .end local v8           #bCursor:Landroid/database/Cursor;
    .end local v9           #batchExist:Z
    .end local v10           #batchId:I
    .end local v12           #control:I
    .end local v13           #currentBytes:I
    .end local v16           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    .end local v18           #status:I
    .end local v19           #totalBytes:I
    .end local v21           #where:Ljava/lang/StringBuffer;
    :cond_e
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 319
    .restart local v10       #batchId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/htc/providers/uploads/UploadHelper;->clearBatchUpload(Landroid/content/Context;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 324
    .end local v10           #batchId:I
    :cond_f
    if-eqz v11, :cond_7

    .line 325
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method private determineBatchStatus(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)V
    .locals 2
    .parameter "curItem"

    .prologue
    const/16 v1, 0xc8

    .line 370
    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->runningNum:I

    if-lez v0, :cond_1

    .line 371
    const/16 v0, 0xc0

    iput v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->minStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->maxStatus:I

    if-ne v0, v1, :cond_2

    .line 374
    iput v1, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    goto :goto_0

    .line 375
    :cond_2
    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->maxStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 376
    const/16 v0, 0xbe

    iput v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    goto :goto_0

    .line 377
    :cond_3
    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->cancelledNum:I

    if-lez v0, :cond_4

    .line 378
    const/16 v0, 0x1ea

    iput v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    goto :goto_0

    .line 379
    :cond_4
    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->maxStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->minStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusPending(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->minStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->minStatus:I

    invoke-static {v0}, Lcom/htc/opensense/upload/Uploads;->isStatusSuspended(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/16 v0, 0x1eb

    iput v0, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    goto :goto_0
.end method

.method private generateCompleteNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 543
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .line 546
    .local v4, item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 547
    .local v5, notification:Landroid/app/Notification;
    invoke-direct {p0, v4}, Lcom/htc/providers/uploads/UploadNotification;->generateTitle(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 549
    .local v7, title:Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 550
    :cond_1
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f04001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 554
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 559
    .local v1, contentUri:Landroid/net/Uri;
    const-string v8, "UploadNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "complete batch_id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", item id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget v8, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v8}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 562
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, caption:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.intent.action.UPLOAD_OPEN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "com.htc.providers.uploads"

    const-class v9, Lcom/htc/providers/uploads/UploadReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 573
    const-string v8, "com.htc.providers.uploads.intent_mode"

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->mode:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    const-string v8, "com.htc.providers.uploads.intent_status"

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const-string v8, "com.htc.providers.uploads.intent_batch_id"

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v8, "com.htc.providers.uploads.intent_insert_time"

    iget-wide v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->insertTime:J

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 588
    const v8, 0x7f020003

    iput v8, v5, Landroid/app/Notification;->icon:I

    .line 589
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-static {v9, v11, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, v8, v7, v0, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 603
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.UPLOAD_HIDE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "com.htc.providers.uploads"

    const-class v9, Lcom/htc/providers/uploads/UploadReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 607
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-static {v8, v11, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 610
    iget-wide v8, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->lastMod:J

    iput-wide v8, v5, Landroid/app/Notification;->when:J

    .line 612
    iget-boolean v8, p0, Lcom/htc/providers/uploads/UploadNotification;->isOnBoot:Z

    if-nez v8, :cond_3

    .line 613
    iput-object v0, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 615
    :cond_3
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 616
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 617
    .local v6, preState:I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_0

    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    .line 618
    const-string v8, "UploadNotification"

    const-string v9, "notify complete with previous batch id"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 620
    iget v8, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {p0, v8, v9}, Lcom/htc/providers/uploads/UploadNotification;->cancelAfterDelay(II)V

    goto/16 :goto_0

    .line 593
    .end local v0           #caption:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #preState:I
    :cond_4
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    .restart local v0       #caption:Ljava/lang/String;
    const v8, 0x7f020002

    iput v8, v5, Landroid/app/Notification;->icon:I

    .line 598
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-static {v9, v11, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, v8, v7, v0, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 623
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_5
    const-string v8, "UploadNotification"

    const-string v9, "notify complete"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 625
    iget v8, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {p0, v8, v9}, Lcom/htc/providers/uploads/UploadNotification;->cancelAfterDelay(II)V

    goto/16 :goto_0

    .line 629
    .end local v0           #caption:Ljava/lang/String;
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    .end local v5           #notification:Landroid/app/Notification;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_6
    return-void
.end method

.method private generatePendingNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 485
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .line 487
    .local v4, item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    iget v8, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v8}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v8}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 493
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    .line 495
    .local v5, notification:Landroid/app/Notification;
    const v8, 0x7f020004

    iput v8, v5, Landroid/app/Notification;->icon:I

    .line 497
    iget v8, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 499
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 503
    .local v1, contentUri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/htc/providers/uploads/UploadNotification;->generateTitle(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 505
    .local v7, title:Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f04001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, caption:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.intent.action.UPLOAD_OPEN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "com.htc.providers.uploads"

    const-class v9, Lcom/htc/providers/uploads/UploadReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 517
    const-string v8, "com.htc.providers.uploads.intent_mode"

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->mode:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string v8, "com.htc.providers.uploads.intent_status"

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v8, "com.htc.providers.uploads.intent_batch_id"

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    const-string v8, "com.htc.providers.uploads.intent_insert_time"

    iget-wide v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->insertTime:J

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 528
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-static {v9, v11, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v5, v8, v7, v0, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 531
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 532
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 533
    .local v6, preState:I
    const/4 v8, 0x4

    if-eq v6, v8, :cond_0

    .line 534
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 537
    .end local v6           #preState:I
    :cond_1
    iget-object v8, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v9, v4, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 540
    .end local v0           #caption:Ljava/lang/String;
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    .end local v5           #notification:Landroid/app/Notification;
    .end local v7           #title:Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method private generateRunningNotification(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)V
    .locals 10
    .parameter "item"

    .prologue
    const v9, 0x1080088

    const/4 v4, 0x0

    .line 431
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 433
    .local v2, notification:Landroid/app/Notification;
    iput v9, v2, Landroid/app/Notification;->icon:I

    .line 435
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 438
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v3, "com.htc.providers.uploads"

    const v5, 0x7f030004

    invoke-direct {v0, v3, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 441
    .local v0, expandedView:Landroid/widget/RemoteViews;
    const v3, 0x7f08000d

    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/UploadNotification;->generateTitle(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 443
    const v5, 0x7f080012

    iget v6, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    iget v7, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsCurrentBytes:I

    iget v3, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 446
    const v3, 0x7f080011

    iget v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsTotalBytes:I

    int-to-long v5, v5

    iget v7, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->allUploadsCurrentBytes:I

    int-to-long v7, v7

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/htc/providers/uploads/UploadNotification;->getUploadingText(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 448
    const v3, 0x7f080014

    invoke-virtual {v0, v3, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 450
    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 452
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPLOAD_OPEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.providers.uploads"

    const-class v5, Lcom/htc/providers/uploads/UploadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/opensense/upload/Uploads$UploadColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    const-string v3, "com.htc.providers.uploads.intent_mode"

    iget v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->mode:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v3, "com.htc.providers.uploads.intent_status"

    iget v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v3, "com.htc.providers.uploads.intent_batch_id"

    iget v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 468
    const-string v3, "com.htc.providers.uploads.intent_insert_time"

    iget-wide v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->insertTime:J

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 470
    iget-object v3, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 473
    const-string v3, "UploadNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "running batch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-boolean v3, p0, Lcom/htc/providers/uploads/UploadNotification;->isNewInsert:Z

    if-eqz v3, :cond_0

    .line 476
    const-string v3, "UploadNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel because of new insert"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v3, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v4, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 481
    :cond_0
    iget-object v3, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v4, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 482
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    move v3, v4

    .line 443
    goto/16 :goto_0
.end method

.method private generateTitle(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "item"

    .prologue
    const v5, 0x7f040017

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 667
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 668
    .local v0, title:Ljava/lang/StringBuffer;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 669
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    iget v1, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->fileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 671
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->serviceTitle:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 681
    :goto_0
    return-object v0

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->serviceTitle:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 677
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    iget v1, p1, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->fileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 679
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private getUploadingText(JJ)Ljava/lang/String;
    .locals 7
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    const-wide/16 v5, 0x64

    .line 653
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 654
    const-string v3, ""

    .line 663
    :goto_0
    return-object v3

    .line 656
    :cond_0
    mul-long v3, p3, v5

    div-long v0, v3, p1

    .line 657
    .local v0, progress:J
    cmp-long v3, v0, v5

    if-lez v3, :cond_1

    .line 658
    const-wide/16 v0, 0x64

    .line 660
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 661
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 662
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private removeFalseNotification(I)V
    .locals 4
    .parameter "curBatchId"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .line 334
    .local v0, preItem:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0, v0}, Lcom/htc/providers/uploads/UploadNotification;->determineBatchStatus(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)V

    .line 337
    iget v1, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->runningNum:I

    if-lez v1, :cond_0

    .line 338
    iget v1, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    iput v1, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    .line 341
    :cond_0
    iget v1, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->control:I

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_1
    iget v1, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    if-ne v1, p1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_2
    :goto_0
    return-void

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #preItem:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    check-cast v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .line 352
    .restart local v0       #preItem:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    if-eqz v0, :cond_2

    .line 356
    invoke-direct {p0, v0}, Lcom/htc/providers/uploads/UploadNotification;->determineBatchStatus(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)V

    .line 358
    iget v1, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->control:I

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v1}, Lcom/htc/opensense/upload/Uploads;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 360
    :cond_4
    const-string v1, "UploadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "complete remove batch id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v1, "UploadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "complete remove item status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateAllNotification()V
    .locals 15

    .prologue
    const/4 v13, -0x1

    .line 387
    const-string v11, "UploadNotification"

    const-string v12, "updateAllNotification"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v8, 0x0

    .line 389
    .local v8, item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    iget v11, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    if-eq v11, v13, :cond_0

    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    iget v12, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 391
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    iget v12, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    check-cast v8, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .line 392
    .restart local v8       #item:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    iput v13, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadNotification;->generatePendingNotification()V

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 397
    .local v6, currentTime:J
    iget-wide v11, p0, Lcom/htc/providers/uploads/UploadNotification;->mLastTime:J

    sub-long v11, v6, v11

    const-wide/16 v13, 0x3e8

    div-long v9, v11, v13

    .line 398
    .local v9, uploadTime:J
    if-eqz v8, :cond_1

    iget v11, v8, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v11}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v11

    if-eqz v11, :cond_1

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-eqz v11, :cond_1

    .line 399
    invoke-direct {p0, v8}, Lcom/htc/providers/uploads/UploadNotification;->generateRunningNotification(Lcom/htc/providers/uploads/UploadNotification$NotificationItem;)V

    .line 400
    iput-wide v6, p0, Lcom/htc/providers/uploads/UploadNotification;->mLastTime:J

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadNotification;->generateCompleteNotification()V

    .line 405
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 407
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->mActiveNotifications:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 408
    .local v1, actSets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 409
    .local v0, actIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 410
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 411
    .local v4, curBatchId:I
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 414
    .end local v4           #curBatchId:I
    :cond_2
    if-eqz v8, :cond_3

    iget v11, v8, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v11}, Lcom/htc/opensense/upload/Uploads;->isStatusRunning(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 415
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    iget v12, v8, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->batch_id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_3
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 418
    .local v3, completeSets:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 419
    .local v2, completeIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 420
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 421
    .restart local v4       #curBatchId:I
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->mCompleteNotifications:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;

    .line 422
    .local v5, curItem:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    iget v11, v5, Lcom/htc/providers/uploads/UploadNotification$NotificationItem;->status:I

    invoke-static {v11}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 423
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 425
    :cond_4
    iget-object v11, p0, Lcom/htc/providers/uploads/UploadNotification;->preStateTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 427
    .end local v4           #curBatchId:I
    .end local v5           #curItem:Lcom/htc/providers/uploads/UploadNotification$NotificationItem;
    :cond_5
    return-void
.end method


# virtual methods
.method public cancelAfterDelay(II)V
    .locals 2
    .parameter "status"
    .parameter "bid"

    .prologue
    .line 632
    invoke-static {p1}, Lcom/htc/opensense/upload/Uploads;->isStatusError(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    new-instance v0, Lcom/htc/providers/uploads/UploadNotification$1;

    invoke-direct {v0, p0, p2}, Lcom/htc/providers/uploads/UploadNotification$1;-><init>(Lcom/htc/providers/uploads/UploadNotification;I)V

    .line 645
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 647
    .end local v0           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public checkRemoveNotification(I)V
    .locals 7
    .parameter "batchId"

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/opensense/upload/Uploads$BatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 163
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :cond_1
    if-eqz v6, :cond_2

    .line 168
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_2
    monitor-exit p0

    .line 173
    return-void

    .line 167
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 171
    .end local v6           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public updateNotification(IZZ)V
    .locals 2
    .parameter "curBatchId"
    .parameter "newInsert"
    .parameter "onBoot"

    .prologue
    .line 143
    monitor-enter p0

    .line 145
    :try_start_0
    const-string v0, "UploadNotification"

    const-string v1, "updateNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput p1, p0, Lcom/htc/providers/uploads/UploadNotification;->curRunningBatchId:I

    .line 147
    iput-boolean p2, p0, Lcom/htc/providers/uploads/UploadNotification;->isNewInsert:Z

    .line 148
    iput-boolean p3, p0, Lcom/htc/providers/uploads/UploadNotification;->isOnBoot:Z

    .line 151
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadNotification;->collateNotification()V

    .line 152
    invoke-direct {p0}, Lcom/htc/providers/uploads/UploadNotification;->updateAllNotification()V

    .line 154
    monitor-exit p0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
