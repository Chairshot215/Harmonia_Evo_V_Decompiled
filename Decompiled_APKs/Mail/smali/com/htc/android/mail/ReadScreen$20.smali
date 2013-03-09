.class Lcom/htc/android/mail/ReadScreen$20;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ReadScreen;->showMailBody(Z)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2429
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2431
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "ReadScreen"

    const-string v14, "### showMailBody mail start ###>>>"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    sget-object v14, Lcom/htc/android/mail/MailProvider;->sLimitPartColumns:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/ReadScreen;->GetHtmlCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2436
    .local v8, htmlcursor:Landroid/database/Cursor;
    if-eqz v8, :cond_d

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_d

    .line 2437
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "ReadScreen"

    const-string v14, "### showMailBody html ###>>>"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    const-string v14, "text/html"

    iput-object v14, v13, Lcom/htc/android/mail/ReadScreen;->mimeType:Ljava/lang/String;

    .line 2440
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "ReadScreen"

    const-string v14, "reload showMailBody() with mRelatedInfos"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/ReadScreen;->GetAllRelatedAttachmentCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2445
    .local v10, relatedAttachmentCursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2446
    .local v7, fetchedRelatedInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/RelatedInfo;>;"
    const/4 v9, 0x0

    .line 2447
    .local v9, notFetchRelatedInfosCount:I
    if-eqz v10, :cond_9

    .line 2448
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_9

    .line 2449
    :cond_3
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2450
    const-string v13, "_filepath"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2451
    .local v3, filepath:Ljava/lang/String;
    const-string v13, "_id"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2452
    .local v5, partid:J
    const-string v13, "_cid"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2453
    .local v2, cid:Ljava/lang/String;
    const-string v13, "_filename"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2454
    .local v4, filename:Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 2455
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "ReadScreen"

    const-string v14, "have related mail is not loaded"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    :cond_4
    new-instance v1, Lcom/htc/android/mail/RelatedInfo;

    invoke-direct/range {v1 .. v6}, Lcom/htc/android/mail/RelatedInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2457
    .local v1, relatedinfo:Lcom/htc/android/mail/RelatedInfo;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2458
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, "ReadScreen"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filepath="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "ReadScreen"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "filename="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    :cond_6
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "ReadScreen"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2462
    .end local v1           #relatedinfo:Lcom/htc/android/mail/RelatedInfo;
    :cond_7
    if-eqz v2, :cond_3

    const-string v13, "NIL"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 2463
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 2467
    .end local v2           #cid:Ljava/lang/String;
    .end local v3           #filepath:Ljava/lang/String;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #partid:J
    :cond_8
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "ReadScreen"

    const-string v14, "have related mail"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->showHtmlBody(Landroid/database/Cursor;Ljava/util/ArrayList;I)V
    invoke-static {v13, v8, v7, v9}, Lcom/htc/android/mail/ReadScreen;->access$3100(Lcom/htc/android/mail/ReadScreen;Landroid/database/Cursor;Ljava/util/ArrayList;I)V

    .line 2474
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_a

    .line 2475
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2504
    .end local v7           #fetchedRelatedInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/RelatedInfo;>;"
    .end local v9           #notFetchRelatedInfosCount:I
    .end local v10           #relatedAttachmentCursor:Landroid/database/Cursor;
    :cond_a
    :goto_1
    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2505
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_c

    const-string v13, "ReadScreen"

    const-string v14, "### showMailBody mail end ###<<<"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    :cond_c
    return-void

    .line 2478
    :cond_d
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_e

    const-string v13, "ReadScreen"

    const-string v14, "### showMailBody plain ###>>>"

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    sget-object v14, Lcom/htc/android/mail/MailProvider;->sLimitPartColumns:[Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/android/mail/ReadScreen;->GetTextCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2484
    .local v12, textcursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "ReadScreen"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "textcursor>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    :cond_f
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_10

    .line 2486
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    const-string v14, "text/plain"

    iput-object v14, v13, Lcom/htc/android/mail/ReadScreen;->mimeType:Ljava/lang/String;

    .line 2487
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->showTextBody(Landroid/database/Cursor;)V
    invoke-static {v13, v12}, Lcom/htc/android/mail/ReadScreen;->access$3200(Lcom/htc/android/mail/ReadScreen;Landroid/database/Cursor;)V

    .line 2499
    :goto_2
    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_a

    .line 2500
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2492
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x9

    invoke-virtual {v13, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 2495
    const-string v11, ""

    .line 2496
    .local v11, text_body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/4 v14, 0x1

    #setter for: Lcom/htc/android/mail/ReadScreen;->mEmptyHtml:Z
    invoke-static {v13, v14}, Lcom/htc/android/mail/ReadScreen;->access$3302(Lcom/htc/android/mail/ReadScreen;Z)Z

    .line 2497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/ReadScreen$20;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/htc/android/mail/ReadScreen;->access$2800(Lcom/htc/android/mail/ReadScreen;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2
.end method
