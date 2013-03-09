.class public Lcom/google/android/gm/provider/Operations;
.super Ljava/lang/Object;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/Operations$OperationInfo;,
        Lcom/google/android/gm/provider/Operations$RecordHistory;
    }
.end annotation


# static fields
.field private static final NUM_RETRY_UPHILL_OPS:Ljava/lang/Integer;


# instance fields
.field private final PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Operations;->NUM_RETRY_UPHILL_OPS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "context"
    .parameter "db"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "message_messageId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "value2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numAttempts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nextTimeToAttempt"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "delay"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gm/provider/Operations;->PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 106
    iput-object p1, p0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method private calculateAndUpdateOpDelay(JJIIJLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 15
    .parameter "currentTime"
    .parameter "operationId"
    .parameter "numAttempts"
    .parameter "delay"
    .parameter "nextTimeToAttempt"
    .parameter "opInfo"
    .parameter "syncInfo"
    .parameter "mailEngine"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail_delay_bad_op"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v10, 0x1

    .line 471
    .local v10, delayBadOp:Z
    :goto_0
    if-nez v10, :cond_1

    .line 475
    const/4 v1, 0x1

    .line 531
    :goto_1
    return v1

    .line 469
    .end local v10           #delayBadOp:Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 478
    .restart local v10       #delayBadOp:Z
    :cond_1
    const-string v1, "Gmail"

    const-string v2, "calculateAndUpdateOpDelay: currentTime = %d, nextTimeToAttempt = %d, numAttempts = %d delay=%d %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p10, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 485
    cmp-long v1, p7, p1

    if-lez v1, :cond_2

    move-object v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move/from16 v6, p5

    move-wide/from16 v7, p7

    move/from16 v9, p6

    .line 488
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gm/provider/Operations;->moveOperationToEnd(JLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;IJI)J

    .line 490
    const/4 v1, 0x0

    goto :goto_1

    .line 492
    :cond_2
    move-object/from16 v0, p10

    iget-boolean v1, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    if-nez v1, :cond_3

    if-lez p5, :cond_3

    .line 493
    const-string v1, "Gmail"

    const-string v2, "Not retrying this operation id %d as we have not received what client operations the server has handled."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 498
    move-object/from16 v0, p11

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v2, "unackedSentOperations"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 500
    move-object/from16 v0, p11

    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    move-object v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move/from16 v6, p5

    move-wide/from16 v7, p7

    move/from16 v9, p6

    .line 501
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gm/provider/Operations;->moveOperationToEnd(JLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;IJI)J

    .line 503
    const/4 v1, 0x0

    goto :goto_1

    .line 506
    :cond_3
    const/4 v1, 0x3

    move/from16 v0, p5

    if-lt v0, v1, :cond_5

    .line 512
    if-nez p6, :cond_4

    const/16 p6, 0x1e

    .line 513
    :goto_2
    move/from16 v0, p6

    int-to-long v1, v0

    add-long v7, p1, v1

    .line 514
    .local v7, newBackOffTime:J
    const/4 v11, 0x2

    .line 515
    .local v11, newAttempts:I
    const/4 v6, 0x2

    move-object v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gm/provider/Operations;->moveOperationToEnd(JLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;IJI)J

    move-result-wide v12

    .line 517
    .local v12, newOpId:J
    const-string v1, "Gmail"

    const-string v2, "Backing off operation %d with newAttempts %d, delay %d, newBackOffTime %d, newOpId %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 524
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 512
    .end local v7           #newBackOffTime:J
    .end local v11           #newAttempts:I
    .end local v12           #newOpId:J
    :cond_4
    const v1, 0x15180

    mul-int/lit8 v2, p6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p6

    goto :goto_2

    .line 526
    :cond_5
    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    add-int/lit8 v2, p5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    const/4 v1, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    .line 528
    .local v14, params:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UPDATE operations SET numAttempts = ? WHERE _id = ?"

    invoke-virtual {v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    const/4 v1, 0x1

    goto/16 :goto_1
.end method

.method private checkForMessageToDiscard(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 16
    .parameter "mailEngine"

    .prologue
    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 589
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v12, "gmail_num_retry_uphill_op"

    sget-object v13, Lcom/google/android/gm/provider/Operations;->NUM_RETRY_UPHILL_OPS:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v1, v12, v13}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 593
    .local v9, numRetryUphillOp:Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/Operations;->nextOperationId()I

    move-result v5

    .line 594
    .local v5, nextOp:I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v13, "nextUnackedSentOp"

    invoke-virtual {v12, v13}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v8

    .line 597
    .local v8, nextUnackedUphillOp:I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v13, "errorCountNextUnackedSentOp"

    invoke-virtual {v12, v13}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v4

    .line 599
    .local v4, errorCount:I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v13, "nextUnackedOpWriteTime"

    invoke-virtual {v12, v13}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v6

    .line 601
    .local v6, nextOpFirstTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v2, v12, v14

    .line 602
    .local v2, currentTime:J
    const-string v12, "gmail_wait_time_retry_uphill_op"

    const-wide/32 v13, 0x8e30

    invoke-static {v1, v12, v13, v14}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 609
    .local v10, waitDiscardTime:J
    if-ne v5, v8, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v4, v12, :cond_0

    sub-long v12, v2, v6

    cmp-long v12, v12, v10

    if-lez v12, :cond_0

    .line 611
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "operations"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    :cond_0
    return-void
.end method

.method private doesLabelMatter(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 579
    const-string v0, "messageSaved"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "messageSent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "messageExpunged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveOperationToEnd(JLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;IJI)J
    .locals 17
    .parameter "operationId"
    .parameter "opInfo"
    .parameter "syncInfo"
    .parameter "numAttempts"
    .parameter "nextTimeToAttempt"
    .parameter "delay"

    .prologue
    .line 541
    move-object/from16 v0, p3

    iget-object v14, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    .line 543
    .local v14, action:Ljava/lang/String;
    move-object/from16 v0, p4

    iget-boolean v1, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-eqz v1, :cond_1

    .line 547
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM operations where _id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gm/provider/Operations;->doesLabelMatter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-wide v7, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mLabelId:J

    move/from16 v0, p5

    int-to-long v9, v0

    move-object/from16 v1, p0

    move/from16 v11, p8

    move-wide/from16 v12, p6

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;JJIJ)J

    move-result-wide v15

    .line 567
    .local v15, newOpId:J
    :goto_0
    const-string v1, "Gmail"

    const-string v2, "Moving delayed operation %d to end of list with newAttempts %d, delay %d, newBackOffTime %d, newOpId %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 574
    return-wide v15

    .line 555
    .end local v15           #newOpId:J
    :cond_0
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    move/from16 v0, p5

    int-to-long v7, v0

    move-object/from16 v1, p0

    move/from16 v9, p8

    move-wide/from16 v10, p6

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;JIJ)J

    move-result-wide v15

    .restart local v15       #newOpId:J
    goto :goto_0

    .line 561
    .end local v15           #newOpId:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM operations where _id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    new-instance v1, Lcom/google/android/gm/provider/Operations$OperationInfo;

    move-object/from16 v0, p4

    iget-wide v2, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-object/from16 v0, p4

    iget-wide v4, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    const-wide/16 v7, 0x0

    move/from16 v9, p5

    move/from16 v10, p8

    move-wide/from16 v11, p6

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;JIIJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Operations;->incrementAndAddOperations(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    move-result-wide v15

    .restart local v15       #newOpId:J
    goto :goto_0
.end method

.method public static updateLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 3
    .parameter "db"
    .parameter "currentLabelId"
    .parameter "newLabelId"

    .prologue
    .line 221
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 222
    .local v0, params:[Ljava/lang/String;
    const-string v1, "UPDATE operations SET value1 = ? WHERE action IN (\'messageLabelAdded\', \'messageLabelRemoved\', \'conversationLabelAdded\', \'conversationLabelRemoved\') AND value1 = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    return-void
.end method


# virtual methods
.method public deleteOperationsForLabelId(J)V
    .locals 4
    .parameter "labelId"

    .prologue
    .line 211
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 212
    .local v0, labelIdSelectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    const-string v3, "action IN (\'messageLabelAdded\', \'messageLabelRemoved\', \'conversationLabelAdded\', \'conversationLabelRemoved\') AND value1 = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public deleteOperationsForMessageId(J)V
    .locals 6
    .parameter "messageId"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "operations"

    const-string v2, "message_messageId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public deleteOperationsForMessageIds(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, joinedMessageIds:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message_messageId IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public hasUnackedSendOrSaveOperationsForConversation(J)Z
    .locals 8
    .parameter "conversationId"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT COUNT(*) FROM operations WHERE ACTION IN (\'messageSaved\', \'messageSent\') AND value2 = ?"

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public incrementAndAddOperations(Lcom/google/android/gm/provider/Operations$OperationInfo;)J
    .locals 31
    .parameter "opInfo"

    .prologue
    .line 259
    const-wide/16 v20, -0x1

    .line 260
    .local v20, newOpId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 262
    :try_start_0
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v24, opInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Operations$OperationInfo;>;"
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 264
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "operations"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/provider/Operations;->PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 268
    .local v16, cursor:Landroid/database/Cursor;
    const-string v3, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 269
    .local v27, operationIdIndex:I
    const-string v3, "action"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 270
    .local v15, actionIndex:I
    const-string v3, "message_messageId"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 271
    .local v19, messageIdIndex:I
    const-string v3, "value1"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 272
    .local v28, value1Index:I
    const-string v3, "value2"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 273
    .local v29, value2Index:I
    const-string v3, "numAttempts"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 274
    .local v23, numAttemptsIndex:I
    const-string v3, "nextTimeToAttempt"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 275
    .local v22, nextTimeToAttemptIndex:I
    const-string v3, "delay"

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 277
    .local v17, delayIndex:I
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 279
    .local v26, operationId:I
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, currentAction:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 281
    .local v6, currentMessageId:J
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 282
    .local v11, currentNumAttempts:I
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 283
    .local v13, currentNextTimeToAttempt:J
    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 284
    .local v12, currentDelay:I
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 285
    .local v4, currentConversationId:J
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 286
    .local v9, currentLabelId:J
    new-instance v3, Lcom/google/android/gm/provider/Operations$OperationInfo;

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;JIIJ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #currentConversationId:J
    .end local v6           #currentMessageId:J
    .end local v8           #currentAction:Ljava/lang/String;
    .end local v9           #currentLabelId:J
    .end local v11           #currentNumAttempts:I
    .end local v12           #currentDelay:I
    .end local v13           #currentNextTimeToAttempt:J
    .end local v15           #actionIndex:I
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v17           #delayIndex:I
    .end local v19           #messageIdIndex:I
    .end local v22           #nextTimeToAttemptIndex:I
    .end local v23           #numAttemptsIndex:I
    .end local v24           #opInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Operations$OperationInfo;>;"
    .end local v26           #operationId:I
    .end local v27           #operationIdIndex:I
    .end local v28           #value1Index:I
    .end local v29           #value2Index:I
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 291
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v15       #actionIndex:I
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v17       #delayIndex:I
    .restart local v19       #messageIdIndex:I
    .restart local v22       #nextTimeToAttemptIndex:I
    .restart local v23       #numAttemptsIndex:I
    .restart local v24       #opInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Operations$OperationInfo;>;"
    .restart local v27       #operationIdIndex:I
    .restart local v28       #value1Index:I
    .restart local v29       #value2Index:I
    :cond_0
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v30, "DELETE FROM operations"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gm/provider/Operations;->recordOperation(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    move-result-wide v20

    .line 300
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/android/gm/provider/Operations$OperationInfo;

    .line 301
    .local v25, opInfoToRecord:Lcom/google/android/gm/provider/Operations$OperationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Operations;->recordOperation(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    goto :goto_1

    .line 303
    .end local v25           #opInfoToRecord:Lcom/google/android/gm/provider/Operations$OperationInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 308
    return-wide v20
.end method

.method public nextOperationId()I
    .locals 4

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT _id FROM operations LIMIT 1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 244
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public provideNormalOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$SyncInfo;J)V
    .locals 51
    .parameter "sink"
    .parameter "mailEngine"
    .parameter "syncInfo"
    .parameter "currentTime"

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gmail_discard_error_uphill_op_old_froyo"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    const/16 v41, 0x1

    .line 383
    .local v41, checkDiscard:Z
    :goto_0
    if-eqz v41, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/Operations;->checkForMessageToDiscard(Lcom/google/android/gm/provider/MailEngine;)V

    .line 385
    :cond_0
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 386
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "operations"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 387
    const-string v13, "50"

    .line 388
    .local v13, limit:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/provider/Operations;->PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v42

    .line 391
    .local v42, cursor:Landroid/database/Cursor;
    const-string v6, "_id"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 392
    .local v47, operationIdIndex:I
    const-string v6, "action"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 393
    .local v40, actionIndex:I
    const-string v6, "message_messageId"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 394
    .local v44, messageIdIndex:I
    const-string v6, "value1"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 395
    .local v49, value1Index:I
    const-string v6, "value2"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 396
    .local v50, value2Index:I
    const-string v6, "numAttempts"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 397
    .local v46, numAttemptsIndex:I
    const-string v6, "nextTimeToAttempt"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 398
    .local v45, nextTimeToAttemptIndex:I
    const-string v6, "delay"

    move-object/from16 v0, v42

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 400
    .local v43, delayIndex:I
    :cond_1
    :goto_1
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 401
    move-object/from16 v0, v42

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 402
    .local v25, operationId:J
    move-object/from16 v0, v42

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 403
    .local v19, action:Ljava/lang/String;
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 404
    .local v17, messageId:J
    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 405
    .local v27, numAttempts:I
    move-object/from16 v0, v42

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 406
    .local v29, nextTimeToAttempt:J
    invoke-interface/range {v42 .. v43}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 407
    .local v28, delay:I
    move-object/from16 v0, v42

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 410
    .local v15, conversationId:J
    move-object/from16 v0, v42

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 411
    .local v20, labelId:J
    new-instance v14, Lcom/google/android/gm/provider/Operations$OperationInfo;

    invoke-direct/range {v14 .. v21}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;J)V

    .local v14, opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    move-object/from16 v22, p0

    move-wide/from16 v23, p4

    move-object/from16 v31, v14

    move-object/from16 v32, p3

    move-object/from16 v33, p2

    .line 413
    invoke-direct/range {v22 .. v33}, Lcom/google/android/gm/provider/Operations;->calculateAndUpdateOpDelay(JJIIJLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v48

    .line 416
    .local v48, shouldSend:Z
    if-eqz v48, :cond_1

    .line 419
    const-string v6, "messageLabelAdded"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v6, p1

    move-wide/from16 v7, v25

    move-wide/from16 v9, v17

    move-wide/from16 v11, v20

    .line 420
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageLabelAdded(JJJ)V

    goto :goto_1

    .line 379
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v13           #limit:Ljava/lang/String;
    .end local v14           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v15           #conversationId:J
    .end local v17           #messageId:J
    .end local v19           #action:Ljava/lang/String;
    .end local v20           #labelId:J
    .end local v25           #operationId:J
    .end local v27           #numAttempts:I
    .end local v28           #delay:I
    .end local v29           #nextTimeToAttempt:J
    .end local v40           #actionIndex:I
    .end local v41           #checkDiscard:Z
    .end local v42           #cursor:Landroid/database/Cursor;
    .end local v43           #delayIndex:I
    .end local v44           #messageIdIndex:I
    .end local v45           #nextTimeToAttemptIndex:I
    .end local v46           #numAttemptsIndex:I
    .end local v47           #operationIdIndex:I
    .end local v48           #shouldSend:Z
    .end local v49           #value1Index:I
    .end local v50           #value2Index:I
    :cond_2
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 421
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v13       #limit:Ljava/lang/String;
    .restart local v14       #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .restart local v15       #conversationId:J
    .restart local v17       #messageId:J
    .restart local v19       #action:Ljava/lang/String;
    .restart local v20       #labelId:J
    .restart local v25       #operationId:J
    .restart local v27       #numAttempts:I
    .restart local v28       #delay:I
    .restart local v29       #nextTimeToAttempt:J
    .restart local v40       #actionIndex:I
    .restart local v41       #checkDiscard:Z
    .restart local v42       #cursor:Landroid/database/Cursor;
    .restart local v43       #delayIndex:I
    .restart local v44       #messageIdIndex:I
    .restart local v45       #nextTimeToAttemptIndex:I
    .restart local v46       #numAttemptsIndex:I
    .restart local v47       #operationIdIndex:I
    .restart local v48       #shouldSend:Z
    .restart local v49       #value1Index:I
    .restart local v50       #value2Index:I
    :cond_3
    const-string v6, "messageLabelRemoved"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v6, p1

    move-wide/from16 v7, v25

    move-wide/from16 v9, v17

    move-wide/from16 v11, v20

    .line 422
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageLabelRemoved(JJJ)V

    goto/16 :goto_1

    .line 423
    :cond_4
    const-string v6, "conversationLabelAdded"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 424
    const/16 v38, 0x1

    move-object/from16 v31, p1

    move-wide/from16 v32, v25

    move-wide/from16 v34, v17

    move-wide/from16 v36, v20

    invoke-interface/range {v31 .. v38}, Lcom/google/android/gm/provider/MailStore$OperationSink;->conversationLabelAddedOrRemoved(JJJZ)V

    goto/16 :goto_1

    .line 426
    :cond_5
    const-string v6, "conversationLabelRemoved"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 427
    const/16 v38, 0x0

    move-object/from16 v31, p1

    move-wide/from16 v32, v25

    move-wide/from16 v34, v17

    move-wide/from16 v36, v20

    invoke-interface/range {v31 .. v38}, Lcom/google/android/gm/provider/MailStore$OperationSink;->conversationLabelAddedOrRemoved(JJJZ)V

    goto/16 :goto_1

    .line 429
    :cond_6
    const-string v6, "messageSaved"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "messageSent"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 431
    :cond_7
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gm/provider/MailEngine;->getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v34

    .line 432
    .local v34, message:Lcom/google/android/gm/provider/MailSync$Message;
    if-nez v34, :cond_8

    .line 433
    const-string v6, "Gmail"

    const-string v7, "Cannot find message with id = %d for operations!"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "operations"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 441
    :cond_8
    move-wide/from16 v35, v17

    .line 442
    .local v35, prevMessageId:J
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->refMessageId:J

    move-wide/from16 v37, v0

    const-string v6, "messageSaved"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    move-object/from16 v31, p1

    move-wide/from16 v32, v25

    invoke-interface/range {v31 .. v39}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageSavedOrSent(JLcom/google/android/gm/provider/MailSync$Message;JJZ)V

    goto/16 :goto_1

    .line 445
    .end local v34           #message:Lcom/google/android/gm/provider/MailSync$Message;
    .end local v35           #prevMessageId:J
    :cond_9
    const-string v6, "messageExpunged"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 446
    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageExpunged(JJ)V

    goto/16 :goto_1

    .line 448
    :cond_a
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    .end local v14           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v15           #conversationId:J
    .end local v17           #messageId:J
    .end local v19           #action:Ljava/lang/String;
    .end local v20           #labelId:J
    .end local v25           #operationId:J
    .end local v27           #numAttempts:I
    .end local v28           #delay:I
    .end local v29           #nextTimeToAttempt:J
    .end local v48           #shouldSend:Z
    :cond_b
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    .line 452
    return-void
.end method

.method public provideOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$SyncInfo;J)V
    .locals 33
    .parameter "sink"
    .parameter "mailEngine"
    .parameter "syncInfo"
    .parameter "currentTime"

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT \n  _id,\n  action,\n  numAttempts,\n  nextTimeToAttempt,\n  delay\nFROM\n operations\nWHERE\n  message_messageId = ? AND value2 = ?\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 330
    .local v27, cursor:Landroid/database/Cursor;
    const-string v3, "_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 331
    .local v31, operationIdIndex:I
    const-string v3, "action"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 332
    .local v26, actionIndex:I
    const-string v3, "numAttempts"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 333
    .local v30, numAttemptsIndex:I
    const-string v3, "nextTimeToAttempt"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 334
    .local v29, nextTimeToAttemptIndex:I
    const-string v3, "delay"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 336
    .local v28, delayIndex:I
    :goto_0
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 338
    .local v11, operationId:J
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, action:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 340
    .local v13, numAttempts:I
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 341
    .local v15, nextTimeToAttempt:J
    invoke-interface/range {v27 .. v28}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 344
    .local v14, delay:I
    new-instance v2, Lcom/google/android/gm/provider/Operations$OperationInfo;

    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-object/from16 v0, p3

    iget-wide v5, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    const-wide/16 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;J)V

    .line 347
    .local v2, opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    const-string v3, "messageSent"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    .end local v2           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v7           #action:Ljava/lang/String;
    .end local v11           #operationId:J
    .end local v13           #numAttempts:I
    .end local v14           #delay:I
    .end local v15           #nextTimeToAttempt:J
    :cond_0
    :goto_1
    return-void

    .restart local v2       #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .restart local v7       #action:Ljava/lang/String;
    .restart local v11       #operationId:J
    .restart local v13       #numAttempts:I
    .restart local v14       #delay:I
    .restart local v15       #nextTimeToAttempt:J
    :cond_1
    move-object/from16 v8, p0

    move-wide/from16 v9, p4

    move-object/from16 v17, v2

    move-object/from16 v18, p3

    move-object/from16 v19, p2

    .line 349
    invoke-direct/range {v8 .. v19}, Lcom/google/android/gm/provider/Operations;->calculateAndUpdateOpDelay(JJIIJLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v32

    .line 352
    .local v32, shouldSend:Z
    if-eqz v32, :cond_0

    .line 355
    move-object/from16 v0, p3

    iget-wide v3, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gm/provider/MailEngine;->getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v20

    .line 357
    .local v20, message:Lcom/google/android/gm/provider/MailSync$Message;
    if-nez v20, :cond_2

    .line 358
    const-string v3, "Gmail"

    const-string v4, "Cannot find message with id = %d for operations!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "operations"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 366
    :cond_2
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v21, v0

    .line 367
    .local v21, prevMessageId:J
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->refMessageId:J

    move-wide/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v11

    invoke-interface/range {v17 .. v25}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageSavedOrSent(JLcom/google/android/gm/provider/MailSync$Message;JJZ)V

    goto/16 :goto_0

    .line 370
    .end local v2           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v7           #action:Ljava/lang/String;
    .end local v11           #operationId:J
    .end local v13           #numAttempts:I
    .end local v14           #delay:I
    .end local v15           #nextTimeToAttempt:J
    .end local v20           #message:Lcom/google/android/gm/provider/MailSync$Message;
    .end local v21           #prevMessageId:J
    .end local v32           #shouldSend:Z
    :cond_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public recordOperation(JJLjava/lang/String;)J
    .locals 11
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"

    .prologue
    .line 142
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;JIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public recordOperation(JJLjava/lang/String;JIJ)J
    .locals 5
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"
    .parameter "numAttempts"
    .parameter "delay"
    .parameter "nextTimeToAttempt"

    .prologue
    const-wide/16 v3, 0x0

    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    const-string v1, "value2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    cmp-long v1, p6, v3

    if-lez v1, :cond_0

    cmp-long v1, p9, v3

    if-lez v1, :cond_0

    .line 157
    const-string v1, "numAttempts"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    const-string v1, "nextTimeToAttempt"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v1, "delay"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public recordOperation(Lcom/google/android/gm/provider/Operations$OperationInfo;)J
    .locals 13
    .parameter "opInfo"

    .prologue
    .line 131
    iget-object v0, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/Operations;->doesLabelMatter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-wide v1, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    iget-wide v3, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    iget-object v5, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mLabelId:J

    iget v0, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNumAttempts:I

    int-to-long v8, v0

    iget v10, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mDelay:I

    iget-wide v11, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNextTimeToAttempt:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;JJIJ)J

    move-result-wide v0

    .line 136
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v1, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    iget-wide v3, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    iget-object v5, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNumAttempts:I

    int-to-long v6, v0

    iget v8, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mDelay:I

    iget-wide v9, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNextTimeToAttempt:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;JIJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public recordOperationWithLabelId(JJLjava/lang/String;J)J
    .locals 13
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"
    .parameter "labelId"

    .prologue
    .line 166
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;JJIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public recordOperationWithLabelId(JJLjava/lang/String;JJIJ)J
    .locals 4
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"
    .parameter "labelId"
    .parameter "numAttempts"
    .parameter "delay"
    .parameter "nextTimeToAttempt"

    .prologue
    .line 176
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    const-string v1, "value1"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string v1, "value2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-wide/16 v1, 0x0

    cmp-long v1, p8, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p11, v1

    if-lez v1, :cond_0

    .line 182
    const-string v1, "numAttempts"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v1, "nextTimeToAttempt"

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v1, "delay"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public updateMessageId(JJ)V
    .locals 5
    .parameter "currentMessageId"
    .parameter "newMessageId"

    .prologue
    .line 231
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message_messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    return-void
.end method
