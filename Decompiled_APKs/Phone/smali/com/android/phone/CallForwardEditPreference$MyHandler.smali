.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MESSAGE_GET_CF:I = 0x0

.field private static final MESSAGE_SET_CF:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 338
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 339
    .local v5, ar:Landroid/os/AsyncResult;
    const/4 v9, 0x0

    .line 340
    .local v9, error:Z
    iget-object v15, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v15, :cond_0

    .line 341
    iget-object v10, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 342
    .local v10, exception:Ljava/lang/Throwable;
    instance-of v15, v10, Lcom/android/internal/telephony/CommandException;

    if-eqz v15, :cond_0

    .line 343
    check-cast v10, Lcom/android/internal/telephony/CommandException;

    .end local v10           #exception:Ljava/lang/Throwable;
    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    .line 344
    .local v8, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v15, :cond_0

    .line 345
    const/4 v9, 0x1

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v0, v15, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    .line 358
    .end local v8           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 359
    const/4 v15, 0x1

    if-ne v9, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v15, v15, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 360
    const-string v15, "CallForwardEditPreference"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "hit error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " and retry for MESSAGE_SET_CF case, retryCount: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v15, v15, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    const/16 v19, 0x1

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 474
    :goto_0
    return-void

    .line 366
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    .line 367
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v15, v15, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 390
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 391
    iget-object v15, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v15, :cond_6

    .line 395
    iget-object v15, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v15, v15, Lcom/android/internal/telephony/CommandException;

    if-eqz v15, :cond_4

    .line 396
    iget-object v10, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v10, Lcom/android/internal/telephony/CommandException;

    .line 397
    .local v10, exception:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    .line 398
    .restart local v8       #err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v15, :cond_4

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v15, v15, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Lcom/htc/preference/HtcPreference;Lcom/android/internal/telephony/CommandException;)V

    goto :goto_0

    .line 370
    .end local v8           #err:Lcom/android/internal/telephony/CommandException$Error;
    .end local v10           #exception:Lcom/android/internal/telephony/CommandException;
    :cond_2
    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v15, v15, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-gt v15, v0, :cond_3

    .line 371
    const-string v15, "CallForwardEditPreference"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "hit error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " and retry for MESSAGE_GET_CF case, retryCount: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v15, v15, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 380
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lcom/android/phone/CallForwardEditPreference;->retryCount:I

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v15, v15, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    goto/16 :goto_1

    .line 405
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v0, v15, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v17, v0

    iget-object v15, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v15, Lcom/android/internal/telephony/CommandException;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v15}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Lcom/htc/preference/HtcPreference;Lcom/android/internal/telephony/CommandException;)V

    .line 473
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #calls: Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V
    invoke-static {v15}, Lcom/android/phone/CallForwardEditPreference;->access$200(Lcom/android/phone/CallForwardEditPreference;)V

    goto/16 :goto_0

    .line 407
    :cond_6
    iget-object v15, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v15, v15, Ljava/lang/Throwable;

    if-eqz v15, :cond_7

    .line 408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v15, v15, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x190

    invoke-interface/range {v15 .. v17}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 410
    :cond_7
    iget-object v15, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v7, v15

    check-cast v7, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 411
    .local v7, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v15, v7

    if-nez v15, :cond_8

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v15, v15, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    move-object/from16 v16, v0

    const/16 v17, 0x190

    invoke-interface/range {v15 .. v17}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_2

    .line 416
    :cond_8
    const/4 v11, 0x0

    .local v11, i:I
    array-length v13, v7

    .local v13, length:I
    :goto_3
    if-ge v11, v13, :cond_5

    .line 422
    aget-object v15, v7, v11

    iget v15, v15, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    const/16 v16, 0x59

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 416
    :cond_9
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 427
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    #getter for: Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I
    invoke-static {v15}, Lcom/android/phone/CallForwardEditPreference;->access$100(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v15

    aget-object v16, v7, v11

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_9

    .line 429
    aget-object v12, v7, v11

    .line 430
    .local v12, info:Lcom/android/internal/telephony/CallForwardInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v15, v12}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 437
    invoke-static {}, Lcom/android/phone/util/BuildUtils;->isCFNotificationDisabled()Z

    move-result v15

    if-nez v15, :cond_9

    .line 438
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    if-nez v15, :cond_9

    iget v15, v12, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 442
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v15, v15, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v15, :pswitch_data_0

    .line 450
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v15}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02b1

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 454
    .local v14, s:Ljava/lang/CharSequence;
    :goto_5
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v15}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v6, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 456
    .local v6, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v15, 0x7f0e02bb

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v15}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02b3

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 458
    const v15, 0x1080027

    invoke-virtual {v6, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 459
    invoke-virtual {v6, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 460
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 461
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_4

    .line 444
    .end local v6           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v14           #s:Ljava/lang/CharSequence;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v15}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02a7

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 445
    .restart local v14       #s:Ljava/lang/CharSequence;
    goto :goto_5

    .line 447
    .end local v14           #s:Ljava/lang/CharSequence;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v15}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0e02ac

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 448
    .restart local v14       #s:Ljava/lang/CharSequence;
    goto :goto_5

    .line 442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 477
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 479
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v1, v6}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v3, v4, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 490
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 324
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 326
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 329
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
