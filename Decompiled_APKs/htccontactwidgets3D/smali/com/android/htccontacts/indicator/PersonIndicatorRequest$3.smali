.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;
.super Ljava/lang/Object;
.source "PersonIndicatorRequest.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 22
    .parameter "result"

    .prologue
    .line 439
    const/4 v12, 0x0

    .line 441
    .local v12, count:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getLatestActivity()Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

    move-result-object v11

    .line 442
    .local v11, activity:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "contactId"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 444
    .local v20, lContactId:J
    invoke-virtual {v11}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->resetValue()V

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "CALLLOG"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 514
    :goto_0
    return-object p1

    .line 453
    :cond_0
    const/4 v13, 0x0

    .line 456
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_3

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "content://call_log/calls/missed"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "number"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "new"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "_id"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v5, v5, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 476
    :goto_1
    if-eqz v13, :cond_8

    .line 479
    const/16 v19, -0x1

    .local v19, idxMissCount:I
    const/4 v15, -0x1

    .local v15, idxIsNewMissCall:I
    const/16 v17, -0x1

    .local v17, idxMissCallNumber:I
    const/16 v16, -0x1

    .local v16, idxMissCallDate:I
    const/16 v18, -0x1

    .line 480
    .local v18, idxMissCallRawId:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_5

    .line 483
    const-string v1, "new"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 484
    const-string v1, "number"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 485
    const-string v1, "date"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 486
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 491
    :cond_1
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 493
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_6

    .line 495
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 496
    add-int/lit8 v12, v12, 0x1

    .line 497
    :cond_2
    if-eqz v11, :cond_1

    .line 499
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iget-wide v3, v11, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 501
    invoke-virtual {v11}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->resetValue()V

    .line 502
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "CALLLOG"

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v11

    move-wide/from16 v6, v20

    invoke-virtual/range {v1 .. v10}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 509
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 464
    .end local v15           #idxIsNewMissCall:I
    .end local v16           #idxMissCallDate:I
    .end local v17           #idxMissCallNumber:I
    .end local v18           #idxMissCallRawId:I
    .end local v19           #idxMissCount:I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "content://call_log/miss_calls_count_by_id"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_count"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v5, v5, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v13

    goto/16 :goto_1

    .line 469
    :catch_0
    move-exception v14

    .line 470
    .local v14, e:Ljava/lang/Exception;
    const-string v1, "PersonIndicatorRequest"

    const-string v2, "Query Missing Calls failed in PersonIndicatorRequest"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 472
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 489
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v15       #idxIsNewMissCall:I
    .restart local v16       #idxMissCallDate:I
    .restart local v17       #idxMissCallNumber:I
    .restart local v18       #idxMissCallRawId:I
    .restart local v19       #idxMissCount:I
    :cond_5
    :try_start_3
    const-string v1, "_count"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_2

    .line 506
    :cond_6
    int-to-long v1, v12

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v12, v1

    goto/16 :goto_2

    .line 509
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 512
    .end local v15           #idxIsNewMissCall:I
    .end local v16           #idxMissCallDate:I
    .end local v17           #idxMissCallNumber:I
    .end local v18           #idxMissCallRawId:I
    .end local v19           #idxMissCount:I
    :cond_8
    const-string v1, "CALLLOG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method
