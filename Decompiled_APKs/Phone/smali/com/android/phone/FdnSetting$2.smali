.class Lcom/android/phone/FdnSetting$2;
.super Landroid/os/Handler;
.source "FdnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/FdnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const v9, 0x7f0e0384

    const v8, 0x7f0e036a

    const v7, 0x7f0e038c

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 341
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 487
    :goto_0
    return-void

    .line 347
    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updateEnableFDN()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$000(Lcom/android/phone/FdnSetting;)V

    .line 348
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updatePin2RelatedStatus()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 350
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 351
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 353
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mInvalidPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 356
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 357
    .local v1, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 362
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v7}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 364
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v8}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 373
    :goto_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$700(Lcom/android/phone/FdnSetting;)Lcom/android/phone/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4, v8}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 379
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mInvalidPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 381
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$800(Lcom/android/phone/FdnSetting;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 382
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0348

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto :goto_0

    .line 384
    :cond_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0349

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto :goto_0

    .line 396
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPin2State:I
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)I

    move-result v2

    .line 397
    .local v2, pin2StateBeforeReset:I
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->updatePin2RelatedStatus()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$100(Lcom/android/phone/FdnSetting;)V

    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 400
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_c

    .line 401
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 402
    .restart local v1       #ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_6

    .line 417
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 418
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v7}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 422
    :goto_2
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPin2State:I
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)I

    move-result v3

    if-nez v3, :cond_5

    .line 423
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    .line 427
    :goto_3
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mInvalidPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 428
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 420
    :cond_4
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4, v7}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 425
    :cond_5
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    goto :goto_3

    .line 432
    :cond_6
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPin2State:I
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)I

    move-result v3

    if-nez v3, :cond_8

    .line 435
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 436
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0385

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 458
    :goto_4
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPin2State:I
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)I

    move-result v3

    if-nez v3, :cond_b

    .line 460
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    .line 465
    :goto_5
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mInvalidPin:Z
    invoke-static {v3, v6}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 466
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayPinChangeDialog()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1100(Lcom/android/phone/FdnSetting;)V

    goto/16 :goto_0

    .line 438
    :cond_7
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    const v5, 0x7f0e0385

    invoke-virtual {v4, v5}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 441
    :cond_8
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mPin2State:I
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$900(Lcom/android/phone/FdnSetting;)I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 444
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #getter for: Lcom/android/phone/FdnSetting;->mLimitedDisplayArea:Z
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$500(Lcom/android/phone/FdnSetting;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 445
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v9}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto :goto_4

    .line 447
    :cond_9
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    iget-object v4, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v4, v9}, Lcom/android/phone/FdnSetting;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/FdnSetting;->mError:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$602(Lcom/android/phone/FdnSetting;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 451
    :cond_a
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0012

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto/16 :goto_0

    .line 462
    :cond_b
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    goto :goto_5

    .line 472
    .end local v1           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_c
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    if-ne v2, v6, :cond_d

    .line 474
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0013

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    .line 478
    :goto_6
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mInvalidPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$202(Lcom/android/phone/FdnSetting;Z)Z

    .line 479
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeStateForPUK2()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$400(Lcom/android/phone/FdnSetting;)V

    .line 481
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #calls: Lcom/android/phone/FdnSetting;->resetPinChangeState()V
    invoke-static {v3}, Lcom/android/phone/FdnSetting;->access$1000(Lcom/android/phone/FdnSetting;)V

    .line 482
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    #setter for: Lcom/android/phone/FdnSetting;->mSkipOldPin:Z
    invoke-static {v3, v5}, Lcom/android/phone/FdnSetting;->access$1202(Lcom/android/phone/FdnSetting;Z)Z

    goto/16 :goto_0

    .line 476
    :cond_d
    iget-object v3, p0, Lcom/android/phone/FdnSetting$2;->this$0:Lcom/android/phone/FdnSetting;

    const v4, 0x7f0e0389

    #calls: Lcom/android/phone/FdnSetting;->displayMessage(I)V
    invoke-static {v3, v4}, Lcom/android/phone/FdnSetting;->access$300(Lcom/android/phone/FdnSetting;I)V

    goto :goto_6

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
