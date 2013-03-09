.class Lcom/android/phone/PhoneApp$3;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 43
    .parameter "msg"

    .prologue
    .line 830
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1722
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 874
    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 875
    const-string v2, "PhoneApp"

    const-string v3, "- updating in-call notification from handler..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 880
    :sswitch_2
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 896
    :sswitch_3
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 901
    :sswitch_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    .line 902
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 903
    .local v31, roamingConfirm:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-class v3, Lcom/android/phone/DataRoamingConfirm;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 904
    const/high16 v2, 0x1000

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 910
    .end local v31           #roamingConfirm:Landroid/content/Intent;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v3, v2}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 914
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 919
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v3, v2}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 929
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->setUmtsTTYStatus()V
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v27

    .line 933
    .local v27, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_3

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_2

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_4

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 941
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 949
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mTtyEnabled:Z
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    const/16 v2, 0xe

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/PhoneApp$3;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp$3;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 938
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    goto :goto_1

    .line 968
    .end local v27           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v3, "READY"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$1202(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 976
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1300(Lcom/android/phone/PhoneApp;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$1302(Lcom/android/phone/PhoneApp;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 991
    :sswitch_a
    const/16 v17, 0x0

    .line 992
    .local v17, inDockMode:Z
    sget v2, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    sget v2, Lcom/android/phone/PhoneApp;->mDockState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 994
    :cond_6
    const/16 v17, 0x1

    .line 1000
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v27

    .line 1001
    .restart local v27       #phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v27

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isBTAudioOn()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, v17

    invoke-static {v2, v0, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_8

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->requestUpdateTouchUi()V

    .line 1024
    .end local v17           #inDockMode:Z
    .end local v27           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :cond_8
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1049
    :cond_9
    const/16 v33, 0x1

    .line 1050
    .local v33, setupTtyTakeAction:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v40

    .line 1054
    .local v40, ttyMode:I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_c

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move/from16 v0, v40

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v2, v0}, Lcom/android/phone/PhoneApp;->access$1402(Lcom/android/phone/PhoneApp;I)I

    .line 1069
    :goto_2
    if-eqz v33, :cond_b

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1500(Lcom/android/phone/PhoneApp;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1500(Lcom/android/phone/PhoneApp;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v40

    if-eq v2, v0, :cond_f

    .line 1072
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1608(Lcom/android/phone/PhoneApp;)I

    .line 1073
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update TTY ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$1500(Lcom/android/phone/PhoneApp;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") -> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyPendingIndex:I
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$1502(Lcom/android/phone/PhoneApp;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1083
    :cond_b
    :goto_3
    if-eqz v33, :cond_0

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyPendingIndex:I
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;)I

    move-result v6

    move/from16 v0, v40

    invoke-virtual {v3, v4, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    move/from16 v0, v40

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1058
    :cond_c
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v40

    if-ne v2, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v2

    move/from16 v0, v40

    if-eq v0, v2, :cond_e

    .line 1060
    :cond_d
    const-string v3, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update different TTY ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move/from16 v0, v40

    #setter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static {v2, v0}, Lcom/android/phone/PhoneApp;->access$1402(Lcom/android/phone/PhoneApp;I)I

    goto/16 :goto_2

    .line 1065
    :cond_e
    const/16 v33, 0x0

    .line 1066
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore update same TTY ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1078
    :cond_f
    const/16 v33, 0x0

    .line 1079
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore update progressing TTY ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyInProgress:Ljava/lang/Integer;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$1500(Lcom/android/phone/PhoneApp;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mSettingUpTtyPendingIndex:I
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$1600(Lcom/android/phone/PhoneApp;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1092
    .end local v33           #setupTtyTakeAction:Z
    .end local v40           #ttyMode:I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/phone/PhoneApp;->access$1700(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1096
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/phone/PhoneApp;->access$1800(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1101
    :sswitch_e
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$1902(Z)Z

    .line 1102
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1103
    const-string v2, "PhoneApp"

    const-string v3, "EVENT_HEADSET_LONGPRESS_TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getSkypeCallState()I

    move-result v20

    .line 1106
    .local v20, mSkypeCallState:I
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleHeadsetHook  CS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_11

    if-eqz v20, :cond_1b

    .line 1122
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1123
    if-nez v20, :cond_13

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_12

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1126
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (CS: non Idle, PS:Idle)==> hangup CS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mHeadsetPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 1130
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_14

    if-eqz v20, :cond_14

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1135
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (CS:Idle, PS:non Idle)==> hangup PS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1137
    :cond_14
    const/4 v2, 0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_17

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_16

    .line 1139
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v26, v0

    .line 1140
    .local v26, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual/range {v26 .. v26}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1147
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (b->CS:Ringing, f->PS:Ringing)==> hangup PS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1152
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1153
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (f->CS:Ringing, b->PS:Ringing)==> hangup CS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1157
    .end local v26           #notifier:Lcom/android/phone/CallNotifier;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_12

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1169
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (CS:Offhook, PS:Ringing)==> hangup PS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1173
    :cond_17
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_12

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_18

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1183
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (CS:Ringing, PS:Offhook)==> hangup CS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1186
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_12

    .line 1187
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMuteTxRx()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->sendHeadsetPressedBroadcast(Lcom/android/internal/telephony/Phone;Z)V

    .line 1194
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (b->CS:Offhook, f->PS:Offhook)==> hangup PS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1200
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 1201
    const-string v2, "PhoneApp"

    const-string v3, "handleHeadsetHook  (f->CS:Offhook, b->PS:Offhook)==> hangup CS call!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1209
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_4

    .line 1213
    :cond_1b
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 1214
    .local v18, intent:Landroid/content/Intent;
    const-string v2, "com.android.voicedialer"

    const-string v3, "com.android.voicedialer.VoiceDialerActivity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const/high16 v2, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1218
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 1219
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 1234
    .end local v18           #intent:Landroid/content/Intent;
    .end local v20           #mSkypeCallState:I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->isFromTimer:Z
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2100(Lcom/android/phone/PhoneApp;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/phone/PhoneApp;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v3, v2, v4}, Lcom/android/phone/PhoneApp;->access$2200(Lcom/android/phone/PhoneApp;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 1241
    :sswitch_10
    const/16 v30, -0x1

    .line 1242
    .local v30, regState:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/AsyncResult;

    .line 1244
    .local v19, mAR:Landroid/os/AsyncResult;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1245
    const-string v2, "PhoneApp"

    const-string v3, "EVENT_NETWORK_REGISTRATION_STATE:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_1c
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1d

    .line 1249
    const-string v2, "PhoneApp"

    const-string v3, "EVENT_NETWORK_REGISTRATION_STATE: cancel timer if upper layer get exception from RIL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->cancelTimer()V

    goto/16 :goto_0

    .line 1256
    :cond_1d
    if-eqz v19, :cond_0

    .line 1257
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v36, v2

    check-cast v36, [Ljava/lang/String;

    .line 1258
    .local v36, states:[Ljava/lang/String;
    if-eqz v36, :cond_0

    move-object/from16 v0, v36

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1260
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v36, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1261
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1262
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegistrationState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_1e
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_21

    const/4 v2, 0x5

    move/from16 v0, v30

    if-eq v0, v2, :cond_21

    .line 1274
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1275
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkManualModeEnabled() (EVENT_NETWORK_REGISTRATION_STATE)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1284
    .local v32, settingsNetworkMode:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1285
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settingsNetworkMode (EVENT_NETWORK_REGISTRATION_STATE)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->isNetworkListAvailable()Z
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2300(Lcom/android/phone/PhoneApp;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x7

    move/from16 v0, v32

    if-eq v0, v2, :cond_0

    .line 1296
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryService;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNetworkListCallback:Lcom/android/phone/INetworkQueryServiceCallback;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$2400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/INetworkQueryServiceCallback;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/phone/INetworkQueryService;->startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->isFromTimer:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2102(Lcom/android/phone/PhoneApp;Z)Z

    .line 1299
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1300
    const-string v2, "PhoneApp"

    const-string v3, "start query network list (EVENT_NETWORK_REGISTRATION_STATE) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1303
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 1307
    .end local v32           #settingsNetworkMode:I
    :cond_21
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->cancelTimer()V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1309
    :catch_2
    move-exception v16

    .line 1310
    .local v16, ex:Ljava/lang/NumberFormatException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing RegistrationState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1322
    .end local v16           #ex:Ljava/lang/NumberFormatException;
    .end local v19           #mAR:Landroid/os/AsyncResult;
    .end local v30           #regState:I
    .end local v36           #states:[Ljava/lang/String;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    sget-object v3, Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;->DEFAULT:Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->setScreenTimeout(Lcom/android/phone/PhoneApp$ScreenTimeoutDuration;)V

    goto/16 :goto_0

    .line 1327
    :sswitch_12
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/NotificationMgr;->updateMwi(I)V

    goto/16 :goto_0

    .line 1332
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/PhoneApp;->onMMLoctaionUpdateError(Landroid/os/AsyncResult;)V
    invoke-static {v3, v2}, Lcom/android/phone/PhoneApp;->access$2500(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1345
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/phone/PhoneApp;->mAcceptNextRedial:Z

    goto/16 :goto_0

    .line 1350
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->initSpecificDialNumbers()V

    goto/16 :goto_0

    .line 1356
    :sswitch_16
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive ENTITLEMENT_CHECK_FAIL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    if-eqz v2, :cond_0

    .line 1359
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 1360
    .local v15, entitlement:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-class v3, Lcom/android/phone/EntitlementCheckFailDialog;

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1361
    const/high16 v2, 0x7080

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1365
    const-string v2, "errType"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v15}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1376
    .end local v15           #entitlement:Landroid/content/Intent;
    :sswitch_17
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p1

    #calls: Lcom/android/phone/PhoneApp;->onQuerySDRComplete(Landroid/os/Message;)V
    invoke-static {v2, v0}, Lcom/android/phone/PhoneApp;->access$2600(Lcom/android/phone/PhoneApp;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1384
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getNetworkManualModeEnabled()Z

    move-result v22

    .line 1385
    .local v22, mode:Z
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recieved EVENT_SMART_DATA_ROAMING_REQUEST flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRadioSwitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1390
    .local v11, ar:Landroid/os/AsyncResult;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v39

    .line 1391
    .local v39, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v24

    .line 1392
    .local v24, netRoaming:Z
    const/16 v37, -0x1

    .line 1393
    .local v37, statusSmartDataRoamingMode:I
    const/16 v29, -0x1

    .line 1394
    .local v29, psIndication:I
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25

    .line 1395
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v37, v2, v3

    .line 1400
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x1

    aget v29, v2, v3

    .line 1405
    :goto_5
    if-nez v22, :cond_22

    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_23

    const/16 v2, 0x14

    move/from16 v0, v29

    if-ne v0, v2, :cond_23

    .line 1408
    :cond_22
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingConnected()V

    .line 1409
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingNoNetwork()V

    .line 1411
    :cond_23
    const/16 v2, 0xe

    move/from16 v0, v29

    if-ne v0, v2, :cond_26

    .line 1412
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/PhoneApp;->mManualMode:Z

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    .line 1414
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingConnected()V

    .line 1415
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingNoNetwork()V

    .line 1422
    :cond_24
    :goto_6
    sget-boolean v2, Lcom/android/phone/PhoneApp;->ENABLE_SDR_FEATURE:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/phone/PhoneApp;->mManualMode:Z

    if-nez v2, :cond_0

    .line 1428
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statusSmartDataRoamingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", psIndication = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneApp;->mManualMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_27

    if-nez v29, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2700(Lcom/android/phone/PhoneApp;)Z

    move-result v2

    if-eqz v2, :cond_27

    sget-boolean v2, Lcom/android/phone/PhoneApp;->mManualMode:Z

    if-nez v2, :cond_27

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mRadioSwitch:Z
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2702(Lcom/android/phone/PhoneApp;Z)Z

    .line 1437
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 1438
    .local v34, smartDataRoaming:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-class v3, Lcom/android/phone/SmartDataRoamingConfirm;

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1440
    const/high16 v2, 0x1000

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1403
    .end local v34           #smartDataRoaming:Landroid/content/Intent;
    :cond_25
    const-string v2, "PhoneApp"

    const-string v3, "result exception for data roaming"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1416
    :cond_26
    const/16 v2, 0xf

    move/from16 v0, v29

    if-ne v0, v2, :cond_24

    .line 1417
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneApp;->mManualMode:Z

    .line 1418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    goto/16 :goto_6

    .line 1442
    :cond_27
    const/4 v2, 0x1

    move/from16 v0, v37

    if-eq v0, v2, :cond_28

    const/4 v2, 0x2

    move/from16 v0, v37

    if-ne v0, v2, :cond_29

    :cond_28
    const/16 v2, 0xd

    move/from16 v0, v29

    if-ne v0, v2, :cond_29

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x5

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    .line 1446
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 1447
    .local v23, netBusy:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-class v3, Lcom/android/phone/NetworkBusyDialog;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1448
    const/high16 v2, 0x1000

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1450
    .end local v23           #netBusy:Landroid/content/Intent;
    :cond_29
    const/4 v2, 0x2

    move/from16 v0, v37

    if-ne v0, v2, :cond_2a

    const/4 v2, 0x2

    move/from16 v0, v29

    if-ne v0, v2, :cond_2a

    .line 1451
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingConnected()V

    .line 1452
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->showSmartDataRoamingNoNetwork()V

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x6

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    goto/16 :goto_0

    .line 1454
    :cond_2a
    const/4 v2, 0x2

    move/from16 v0, v37

    if-ne v0, v2, :cond_2b

    const/16 v2, 0x14

    move/from16 v0, v29

    if-ne v0, v2, :cond_2b

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x6

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    .line 1456
    new-instance v41, Landroid/content/Intent;

    invoke-direct/range {v41 .. v41}, Landroid/content/Intent;-><init>()V

    .line 1457
    .local v41, unavailable:Landroid/content/Intent;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    const-class v3, Lcom/android/phone/DataUnavailableDialog;

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1458
    const/high16 v2, 0x1000

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1461
    .end local v41           #unavailable:Landroid/content/Intent;
    :cond_2b
    const/4 v2, 0x2

    move/from16 v0, v37

    if-ne v0, v2, :cond_2c

    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_2c

    .line 1462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x4

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    .line 1464
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideSmartDataRoamingNoNetwork()V

    .line 1465
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->showSmartDataRoamingConnected()V

    goto/16 :goto_0

    .line 1466
    :cond_2c
    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_0

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x2

    #setter for: Lcom/android/phone/PhoneApp;->mSmartDataRoamingMode:I
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$2802(Lcom/android/phone/PhoneApp;I)I

    goto/16 :goto_0

    .line 1474
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v22           #mode:Z
    .end local v24           #netRoaming:Z
    .end local v29           #psIndication:I
    .end local v37           #statusSmartDataRoamingMode:I
    .end local v39           #tm:Landroid/telephony/TelephonyManager;
    :sswitch_19
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/util/PhoneStatus;->setSuppServiceRequesting(Z)V

    goto/16 :goto_0

    .line 1478
    :sswitch_1a
    const-string v2, "PhoneApp"

    const-string v3, "RESET_MUTE_STATE_EVENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 1481
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto/16 :goto_0

    .line 1488
    :sswitch_1b
    const-string v2, "PhoneApp"

    const-string v3, "EVENT_MOBILE_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-boolean v2, v2, Lcom/android/phone/PhoneApp;->mIsCwConnected:Z

    if-nez v2, :cond_31

    .line 1491
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v14, v2

    check-cast v14, [Ljava/lang/String;

    .line 1492
    .local v14, data:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v8, v14, v2

    .line 1493
    .local v8, apn:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v9, v14, v2

    .line 1494
    .local v9, apnCarrier:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v10, v14, v2

    .line 1500
    .local v10, apnType:Ljava/lang/String;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd8

    if-eq v2, v3, :cond_2d

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x17

    if-eq v2, v3, :cond_2d

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 1509
    :cond_2d
    if-nez v9, :cond_2f

    .line 1510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND current IS NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1511
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$2900(Lcom/android/phone/PhoneApp;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1513
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_2f

    .line 1514
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1515
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1517
    :cond_2e
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1520
    .end local v5           #where:Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_2f
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/phone/NotificationMgr;->showMobileDataConnected(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1522
    :cond_30
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/phone/NotificationMgr;->showMobileDataConnected(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1525
    .end local v8           #apn:Ljava/lang/String;
    .end local v9           #apnCarrier:Ljava/lang/String;
    .end local v10           #apnType:Ljava/lang/String;
    .end local v14           #data:[Ljava/lang/String;
    :cond_31
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->showCWDataConnected()V

    goto/16 :goto_0

    .line 1531
    :sswitch_1c
    const-string v2, "PhoneApp"

    const-string v3, "EVENT_MOBILE_DATA_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->hideMobileDataConnected()V

    goto/16 :goto_0

    .line 1539
    :sswitch_1d
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v2, :cond_32

    .line 1540
    const-string v2, "PhoneApp"

    const-string v3, "EVENT_PHONE_MODE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1542
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/phone/HtcWorldPhoneUtils;->handleRadioTechChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1546
    :cond_32
    const-string v2, "PhoneApp"

    const-string v3, "Not supprt world phone mode change"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1550
    :sswitch_1e
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v2, :cond_34

    .line 1551
    sget-boolean v2, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    if-eqz v2, :cond_33

    .line 1552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f7

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/16 v42, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1555
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/16 v42, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v3, v4, v6, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1560
    :cond_34
    const-string v2, "PhoneApp"

    const-string v3, "Not supprt world phone mode change queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1584
    :sswitch_1f
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_35

    .line 1586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->isEmergency()Z

    move-result v2

    sput-boolean v2, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    .line 1588
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mWorldPhoneUtils:Lcom/android/phone/HtcWorldPhoneUtils;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcWorldPhoneUtils;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/HtcWorldPhoneUtils;->swithPhone(II)V

    goto/16 :goto_0

    .line 1591
    :cond_36
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supprt world phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1597
    :sswitch_20
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-eqz v2, :cond_3e

    .line 1598
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " set phone type done - emg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;)V

    .line 1601
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->registerCallManagerPhone()V

    .line 1606
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v2, :cond_38

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1609
    :cond_38
    sget-boolean v2, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    if-eqz v2, :cond_3c

    .line 1610
    const-string v2, "PhoneApp"

    const-string v3, "place call Resume 911"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    .line 1622
    :cond_39
    :goto_7
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3a

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_3a

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v2, v3, :cond_3d

    .line 1629
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x33

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x34

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1639
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->updatePhoneUtilsafterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v2, :cond_3b

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->updateBtHandsfreeAfterRadioTechnologyChange()V

    .line 1645
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3200(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcNBPCDUtil;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mNBPCDUtil:Lcom/android/phone/HtcNBPCDUtil;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3200(Lcom/android/phone/PhoneApp;)Lcom/android/phone/HtcNBPCDUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/HtcNBPCDUtil;->updateHtcNBPCDUtilafterRadioTechnologyChange()V

    goto/16 :goto_0

    .line 1616
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->finish()V

    goto/16 :goto_7

    .line 1634
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    goto :goto_8

    .line 1651
    :cond_3e
    const-string v2, "PhoneApp"

    const-string v3, "Not supprt world phone set complete"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1655
    :sswitch_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 1656
    .local v38, targetPhone:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1657
    .local v21, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move/from16 v0, v38

    move-object/from16 v1, v21

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    .line 1658
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hang up call , set phone type to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1664
    .end local v21           #message:Landroid/os/Message;
    .end local v38           #targetPhone:I
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3300(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v28

    .line 1665
    .local v28, previousConnected:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$3302(Lcom/android/phone/PhoneApp;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1667
    const/16 v25, 0x0

    .line 1669
    .local v25, ni:Landroid/net/NetworkInfo;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v25

    .line 1671
    :goto_9
    if-eqz v25, :cond_3f

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1673
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #setter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$3302(Lcom/android/phone/PhoneApp;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1678
    :cond_3f
    :goto_a
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1679
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data changing from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/android/phone/PhoneApp;->access$3300(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_40
    if-nez v28, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3300(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1682
    :cond_41
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_0

    .line 1683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3300(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3300(Lcom/android/phone/PhoneApp;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v28, :cond_42

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1685
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1674
    :catch_3
    move-exception v16

    .line 1675
    .local v16, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #setter for: Lcom/android/phone/PhoneApp;->mPreviousMobileData:Ljava/lang/Boolean;
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$3302(Lcom/android/phone/PhoneApp;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 1695
    .end local v16           #ex:Ljava/lang/Exception;
    .end local v25           #ni:Landroid/net/NetworkInfo;
    .end local v28           #previousConnected:Ljava/lang/Boolean;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v35

    .line 1696
    .local v35, sp:Landroid/content/SharedPreferences;
    const-string v2, "cpa_enabled_pref_key"

    const/4 v3, -0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1697
    .local v12, cpaEnabledState:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpaEnabledState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    :cond_43
    const/4 v2, 0x1

    if-ne v12, v2, :cond_0

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3400(Lcom/android/phone/PhoneApp;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-nez v2, :cond_44

    .line 1700
    const-string v2, "PhoneApp"

    const-string v3, "mConnectivityManager is null, rebind it."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    #setter for: Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v3, v2}, Lcom/android/phone/PhoneApp;->access$3402(Lcom/android/phone/PhoneApp;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 1703
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3400(Lcom/android/phone/PhoneApp;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 1704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3400(Lcom/android/phone/PhoneApp;)Landroid/net/ConnectivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3400(Lcom/android/phone/PhoneApp;)Landroid/net/ConnectivityManager;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1706
    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x1

    #calls: Lcom/android/phone/PhoneApp;->showCPAServiceNotification(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$3500(Lcom/android/phone/PhoneApp;Z)V

    goto/16 :goto_0

    .line 1708
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v3, 0x0

    #calls: Lcom/android/phone/PhoneApp;->showCPAServiceNotification(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/PhoneApp;->access$3500(Lcom/android/phone/PhoneApp;Z)V

    goto/16 :goto_0

    .line 1711
    :cond_47
    const-string v2, "PhoneApp"

    const-string v3, "mConnectivityManager is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1718
    .end local v12           #cpaEnabledState:I
    .end local v35           #sp:Landroid/content/SharedPreferences;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/PhoneApp$3;->this$0:Lcom/android/phone/PhoneApp;

    #calls: Lcom/android/phone/PhoneApp;->inflateLayoutCache()V
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->access$3600(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_0

    .line 1670
    .restart local v25       #ni:Landroid/net/NetworkInfo;
    .restart local v28       #previousConnected:Ljava/lang/Boolean;
    :catch_4
    move-exception v2

    goto/16 :goto_9

    .line 830
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_0
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1b
        0x12 -> :sswitch_1c
        0x28 -> :sswitch_16
        0x33 -> :sswitch_7
        0x34 -> :sswitch_5
        0x35 -> :sswitch_6
        0x37 -> :sswitch_18
        0x38 -> :sswitch_17
        0x64 -> :sswitch_e
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_10
        0xca -> :sswitch_15
        0xcb -> :sswitch_11
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0x12d -> :sswitch_12
        0x190 -> :sswitch_13
        0x1f4 -> :sswitch_1d
        0x1f5 -> :sswitch_1f
        0x1f6 -> :sswitch_20
        0x1f7 -> :sswitch_1e
        0x1f8 -> :sswitch_21
        0x259 -> :sswitch_22
        0x25b -> :sswitch_23
        0x2bc -> :sswitch_1a
        0x320 -> :sswitch_14
        0x321 -> :sswitch_4
        0x322 -> :sswitch_19
        0x324 -> :sswitch_24
    .end sparse-switch
.end method
