.class Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;
.super Landroid/os/Handler;
.source "HtcPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 357
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    .line 359
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 363
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 369
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 370
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 376
    .local v5, key:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 377
    .local v13, result:Ljava/lang/String;
    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/settings/framework/app/HtcPhoneService;->access$100(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics(Landroid/content/Context;)V
    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->access$200(Landroid/content/Context;)V

    goto :goto_0

    .line 386
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v5           #key:Ljava/lang/String;
    .end local v13           #result:Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 387
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 393
    .restart local v5       #key:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 394
    .restart local v13       #result:Ljava/lang/String;
    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->parseResponse(Ljava/lang/String;)V
    invoke-static {v13}, Lcom/android/settings/framework/app/HtcPhoneService;->access$100(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->updateLifeStatistics2(Landroid/content/Context;)V
    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->access$300(Landroid/content/Context;)V

    goto :goto_0

    .line 407
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v5           #key:Ljava/lang/String;
    .end local v13           #result:Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 408
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const-string v2, "00000400"

    .line 409
    .local v2, command:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v14, :cond_0

    .line 410
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_1
    #calls: Lcom/android/settings/framework/app/HtcPhoneService;->validateStateOfNv(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/settings/framework/app/HtcPhoneService;->access$500(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    .line 417
    const/16 v14, 0xa

    const/16 v15, 0xc

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 418
    .local v12, naiLength:Ljava/lang/String;
    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 419
    .local v6, len:I
    const/16 v14, 0xc

    mul-int/lit8 v15, v6, 0x2

    add-int/lit8 v15, v15, 0xc

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/framework/app/HtcPhoneService;->doStringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, nai:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OoO nai (1):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v6           #len:I
    .end local v12           #naiLength:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OoO Get CDMA NAI ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 429
    .restart local v5       #key:Ljava/lang/String;
    monitor-enter v5

    .line 431
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    new-instance v4, Landroid/content/Intent;

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v4, intent:Landroid/content/Intent;
    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v15, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_NAI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v15}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const-string v14, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v4, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 412
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #key:Ljava/lang/String;
    .end local v11           #nai:Ljava/lang/String;
    :cond_0
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 422
    :cond_1
    const-string v11, ""

    .line 423
    .restart local v11       #nai:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OoO nai (2):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 432
    .restart local v5       #key:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 433
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 435
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 448
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #command:Ljava/lang/String;
    .end local v5           #key:Ljava/lang/String;
    .end local v11           #nai:Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 453
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const/4 v10, 0x0

    .line 455
    .local v10, nERIVersion:Ljava/lang/String;
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v14, :cond_2

    .line 456
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ERR_NV_CMD_FAILED-ar.result == null."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_4
    new-instance v4, Landroid/content/Intent;

    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_SERVICE_ACTION:Ljava/lang/String;

    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .restart local v4       #intent:Landroid/content/Intent;
    sget-object v14, Lcom/android/settings/framework/app/HtcPhoneService;->PHONE_TASK_INDEX_NAME:Ljava/lang/String;

    sget-object v15, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ERI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v15}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->getIndex()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    const-string v14, "com.htc.intent.EXTRA_SUMMARY"

    invoke-virtual {v4, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/framework/app/HtcPhoneService$MyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 458
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v14, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .restart local v2       #command:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "command:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v14, 0x4

    const/4 v15, 0x6

    :try_start_3
    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 462
    .local v8, nCMDType:Ljava/lang/String;
    const/4 v14, 0x6

    const/16 v15, 0x8

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, nCMDStatus:Ljava/lang/String;
    const/16 v14, 0x18

    const/16 v15, 0x1c

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .line 470
    :goto_5
    const-string v14, "00"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 471
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Get ERI type ok"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v9, 0x0

    .line 475
    .local v9, nERINumber:I
    const/16 v14, 0x10

    :try_start_4
    invoke-static {v10, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v9

    .line 479
    :goto_6
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 480
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OoO eri:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 464
    .end local v7           #nCMDStatus:Ljava/lang/String;
    .end local v8           #nCMDType:Ljava/lang/String;
    .end local v9           #nERINumber:I
    :catch_1
    move-exception v3

    .line 465
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, ""

    .line 466
    .restart local v8       #nCMDType:Ljava/lang/String;
    const-string v7, "11"

    .line 467
    .restart local v7       #nCMDStatus:Ljava/lang/String;
    const-string v10, "Not available"

    .line 468
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Get ERI version error!!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 476
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v9       #nERINumber:I
    :catch_2
    move-exception v3

    .line 477
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Integer.parseInt(nERIVersion, 16)ERROR"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 483
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #nERINumber:I
    :cond_3
    invoke-static {}, Lcom/android/settings/framework/app/HtcPhoneService;->access$400()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OoO Get ERI status unsuccessful"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x384 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method
