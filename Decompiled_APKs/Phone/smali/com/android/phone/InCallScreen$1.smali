.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 694
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 695
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handler: ignoring message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; we\'re destroyed!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 995
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 698
    :cond_1
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 699
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handler: handling message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " while not in foreground"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 707
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 708
    .local v1, app:Lcom/android/phone/PhoneApp;
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    goto :goto_0

    .line 919
    :sswitch_1
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v11, 0x1

    #setter for: Lcom/android/phone/InCallScreen;->mBgRemoved:Z
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$2202(Lcom/android/phone/InCallScreen;Z)Z

    goto :goto_0

    .line 710
    :sswitch_2
    iget-object v11, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    invoke-virtual {v11, v10}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 714
    :sswitch_3
    iget-object v11, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v11, v10}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 718
    :sswitch_4
    iget-object v11, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v11, v10}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 730
    :sswitch_5
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v10

    if-nez v10, :cond_4

    .line 732
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 733
    .local v8, plugState:I
    and-int/lit8 v10, v8, 0x1

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    and-int/lit16 v10, v8, 0x80

    const/16 v11, 0x80

    if-ne v10, v11, :cond_5

    :cond_3
    const/4 v3, 0x1

    .line 734
    .local v3, ifHeadsetPlugged:Z
    :goto_1
    if-nez v3, :cond_4

    .line 767
    .end local v3           #ifHeadsetPlugged:Z
    .end local v8           #plugState:I
    :cond_4
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 733
    .restart local v8       #plugState:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 771
    .end local v8           #plugState:I
    :sswitch_6
    iget-object v11, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v11, v10}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 775
    :sswitch_7
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 785
    :sswitch_8
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 786
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->dismiss()V

    .line 787
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$802(Lcom/android/phone/InCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 794
    :cond_6
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/MmiCode;

    .line 796
    .local v4, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 797
    .local v7, phoneType:I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    .line 799
    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 800
    invoke-interface {v4}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v10, v11, :cond_0

    .line 801
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v11, "Got MMI_COMPLETE, finishing..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 804
    :cond_7
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->phoneIsInUse()Z
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 806
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    .line 815
    .end local v4           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v7           #phoneType:I
    :sswitch_9
    iget-object v11, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget v12, p1, Landroid/os/Message;->arg1:I

    int-to-char v12, v12

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v11, v10, v12}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 819
    :sswitch_a
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 823
    :sswitch_b
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 827
    :sswitch_c
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 832
    :sswitch_d
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 838
    :sswitch_e
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->processAllowScreenOn()V
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 849
    :sswitch_f
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->phoneIsInUse()Z
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 850
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 851
    const-string v10, "InCallScreen"

    const-string v11, ">>>>update Bluetooth UI<<<<"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 853
    :cond_8
    const-string v10, "InCallScreen"

    const-string v11, ">>>>Phone is Idle<<<<"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 859
    :sswitch_10
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 860
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mControlPanel:Lcom/android/phone/HtcIncallControlPanel;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/HtcIncallControlPanel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v11}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/phone/HtcIncallControlPanel;->onBTStateChagned(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0

    .line 872
    :sswitch_11
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    iget-object v10, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v0, v10

    check-cast v0, [I

    .line 873
    .local v0, OtaStatus:[I
    const/4 v10, 0x0

    aget v9, v0, v10

    .line 874
    .local v9, value:I
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "InCallScreen"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ota msg = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_9
    const/16 v10, 0x10

    if-ne v9, v10, :cond_a

    .line 876
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1802(Z)Z

    .line 878
    :cond_a
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$1800()Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x10

    if-eq v9, v10, :cond_0

    invoke-static {}, Lcom/android/phone/InCallScreen;->access$1900()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 879
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2000()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 880
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$1802(Z)Z

    goto/16 :goto_0

    .line 907
    .end local v0           #OtaStatus:[I
    .end local v9           #value:I
    :sswitch_12
    sget-boolean v10, Lcom/android/phone/HtcFeatureList;->EnableNBPCDSetting:Z

    if-eqz v10, :cond_0

    .line 908
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 909
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 910
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mRetryHBPCDHandlingDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$2102(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 912
    :cond_b
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    .line 913
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->finish()V

    goto/16 :goto_0

    .line 925
    :sswitch_13
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v11, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 926
    :cond_c
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 930
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_d

    .line 932
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v5, v10, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 934
    .local v5, notifier:Lcom/android/phone/CallNotifier;
    if-eqz v5, :cond_d

    invoke-virtual {v5, v6}, Lcom/android/phone/CallNotifier;->isBlacklist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 936
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlacklist and reject:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 942
    .end local v5           #notifier:Lcom/android/phone/CallNotifier;
    .end local v6           #phoneNumber:Ljava/lang/String;
    :cond_d
    if-eqz v2, :cond_0

    .line 943
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallerData:Lcom/android/phone/InCallScreen$CallerData;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$CallerData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen$CallerData;->destroy()V

    .line 946
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->resetUiWhenOnResume()V
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)V

    .line 947
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 948
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 953
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_14
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v11, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 954
    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v10}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v10, v11, :cond_0

    .line 957
    iget-object v10, v1, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 960
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v10}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 965
    :sswitch_15
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$2602(Lcom/android/phone/InCallScreen;Z)Z

    .line 966
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateProviderOverlay()V
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 983
    :sswitch_16
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget v11, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/phone/InCallScreen;->handleHtcMsg(ILandroid/os/Message;)V
    invoke-static {v10, v11, p1}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 987
    :sswitch_17
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 988
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v11, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 989
    :cond_e
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v10}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 990
    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v11, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v10, v11}, Lcom/android/phone/InCallScreen;->access$2902(Lcom/android/phone/InCallScreen;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 708
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x33 -> :sswitch_6
        0x34 -> :sswitch_8
        0x35 -> :sswitch_7
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6e -> :sswitch_2
        0x6f -> :sswitch_d
        0x70 -> :sswitch_e
        0x72 -> :sswitch_10
        0x73 -> :sswitch_13
        0x74 -> :sswitch_14
        0x75 -> :sswitch_11
        0x76 -> :sswitch_0
        0x77 -> :sswitch_0
        0x78 -> :sswitch_17
        0x79 -> :sswitch_15
        0xc9 -> :sswitch_f
        0xd2 -> :sswitch_12
        0x320 -> :sswitch_16
        0x321 -> :sswitch_16
        0x322 -> :sswitch_16
        0x323 -> :sswitch_16
        0x324 -> :sswitch_16
        0x325 -> :sswitch_16
        0x326 -> :sswitch_16
        0x327 -> :sswitch_16
        0x328 -> :sswitch_16
        0x329 -> :sswitch_16
        0x32a -> :sswitch_16
        0x32b -> :sswitch_16
    .end sparse-switch
.end method
