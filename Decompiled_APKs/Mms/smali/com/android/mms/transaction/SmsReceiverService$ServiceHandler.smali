.class final Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 446
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 447
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 459
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 460
    .local v13, serviceId:I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/Intent;

    .line 467
    .local v8, intent:Landroid/content/Intent;
    if-eqz v8, :cond_0

    .line 468
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, action:Ljava/lang/String;
    const-string v18, "is_cbm"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 470
    .local v9, isCbm:Z
    const-string v18, "discard"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 479
    .local v10, isDiscard:Z
    :goto_0
    const-string v18, "SmsReceiverService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isCbm: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v18, "SmsReceiverService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "isDiscard: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-eqz v10, :cond_1

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 689
    :goto_1
    return-void

    .line 472
    .end local v3           #action:Ljava/lang/String;
    .end local v9           #isCbm:Z
    .end local v10           #isDiscard:Z
    :cond_0
    const-string v3, ""

    .line 473
    .restart local v3       #action:Ljava/lang/String;
    const/4 v9, 0x0

    .line 474
    .restart local v9       #isCbm:Z
    const/4 v10, 0x0

    .restart local v10       #isDiscard:Z
    goto :goto_0

    .line 490
    :cond_1
    const-string v18, "com.android.mms.transaction.MESSAGE_SENT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 494
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/mms/transaction/SmsReceiverService;->access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    goto :goto_1

    .line 495
    :catch_0
    move-exception v6

    .line 497
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 500
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    const-string v18, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 501
    invoke-static {}, Lcom/android/mms/MmsApp;->supportBrightScreenOnNewSMS()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->acquireBrightScreeen()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/SmsReceiverService;->access$200(Lcom/android/mms/transaction/SmsReceiverService;)V

    .line 504
    :cond_4
    if-eqz v9, :cond_5

    .line 506
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCellBroadcast()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleCBReceived(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/mms/transaction/SmsReceiverService;->access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_2

    .line 509
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v0, v8, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    goto :goto_2

    .line 512
    :cond_6
    const-string v18, "com.android.mms.transaction.LBSMESSAGE_RECEIVE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v0, v8, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    goto :goto_2

    .line 514
    :cond_7
    const-string v18, "com.android.mms.transaction.HTC_MWICLEAR_RECEIVE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleMwiClearReceived(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/mms/transaction/SmsReceiverService;->access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 516
    :cond_8
    const-string v18, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 517
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/MmsApp;->changeFirstExecute(Z)V

    .line 518
    const-string v18, "SmsReceiverService"

    const-string v19, "handleBootCompleted"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/SmsReceiverService;->access$600(Lcom/android/mms/transaction/SmsReceiverService;)V

    .line 521
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->updateNotificationAndShortcutStatus(I)V
    invoke-static {v0, v13}, Lcom/android/mms/transaction/SmsReceiverService;->access$700(Lcom/android/mms/transaction/SmsReceiverService;I)V

    goto/16 :goto_1

    .line 528
    :cond_9
    const-string v18, "android.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 529
    const-string v18, "SmsReceiverService"

    const-string v19, "QUICKBOOT_POWERON"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/SmsReceiverService;->access$600(Lcom/android/mms/transaction/SmsReceiverService;)V

    .line 532
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->updateNotificationAndShortcutStatus(I)V
    invoke-static {v0, v13}, Lcom/android/mms/transaction/SmsReceiverService;->access$700(Lcom/android/mms/transaction/SmsReceiverService;I)V

    goto/16 :goto_1

    .line 542
    :cond_a
    const-string v18, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 543
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/mms/transaction/SmsReceiverService;->access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 546
    :cond_b
    const-string v18, "com.android.mms.transaction.SEND_MESSAGE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/SmsReceiverService;->access$900(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto/16 :goto_2

    .line 551
    :cond_c
    const-string v18, "android.intent.action.CB_RECEIVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 553
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCellBroadcast()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleCBReceived(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/mms/transaction/SmsReceiverService;->access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 558
    :cond_d
    const-string v18, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_f

    .line 560
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 561
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_2

    const-string v18, "sms://localhost:9204"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 562
    invoke-static {}, Lcom/android/mms/MmsApp;->supportBrightScreenOnNewSMS()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->acquireBrightScreeen()V
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/SmsReceiverService;->access$200(Lcom/android/mms/transaction/SmsReceiverService;)V

    .line 564
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    const/16 v19, 0x23f4

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v0, v8, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 568
    .end local v17           #uri:Landroid/net/Uri;
    :cond_f
    const-string v18, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 570
    const-string v18, "ss"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 571
    .local v7, iccState:Ljava/lang/String;
    const-string v18, "LOADED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 572
    invoke-static {}, Lcom/android/mms/MmsApp;->initSimOperatorData()V

    .line 576
    :cond_10
    const-string v18, "ss"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "READY"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string v18, "ss"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "LOADED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    :cond_11
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->hasDoneSimSmsAutoSync()Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isVeryFirstExecute()Z

    move-result v18

    if-nez v18, :cond_2

    .line 579
    new-instance v15, Ljava/lang/Thread;

    new-instance v18, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;)V

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    .local v15, thread:Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 609
    .end local v7           #iccState:Ljava/lang/String;
    .end local v15           #thread:Ljava/lang/Thread;
    :cond_12
    const-string v18, "com.kddi.android.intent.action.UNSUP_SMS_RECEIVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleUnSupSmsReceived(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/mms/transaction/SmsReceiverService;->access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 614
    :cond_13
    const-string v18, "com.android.mms.intent.action.NOTIFICATION_REMOVE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 615
    const-string v18, "notify_id"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 617
    .local v11, notify_id:I
    const/16 v18, 0x7b

    move/from16 v0, v18

    if-ne v11, v0, :cond_14

    .line 618
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->hasMessages(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 619
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 623
    :cond_14
    const/16 v18, 0x7d3

    move/from16 v0, v18

    if-ne v11, v0, :cond_2

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 625
    .local v16, ttime:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 626
    .local v14, sp:Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 627
    .local v12, preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v18, "CMAS_LASTCANCEL"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 628
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 633
    .end local v11           #notify_id:I
    .end local v12           #preEdt:Landroid/content/SharedPreferences$Editor;
    .end local v14           #sp:Landroid/content/SharedPreferences;
    .end local v16           #ttime:Ljava/lang/Long;
    :cond_15
    const-string v18, "android.message.CMAS_SYNC_SERVICE_TABLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 636
    const-string v18, "cmas_service_table"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 637
    .local v4, bundle:Landroid/os/Bundle;
    if-eqz v4, :cond_2

    .line 641
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "service_number"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_number:I

    .line 642
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "service_id"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->service_id:[I

    .line 643
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "language"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->language:[I

    .line 644
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "select"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    .line 645
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "alert"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->alert:[I

    .line 646
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "max_messages"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->max_messages:[I

    .line 647
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "label_encode"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->label_encode:[I

    .line 648
    sget-object v18, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    const-string v19, "label"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/mms/MmsApp$CmasSeriveTable;->label:[Ljava/lang/String;

    .line 650
    invoke-static {}, Lcom/android/mms/MmsApp;->syncCdmaCmasSharedPreference()V

    goto/16 :goto_2

    .line 658
    .end local v4           #bundle:Landroid/os/Bundle;
    :cond_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 679
    const-string v18, "SmsReceiverService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unknown action: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 660
    :pswitch_0
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/MmsApp;->setNewIncomingMsgCount(I)V

    .line 663
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MessagingNotification;->setReceivedNotificationShowing(Z)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/SmsReceiverService;->getApplication()Landroid/app/Application;

    move-result-object v5

    .line 668
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 669
    invoke-static {v5}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v19

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSense35BubbleRule()Z

    move-result v18

    if-eqz v18, :cond_18

    const/16 v18, -0x1

    :goto_3
    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 675
    :cond_17
    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->cancelLSNotification(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 669
    :cond_18
    const/16 v18, 0x0

    goto :goto_3

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
