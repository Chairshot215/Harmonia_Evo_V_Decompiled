.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .parameter "msg"

    .prologue
    .line 340
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 782
    const-string v22, "PhoneInterfaceManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "MainThreadHandler: unexpected message code: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 345
    :sswitch_0
    const-string v22, "PhoneInterfaceManager"

    const-string v23, "EVENT_T3G_CMMB_GSM_AUTH_RSP"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 349
    .local v3, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 350
    if-eqz v3, :cond_1

    :try_start_0
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B
    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->access$102(Lcom/android/phone/PhoneInterfaceManager;[B)[B

    .line 355
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 356
    monitor-exit v23

    goto :goto_0

    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 362
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    const-string v22, "PhoneInterfaceManager"

    const-string v23, "EVENT_T3G_CMMB_3G_AUTH_RSP"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 366
    .restart local v3       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 367
    if-eqz v3, :cond_2

    :try_start_1
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mOemResult:[B
    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->access$102(Lcom/android/phone/PhoneInterfaceManager;[B)[B

    .line 372
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 373
    monitor-exit v23

    goto/16 :goto_0

    :catchall_1
    move-exception v22

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v22

    .line 380
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 381
    .local v18, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 384
    monitor-enter v18

    .line 385
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 386
    monitor-exit v18

    goto/16 :goto_0

    :catchall_2
    move-exception v22

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v22

    .line 390
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 391
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 393
    .local v14, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 397
    .end local v14           #onCompleted:Landroid/os/Message;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 398
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 399
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 400
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 406
    :goto_1
    monitor-enter v18

    .line 407
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 408
    monitor-exit v18

    goto/16 :goto_0

    :catchall_3
    move-exception v22

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v22

    .line 403
    :cond_3
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 412
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$200(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 416
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$300(Lcom/android/phone/PhoneInterfaceManager;)V

    goto/16 :goto_0

    .line 420
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 421
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v8, 0x0

    .line 422
    .local v8, hungUp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v17

    .line 423
    .local v17, phoneType:I
    const/16 v22, 0x2

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v8

    .line 434
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 436
    monitor-enter v18

    .line 437
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 438
    monitor-exit v18

    goto/16 :goto_0

    :catchall_4
    move-exception v22

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v22

    .line 427
    :cond_4
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    goto :goto_2

    .line 431
    :cond_5
    new-instance v22, Ljava/lang/IllegalStateException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unexpected phone type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 443
    .end local v8           #hungUp:Z
    .end local v17           #phoneType:I
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 444
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v12, 0x0

    .line 445
    .local v12, needToTerminateImmediately:Z
    const/4 v7, 0x0

    .line 446
    .local v7, htcHungUp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 447
    .local v16, phType:I
    const/16 v22, 0x2

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v22

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v22

    if-nez v22, :cond_7

    const/4 v10, 0x1

    .line 457
    .local v10, isCallWaiting:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v7

    .line 458
    if-eqz v7, :cond_8

    if-nez v10, :cond_8

    const/4 v12, 0x1

    .line 468
    .end local v10           #isCallWaiting:Z
    :cond_6
    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 470
    monitor-enter v18

    .line 471
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 472
    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 473
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/InCallScreen;->finishImmediatelyIfNecessary()V

    goto/16 :goto_0

    .line 455
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 458
    .restart local v10       #isCallWaiting:Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 472
    .end local v10           #isCallWaiting:Z
    :catchall_5
    move-exception v22

    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v22

    .line 483
    .end local v7           #htcHungUp:Z
    .end local v12           #needToTerminateImmediately:Z
    .end local v16           #phType:I
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_9
    const-string v22, "PhoneInterfaceManager"

    const-string v23, "EVENT_CSIM_RSP"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 487
    .restart local v3       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 488
    if-eqz v3, :cond_9

    :try_start_7
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    check-cast v22, [Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mCSIMResult:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->access$402(Lcom/android/phone/PhoneInterfaceManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 493
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 494
    monitor-exit v23

    goto/16 :goto_0

    :catchall_6
    move-exception v22

    monitor-exit v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v22

    .line 502
    .end local v3           #ar:Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v23

    monitor-enter v23

    .line 503
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.android.phone"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mPlatformSignature:[Landroid/content/pm/Signature;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->access$602(Lcom/android/phone/PhoneInterfaceManager;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.android.providers.contacts"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    invoke-static/range {v24 .. v26}, Lcom/android/phone/PhoneInterfaceManager;->access$700(Lcom/android/phone/PhoneInterfaceManager;Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    #setter for: Lcom/android/phone/PhoneInterfaceManager;->mShareSignature:[Landroid/content/pm/Signature;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->access$802(Lcom/android/phone/PhoneInterfaceManager;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/PhoneInterfaceManager;->mSignatureLock:Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneInterfaceManager;->access$500(Lcom/android/phone/PhoneInterfaceManager;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V

    .line 508
    monitor-exit v23

    goto/16 :goto_0

    :catchall_7
    move-exception v22

    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v22

    .line 513
    :sswitch_b
    sget-boolean v22, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v22, :cond_0

    .line 514
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 515
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 516
    .local v9, index:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v24, v0

    const/16 v25, 0xd

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lcom/android/internal/telephony/Phone;->getPdnSettings(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 522
    .end local v9           #index:Ljava/lang/Integer;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_c
    sget-boolean v22, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v22, :cond_0

    .line 523
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 524
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 525
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 526
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    .line 527
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 529
    :cond_a
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    .line 530
    new-instance v22, Ljava/lang/String;

    const-string v23, ""

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 533
    :cond_b
    monitor-enter v18

    .line 534
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 535
    monitor-exit v18

    goto/16 :goto_0

    :catchall_8
    move-exception v22

    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    throw v22

    .line 539
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_d
    sget-boolean v22, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v22, :cond_0

    .line 540
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 541
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 542
    .local v15, param:Ljava/lang/String;
    const/16 v22, 0x2c

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 543
    .local v21, type_ended:I
    new-instance v9, Ljava/lang/Integer;

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 544
    .restart local v9       #index:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v23

    add-int/lit8 v24, v21, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v25, v0

    const/16 v26, 0xf

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v22 .. v25}, Lcom/android/internal/telephony/Phone;->setPdnSettings(ILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 551
    .end local v9           #index:Ljava/lang/Integer;
    .end local v15           #param:Ljava/lang/String;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v21           #type_ended:I
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 553
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :try_start_a
    const-string v22, "com.android.internal.telephony.Phone"

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 554
    .local v4, cls:Ljava/lang/Class;
    const-string v22, "getPdnSettings2"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, [Ljava/lang/String;

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-class v25, Landroid/os/Message;

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 555
    .local v11, mth:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x47

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 558
    .end local v4           #cls:Ljava/lang/Class;
    .end local v11           #mth:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v22

    goto/16 :goto_0

    .line 564
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 565
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 566
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 567
    monitor-enter v18

    .line 568
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 569
    monitor-exit v18

    goto/16 :goto_0

    :catchall_9
    move-exception v22

    monitor-exit v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    throw v22

    .line 572
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 574
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :try_start_c
    const-string v22, "com.android.internal.telephony.Phone"

    invoke-static/range {v22 .. v22}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 575
    .restart local v4       #cls:Ljava/lang/Class;
    const-string v22, "setPdnSettings2"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-class v25, [Ljava/lang/String;

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-class v25, Landroid/os/Message;

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 576
    .restart local v11       #mth:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v25, v0

    const/16 v26, 0x49

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 585
    .end local v4           #cls:Ljava/lang/Class;
    .end local v11           #mth:Ljava/lang/reflect/Method;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :goto_5
    :sswitch_11
    sget-boolean v22, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v22, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 592
    :sswitch_12
    sget-boolean v22, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v22, :cond_0

    .line 593
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 594
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 595
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v20, 0x3

    .line 596
    .local v20, type:I
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    .line 597
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v20, v22, v23

    .line 599
    :cond_c
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 601
    monitor-enter v18

    .line 602
    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 603
    monitor-exit v18

    goto/16 :goto_0

    :catchall_a
    move-exception v22

    monitor-exit v18
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    throw v22

    .line 607
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v20           #type:I
    :sswitch_13
    sget-boolean v22, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v22, :cond_0

    .line 608
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 609
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    .line 610
    .local v20, type:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 618
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v20           #type:Ljava/lang/Integer;
    :sswitch_14
    sget-boolean v22, Lcom/android/phone/HtcFeatureList;->FEATURE_CDMA_AND_LTE_SUPPORT:Z

    if-eqz v22, :cond_0

    .line 619
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 620
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 621
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_d

    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 623
    monitor-enter v18

    .line 624
    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 625
    monitor-exit v18

    goto/16 :goto_0

    :catchall_b
    move-exception v22

    monitor-exit v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    throw v22

    .line 621
    :cond_d
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    .line 631
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 632
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 633
    .restart local v9       #index:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-interface/range {v22 .. v24}, Lcom/android/internal/telephony/Phone;->requestSetEhrpdDisableCapability(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 638
    .end local v9           #index:Ljava/lang/Integer;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 639
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 640
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_e

    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 642
    monitor-enter v18

    .line 643
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 644
    monitor-exit v18

    goto/16 :goto_0

    :catchall_c
    move-exception v22

    monitor-exit v18
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    throw v22

    .line 640
    :cond_e
    sget-object v22, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    .line 647
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x22

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->requestEhrpdDomainNameChangeState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 652
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 653
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 654
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/16 v20, -0x1

    .line 655
    .local v20, type:I
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    .line 656
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v20, v22, v23

    .line 658
    :cond_f
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 660
    monitor-enter v18

    .line 661
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 662
    monitor-exit v18

    goto/16 :goto_0

    :catchall_d
    move-exception v22

    monitor-exit v18
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    throw v22

    .line 666
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .end local v20           #type:I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDisableCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 671
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 672
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 673
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v6, 0x0

    .line 674
    .local v6, disable:I
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_10

    .line 675
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v6, v22, v23

    .line 677
    :cond_10
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 679
    monitor-enter v18

    .line 680
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 681
    monitor-exit v18

    goto/16 :goto_0

    :catchall_e
    move-exception v22

    monitor-exit v18
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    throw v22

    .line 685
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v6           #disable:I
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x26

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->requestGetEhrpdDeviceCapability(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 690
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 691
    .restart local v3       #ar:Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 692
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v5, 0x0

    .line 693
    .local v5, device_cap:I
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_11

    .line 694
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    check-cast v22, [I

    const/16 v23, 0x0

    aget v5, v22, v23

    .line 696
    :cond_11
    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 698
    monitor-enter v18

    .line 699
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 700
    monitor-exit v18

    goto/16 :goto_0

    :catchall_f
    move-exception v22

    monitor-exit v18
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    throw v22

    .line 706
    .end local v3           #ar:Landroid/os/AsyncResult;
    .end local v5           #device_cap:I
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v19

    .line 707
    .local v19, screen:Lcom/android/phone/InCallScreen;
    if-eqz v19, :cond_0

    goto/16 :goto_0

    .line 716
    .end local v19           #screen:Lcom/android/phone/InCallScreen;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    const-string v23, "send CW REG request"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneInterfaceManager;->access$900(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 718
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1f6

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 727
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    const-string v23, "get CW REG response"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneInterfaceManager;->access$900(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 735
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    const-string v23, "send CW DREG request"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneInterfaceManager;->access$900(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 737
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1f8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->requestCW_UW_REG(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 746
    .end local v18           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    const-string v23, "get CW DREG response"

    #calls: Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V
    invoke-static/range {v22 .. v23}, Lcom/android/phone/PhoneInterfaceManager;->access$900(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v19

    .line 758
    .restart local v19       #screen:Lcom/android/phone/InCallScreen;
    if-eqz v19, :cond_0

    .line 759
    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/InCallScreen;->onSendSMessageClick()V

    goto/16 :goto_0

    .line 765
    .end local v19           #screen:Lcom/android/phone/InCallScreen;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v19

    .line 766
    .restart local v19       #screen:Lcom/android/phone/InCallScreen;
    if-eqz v19, :cond_0

    .line 767
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleKidzoneRingingConfirm(I)V

    goto/16 :goto_0

    .line 775
    .end local v19           #screen:Lcom/android/phone/InCallScreen;
    :sswitch_24
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 776
    .local v13, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v13, :cond_0

    .line 777
    invoke-virtual {v13}, Lcom/android/phone/CallNotifier;->ringAndTurnOnScreen()V

    goto/16 :goto_0

    .line 579
    .end local v13           #notifier:Lcom/android/phone/CallNotifier;
    .restart local v18       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :catch_1
    move-exception v22

    goto/16 :goto_5

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x6 -> :sswitch_6
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_14
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_a
        0x1e -> :sswitch_15
        0x1f -> :sswitch_16
        0x20 -> :sswitch_17
        0x22 -> :sswitch_18
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1a
        0x25 -> :sswitch_1b
        0x26 -> :sswitch_1c
        0x33 -> :sswitch_0
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1d
        0x3c -> :sswitch_22
        0x3d -> :sswitch_24
        0x46 -> :sswitch_e
        0x47 -> :sswitch_f
        0x48 -> :sswitch_10
        0x49 -> :sswitch_14
        0x1f5 -> :sswitch_1e
        0x1f6 -> :sswitch_1f
        0x1f7 -> :sswitch_20
        0x1f8 -> :sswitch_21
        0x3e9 -> :sswitch_23
    .end sparse-switch
.end method
