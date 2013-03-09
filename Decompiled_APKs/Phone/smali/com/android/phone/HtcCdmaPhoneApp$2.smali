.class Lcom/android/phone/HtcCdmaPhoneApp$2;
.super Landroid/os/Handler;
.source "HtcCdmaPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaPhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 377
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 579
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 379
    :sswitch_1
    const-string v5, "HtcCdmaPhoneApp"

    const-string v6, "OoO DISCONNECT"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$000(Lcom/android/phone/HtcCdmaPhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 386
    :sswitch_2
    const-string v5, "HtcCdmaPhoneApp"

    const-string v6, "OoO NETWORK_BUSY"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 388
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 390
    const-string v5, "HtcCdmaPhoneApp"

    const-string v6, "OoO Exception notifying Network Busy"

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 393
    :cond_1
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v3, v5, v8

    .line 394
    .local v3, indexOfNetworkBusy:I
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO - Display BUSY message! index == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$100(Lcom/android/phone/HtcCdmaPhoneApp;Ljava/lang/String;)V

    .line 395
    packed-switch v3, :pswitch_data_0

    .line 406
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OoO - Unexpected BUSY message! index == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$100(Lcom/android/phone/HtcCdmaPhoneApp;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, v5, Lcom/android/phone/HtcCdmaPhoneApp;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;->startNetworkBusyDialog(Landroid/content/Context;I)Z

    .line 399
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->playTone(I)V
    invoke-static {v5, v10}, Lcom/android/phone/HtcCdmaPhoneApp;->access$200(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, v5, Lcom/android/phone/HtcCdmaPhoneApp;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/phone/cdma/HtcCdmaNetworkBusyScreen;->startNetworkBusyDialog(Landroid/content/Context;I)Z

    .line 403
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->playTone(I)V
    invoke-static {v5, v10}, Lcom/android/phone/HtcCdmaPhoneApp;->access$200(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto/16 :goto_0

    .line 413
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #indexOfNetworkBusy:I
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 414
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 415
    const-string v5, "HtcCdmaPhoneApp"

    const-string v6, "Exception notifying Tone Signal "

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 418
    :cond_2
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v2, v5, v8

    .line 419
    .local v2, cdmaToneType:I
    if-nez v2, :cond_0

    .line 420
    const-string v6, "HtcCdmaPhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATUS_TONE_CDMA: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v9

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v9

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->playTone(I)V
    invoke-static {v6, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$200(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto/16 :goto_0

    .line 425
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #cdmaToneType:I
    :sswitch_4
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->onCompletion()V
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$300(Lcom/android/phone/HtcCdmaPhoneApp;)V

    goto/16 :goto_0

    .line 428
    :sswitch_5
    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->onModemLinkStatus(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$400(Lcom/android/phone/HtcCdmaPhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 431
    :sswitch_6
    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->onDataLinkModeStatus(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$500(Lcom/android/phone/HtcCdmaPhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 434
    :sswitch_7
    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->onDataLinkDormancyStatus(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$600(Lcom/android/phone/HtcCdmaPhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 438
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mMipUtils:Lcom/android/phone/cdma/HtcCdmaMipUtils;
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$700(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/cdma/HtcCdmaMipUtils;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mMipUtils:Lcom/android/phone/cdma/HtcCdmaMipUtils;
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$700(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/cdma/HtcCdmaMipUtils;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Lcom/android/phone/cdma/HtcCdmaMipUtils;->handleMipError(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 451
    :sswitch_9
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, v5, Lcom/android/phone/HtcCdmaPhoneApp;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/phone/cdma/HtcCdmaMIPScreen;->startHotspotNotSupportDialog(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 457
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 458
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    .line 459
    const-string v5, "HtcCdmaPhoneApp"

    const-string v6, "Exception of receiving ota message"

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 463
    :cond_3
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    .line 464
    .local v0, OtaStatus:[I
    const-string v5, "HtcCdmaPhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ota ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_BACKGROUND_OTA:Z

    if-eqz v5, :cond_5

    .line 468
    aget v5, v0, v8

    const/16 v6, 0xd

    if-ne v5, v6, :cond_4

    .line 469
    sput-boolean v9, Lcom/android/phone/HtcCdmaBgOtasp;->hasShowOTADialog:Z

    .line 471
    :cond_4
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    aget v6, v0, v8

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->writeOtaRequired(I)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$800(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto/16 :goto_0

    .line 475
    :cond_5
    aget v5, v0, v8

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->changeOTAstring(I)V
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$900(I)V

    goto/16 :goto_0

    .line 493
    .end local v0           #OtaStatus:[I
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_b
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1000()Lcom/android/phone/HtcCdmaPhoneApp;

    move-result-object v6

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->floatOTAdialog_mIndex:I
    invoke-static {v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1100(Lcom/android/phone/HtcCdmaPhoneApp;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 494
    const-string v5, "HtcCdmaPhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OTA timeout closed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1000()Lcom/android/phone/HtcCdmaPhoneApp;

    move-result-object v7

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->floatOTAdialog_mIndex:I
    invoke-static {v7}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1100(Lcom/android/phone/HtcCdmaPhoneApp;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->floatOTAdialog_close(Z)V
    invoke-static {v9}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1200(Z)V

    goto/16 :goto_0

    .line 500
    :sswitch_c
    const-string v5, "HtcCdmaPhoneApp"

    const-string v6, "EVENT_HTC_CDMA_OTA_REBOOT_TIMEOUT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, v5, Lcom/android/phone/HtcCdmaPhoneApp;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 503
    .local v4, pm:Landroid/os/PowerManager;
    const-string v5, "oem-12"

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    .end local v4           #pm:Landroid/os/PowerManager;
    :sswitch_d
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->blockAllKeyboardKeyEvent()V
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1300(Lcom/android/phone/HtcCdmaPhoneApp;)V

    .line 509
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->showDialog(I)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1400(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto/16 :goto_0

    .line 515
    :sswitch_e
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mLoopback:Lcom/android/phone/HtcCdmaLoopbackUtils;
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1500(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/HtcCdmaLoopbackUtils;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 516
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mLoopback:Lcom/android/phone/HtcCdmaLoopbackUtils;
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1500(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/HtcCdmaLoopbackUtils;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Lcom/android/phone/HtcCdmaLoopbackUtils;->handleLoopbackMode(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 522
    :sswitch_f
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD3:Z

    if-eqz v5, :cond_0

    .line 524
    :cond_6
    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->handleDataRoamGuardNotification(Landroid/os/AsyncResult;)V
    invoke-static {v6, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1600(Lcom/android/phone/HtcCdmaPhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 528
    :sswitch_10
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v5, :cond_0

    .line 529
    :cond_7
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->handleDataRoamGuardUserSetting(I)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1700(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto/16 :goto_0

    .line 533
    :sswitch_11
    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD:Z

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/phone/HtcFeatureList;->FEATURE_DATA_ROAM_GUARD2:Z

    if-eqz v5, :cond_0

    .line 534
    :cond_8
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->handleDataRoamGuardDialogClosed()V
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1800(Lcom/android/phone/HtcCdmaPhoneApp;)V

    goto/16 :goto_0

    .line 539
    :sswitch_12
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mCdmaSignalFade:Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1900(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 540
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mCdmaSignalFade:Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;
    invoke-static {v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$1900(Lcom/android/phone/HtcCdmaPhoneApp;)Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Lcom/android/phone/cdma/HtcCdmaSignalFadeUtils;->handleSignalFadeError(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 546
    :sswitch_13
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    const/16 v6, 0x81

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->playTone(I)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$200(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto/16 :goto_0

    .line 552
    :sswitch_14
    iget-object v5, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget v6, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->displayFailVerizonOTAcall(I)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCdmaPhoneApp;->access$2000(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto/16 :goto_0

    .line 559
    :sswitch_15
    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$2;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    invoke-virtual {v6, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->handleVZWGlobalRoamingOptions(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 377
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_2
        0x5 -> :sswitch_e
        0x7 -> :sswitch_c
        0x9 -> :sswitch_d
        0x1c -> :sswitch_a
        0x1d -> :sswitch_b
        0x1f -> :sswitch_13
        0x28 -> :sswitch_5
        0x29 -> :sswitch_6
        0x2a -> :sswitch_7
        0x2b -> :sswitch_8
        0x2e -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_11
        0x31 -> :sswitch_12
        0x32 -> :sswitch_9
        0x34 -> :sswitch_14
        0x35 -> :sswitch_15
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
    .end sparse-switch

    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
