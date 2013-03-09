.class public Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/OutOfOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setOofRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/OutOfOffice;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v15}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "OutOfOffice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v16

    const-string v18, "> setOof"

    invoke-static/range {v15 .. v18}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 605
    :cond_0
    const/4 v14, -0x1

    .line 607
    .local v14, setResult:I
    :try_start_0
    new-instance v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;

    invoke-direct {v12}, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;-><init>()V

    .line 609
    .local v12, request:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    const/4 v9, 0x1

    .line 610
    .local v9, nEnabled:I
    const-string v2, "Text"

    .line 611
    .local v2, bodyType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mEtOofMessage:Landroid/widget/EditText;
    invoke-static {v15}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$800(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/EditText;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 613
    .local v11, replyMessage:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_1

    .line 614
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const v16, 0x7f0b02bd

    invoke-virtual/range {v15 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 615
    const-string v15, "OutOfOffice"

    const-string v16, "> reply message lehgth is 0, set reply msg as space"

    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mSpDoing:Lcom/htc/widget/HtcSpinner;
    invoke-static {v15}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$900(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/widget/HtcSpinner;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcSpinner;->getSelectedItemId()J

    move-result-wide v4

    .line 619
    .local v4, itemId:J
    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-nez v15, :cond_7

    .line 620
    const/4 v9, 0x0

    .line 621
    const/4 v15, 0x0

    iput v15, v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofState:I

    .line 632
    :cond_2
    :goto_0
    new-instance v6, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;

    invoke-direct {v6}, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;-><init>()V

    .line 633
    .local v6, msg1:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    const/4 v15, 0x1

    iput v15, v6, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->appliesTo:I

    .line 634
    iput v9, v6, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->enabled:I

    .line 635
    if-eqz v9, :cond_3

    .line 636
    iput-object v11, v6, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    .line 637
    iput-object v2, v6, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->bodyType:Ljava/lang/String;

    .line 640
    :cond_3
    new-instance v7, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;

    invoke-direct {v7}, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;-><init>()V

    .line 641
    .local v7, msg2:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    const/4 v15, 0x2

    iput v15, v7, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->appliesTo:I

    .line 642
    iput v9, v7, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->enabled:I

    .line 643
    if-eqz v9, :cond_4

    .line 644
    iput-object v11, v7, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    .line 645
    iput-object v2, v7, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->bodyType:Ljava/lang/String;

    .line 648
    :cond_4
    new-instance v8, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;

    invoke-direct {v8}, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;-><init>()V

    .line 649
    .local v8, msg3:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    const/4 v15, 0x3

    iput v15, v8, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->appliesTo:I

    .line 660
    const/4 v10, 0x0

    .line 661
    .local v10, nExternal_unknown:I
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mChkExternalRecipient:Landroid/widget/CheckBox;
    invoke-static {v15}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$700(Lcom/htc/android/mail/easclient/OutOfOffice;)Landroid/widget/CheckBox;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 662
    const/4 v10, 0x1

    .line 663
    iput-object v11, v8, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->replyMessage:Ljava/lang/String;

    .line 664
    iput-object v2, v8, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->bodyType:Ljava/lang/String;

    .line 666
    :cond_5
    iput v10, v8, Lcom/htc/android/mail/eassvc/pim/EASOofMessage;->enabled:I

    .line 668
    iget-object v15, v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofMsgList:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object v15, v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofMsgList:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v15, v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofMsgList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v16, 0x0

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$502(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Z

    .line 674
    const-string v15, "OutOfOffice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v16

    const-string v18, "set oof start"

    invoke-static/range {v15 .. v18}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v15}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$200(Lcom/htc/android/mail/easclient/OutOfOffice;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v15, v0, v1, v12}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setOof(JLcom/htc/android/mail/eassvc/pim/EASOofRequest;)I

    move-result v14

    .line 676
    const-string v15, "OutOfOffice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v16

    const-string v18, "set oof end"

    invoke-static/range {v15 .. v18}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mCancelled:Z
    invoke-static {v15}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$500(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 679
    const-string v15, "OutOfOffice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v16

    const-string v18, "set oof cancelled"

    invoke-static/range {v15 .. v18}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 723
    .end local v2           #bodyType:Ljava/lang/String;
    .end local v4           #itemId:J
    .end local v6           #msg1:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    .end local v7           #msg2:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    .end local v8           #msg3:Lcom/htc/android/mail/eassvc/pim/EASOofMessage;
    .end local v9           #nEnabled:I
    .end local v10           #nExternal_unknown:I
    .end local v11           #replyMessage:Ljava/lang/String;
    .end local v12           #request:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :cond_6
    :goto_1
    return-void

    .line 624
    .restart local v2       #bodyType:Ljava/lang/String;
    .restart local v4       #itemId:J
    .restart local v9       #nEnabled:I
    .restart local v11       #replyMessage:Ljava/lang/String;
    .restart local v12       #request:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :cond_7
    const-wide/16 v15, 0x1

    cmp-long v15, v4, v15

    if-nez v15, :cond_2

    .line 625
    const/4 v15, 0x2

    iput v15, v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->oofState:I

    .line 626
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v16, 0x1

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->EncodingDateTimeFormat(Z)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2300(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->startTime:Ljava/lang/String;

    .line 627
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v16, 0x0

    #calls: Lcom/htc/android/mail/easclient/OutOfOffice;->EncodingDateTimeFormat(Z)Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$2300(Lcom/htc/android/mail/easclient/OutOfOffice;Z)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/htc/android/mail/eassvc/pim/EASOofRequest;->endTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 683
    .end local v2           #bodyType:Ljava/lang/String;
    .end local v4           #itemId:J
    .end local v9           #nEnabled:I
    .end local v11           #replyMessage:Ljava/lang/String;
    .end local v12           #request:Lcom/htc/android/mail/eassvc/pim/EASOofRequest;
    :catch_0
    move-exception v3

    .line 684
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    .end local v3           #e:Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/16 v16, 0x65

    invoke-virtual/range {v15 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->removeDialog(I)V

    .line 692
    move v13, v14

    .line 693
    .local v13, result:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    new-instance v16, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable$1;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;I)V

    invoke-virtual/range {v15 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v15}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string v15, "OutOfOffice"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/easclient/OutOfOffice$setOofRunnable;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static/range {v16 .. v16}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v16

    const-string v18, "< setOof"

    invoke-static/range {v15 .. v18}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method
