.class Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;
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
    .line 522
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 28
    .parameter "result"

    .prologue
    .line 524
    const/4 v13, 0x0

    .line 526
    .local v13, count:I
    const/4 v14, 0x0

    .line 527
    .local v14, cursor:Landroid/database/Cursor;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .local v12, addr:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 530
    .local v21, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v25, 0x0

    .line 531
    .local v25, mailCount:I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf0

    move/from16 v0, v25

    if-ge v0, v1, :cond_0

    .line 532
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 533
    .local v24, mail:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const/16 v1, 0x2c

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    add-int/lit8 v25, v25, 0x1

    .line 536
    goto :goto_0

    .line 537
    .end local v24           #mail:Ljava/lang/String;
    :cond_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 538
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1

    .line 539
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 541
    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 542
    const/4 v1, 0x0

    const-string v3, " _fromEmail in ("

    invoke-virtual {v12, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const/16 v1, 0x29

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    const/16 v3, 0x66

    if-eq v1, v3, :cond_6

    .line 549
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 558
    :goto_1
    if-eqz v14, :cond_4

    .line 560
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    int-to-long v3, v13

    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-int v13, v3

    .line 565
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 625
    .end local v21           #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v25           #mailCount:I
    :cond_4
    :goto_2
    const-string v1, "EMAIL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Lcom/android/htccontacts/indicator/IndicatorResult;->addResult(Ljava/lang/String;I)V

    .line 626
    return-object p1

    .line 551
    .restart local v21       #ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v25       #mailCount:I
    :catch_0
    move-exception v15

    .line 552
    .local v15, e:Ljava/lang/Exception;
    const-string v1, "PersonIndicatorRequest"

    const-string v3, "Query Unread Email failed in PersonIndicatorRequest"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 554
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 565
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 571
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getLatestActivity()Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

    move-result-object v11

    .line 572
    .local v11, activity:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "contactId"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 573
    .local v22, lContactId:J
    iget-wide v3, v11, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContactId:J

    cmp-long v1, v3, v22

    if-eqz v1, :cond_7

    .line 574
    invoke-virtual {v11}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->resetValue()V

    .line 577
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;->this$0:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    iget-object v1, v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->ALLEMAIL_URI:Landroid/net/Uri;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "messages._id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "_subject"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "_date"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "_read"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "_subjtype"

    aput-object v5, v3, v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    .line 587
    :goto_3
    if-eqz v14, :cond_4

    .line 589
    :try_start_3
    const-string v1, "_read"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 590
    .local v20, idxIsRead:I
    const-string v1, "_subject"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 591
    .local v18, idxEmailSubject:I
    const-string v1, "_date"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 592
    .local v16, idxEmailDate:I
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 593
    .local v17, idxEmailMessageId:I
    const-string v1, "_subjtype"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 595
    .local v19, idxEmailSubjectType:I
    :cond_8
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 597
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_9

    .line 598
    add-int/lit8 v13, v13, 0x1

    .line 600
    :cond_9
    if-eqz v11, :cond_8

    .line 602
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iget-wide v5, v11, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_8

    .line 604
    invoke-virtual {v11}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->resetValue()V

    .line 606
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 607
    .local v26, subject:Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 608
    .local v27, subjectType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 609
    .local v2, subjectWithType:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    :goto_5
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v5, "EMAIL"

    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v1, v11

    move-wide/from16 v6, v22

    invoke-virtual/range {v1 .. v10}, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->setValue(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 618
    .end local v2           #subjectWithType:Ljava/lang/String;
    .end local v16           #idxEmailDate:I
    .end local v17           #idxEmailMessageId:I
    .end local v18           #idxEmailSubject:I
    .end local v19           #idxEmailSubjectType:I
    .end local v20           #idxIsRead:I
    .end local v26           #subject:Ljava/lang/String;
    .end local v27           #subjectType:Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v1

    .line 580
    :catch_1
    move-exception v15

    .line 581
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v1, "PersonIndicatorRequest"

    const-string v3, "Query Unread Email part2 failed in PersonIndicatorRequest"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 583
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 584
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 612
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v2       #subjectWithType:Ljava/lang/String;
    .restart local v16       #idxEmailDate:I
    .restart local v17       #idxEmailMessageId:I
    .restart local v18       #idxEmailSubject:I
    .restart local v19       #idxEmailSubjectType:I
    .restart local v20       #idxIsRead:I
    .restart local v26       #subject:Ljava/lang/String;
    .restart local v27       #subjectType:Ljava/lang/String;
    :cond_b
    move-object/from16 v2, v26

    goto :goto_5

    .line 618
    .end local v2           #subjectWithType:Ljava/lang/String;
    .end local v26           #subject:Ljava/lang/String;
    .end local v27           #subjectType:Ljava/lang/String;
    :cond_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
.end method

.method public toPublishResult()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method
