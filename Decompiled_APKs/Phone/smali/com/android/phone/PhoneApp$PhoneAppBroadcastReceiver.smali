.class Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 3587
    iput-object p1, p0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3587
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 45
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3590
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 3591
    .local v8, action:Ljava/lang/String;
    const-string v41, "android.intent.action.AIRPLANE_MODE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 3593
    const-string v41, "state"

    const/16 v42, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    if-nez v41, :cond_8

    const/16 v18, 0x1

    .line 3600
    .local v18, enabled:Z
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3601
    const-string v41, "PhoneAppBroadcastReceiver"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "ACTION_AIRPLANE_MODE_CHANGED enabled = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_0
    if-nez v18, :cond_1

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x12d

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3611
    :cond_1
    new-instance v38, Lcom/android/phone/PhoneApp$RadioThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v41

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneApp$RadioThread;-><init>(Lcom/android/phone/PhoneApp;Z)V

    .line 3612
    .local v38, thread:Lcom/android/phone/PhoneApp$RadioThread;
    invoke-virtual/range {v38 .. v38}, Lcom/android/phone/PhoneApp$RadioThread;->start()V

    .line 3619
    if-eqz v18, :cond_2

    .line 3620
    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$3802(Z)Z

    .line 4079
    .end local v18           #enabled:Z
    .end local v38           #thread:Lcom/android/phone/PhoneApp$RadioThread;
    :cond_2
    :goto_1
    const-string v41, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_44

    .line 4080
    const-string v41, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 4081
    .local v37, stateExtra:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_3

    .line 4082
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "ACTION_SIM_STATE_CHANGED:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    :cond_3
    const-string v41, "NOT_READY"

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4

    .line 4086
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "device_provisioned"

    const/16 v43, 0x1

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4093
    :cond_4
    :goto_2
    sput-object v37, Lcom/android/phone/PhoneApp;->mSimState:Ljava/lang/String;

    .line 4095
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "ACTION_SIM_STATE_CHANGED:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    const-string v41, "NOT_READY"

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_5

    const-string v41, "ABSENT"

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_5

    const-string v41, "LOCKED"

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 4100
    :cond_5
    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/util/CbsUtils;->setCbSyncCompleted(Z)V

    .line 4104
    :cond_6
    const-string v41, "LOADED"

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 4106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mSimReady:Z
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$5702(Lcom/android/phone/PhoneApp;Z)Z

    .line 4107
    const-string v41, "PhoneApp"

    const-string v42, "call doCbQuery from phone boot"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->doCbQuery()V

    .line 4171
    .end local v37           #stateExtra:Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 3593
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 3622
    :cond_9
    const-string v41, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_c

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const-string v42, "android.bluetooth.profile.extra.STATE"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    .line 3629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    .line 3632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    move/from16 v41, v0

    const/16 v42, 0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_b

    .line 3633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x7f0e00db

    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    .line 3645
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2

    .line 3646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_1

    .line 3636
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetState:I

    move/from16 v41, v0

    if-nez v41, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mAutoConnect:Z
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$3900(Lcom/android/phone/PhoneApp;)Z

    move-result v41

    if-nez v41, :cond_a

    .line 3638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    const v43, 0x7f0e00dc

    invoke-virtual/range {v42 .. v43}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 3649
    :cond_c
    const-string v41, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 3650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const-string v42, "android.bluetooth.profile.extra.STATE"

    const/16 v43, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Lcom/android/phone/PhoneApp;->mBluetoothHeadsetAudioState:I

    .line 3657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->updateBluetoothIndication(Z)V

    goto/16 :goto_1

    .line 3659
    :cond_d
    const-string v41, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 3660
    #calls: Lcom/android/phone/PhoneApp;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneApp;->access$4000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v36

    .line 3661
    .local v36, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string v41, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 3667
    .local v30, reason:Ljava/lang/String;
    const-string v41, "apn"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3668
    .local v9, apn:Ljava/lang/String;
    const-string v41, "apnCarrier"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3669
    .local v10, apnCarrier:Ljava/lang/String;
    const-string v41, "apnType"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3670
    .local v11, apnType:Ljava/lang/String;
    const/16 v41, 0x3

    move/from16 v0, v41

    new-array v15, v0, [Ljava/lang/String;

    const/16 v41, 0x0

    aput-object v9, v15, v41

    const/16 v41, 0x1

    aput-object v10, v15, v41

    const/16 v41, 0x2

    aput-object v11, v15, v41

    .line 3677
    .local v15, data:[Ljava/lang/String;
    sget-short v41, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v42, 0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_f

    .line 3679
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    .line 3681
    .local v5, DataConnectionState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/Phone;->getGprsState()I

    move-result v41

    if-nez v41, :cond_10

    sget-object v41, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_e

    sget-object v41, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_10

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v5, v0, :cond_10

    .line 3684
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4100(Lcom/android/phone/PhoneApp;)Z

    move-result v41

    if-nez v41, :cond_f

    .line 3690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x11

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$4102(Lcom/android/phone/PhoneApp;Z)Z

    .line 3704
    .end local v5           #DataConnectionState:I
    :cond_f
    :goto_5
    const/16 v16, 0x0

    .line 3705
    .local v16, disconnectedDueToRoaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v39

    .line 3706
    .local v39, tm:Landroid/telephony/TelephonyManager;
    const-string v41, "DISCONNECTED"

    const-string v42, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_11

    const-string v41, "roamingOn"

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xa

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3695
    .end local v16           #disconnectedDueToRoaming:Z
    .end local v39           #tm:Landroid/telephony/TelephonyManager;
    .restart local v5       #DataConnectionState:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4100(Lcom/android/phone/PhoneApp;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 3696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0x12

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$4102(Lcom/android/phone/PhoneApp;Z)Z

    goto :goto_5

    .line 3711
    .end local v5           #DataConnectionState:I
    .restart local v16       #disconnectedDueToRoaming:Z
    .restart local v39       #tm:Landroid/telephony/TelephonyManager;
    :cond_11
    const-string v41, "CONNECTED"

    const-string v42, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_12

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v41

    if-nez v41, :cond_2

    .line 3713
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xb

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3717
    .end local v9           #apn:Ljava/lang/String;
    .end local v10           #apnCarrier:Ljava/lang/String;
    .end local v11           #apnType:Ljava/lang/String;
    .end local v15           #data:[Ljava/lang/String;
    .end local v16           #disconnectedDueToRoaming:Z
    .end local v30           #reason:Ljava/lang/String;
    .end local v36           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v39           #tm:Landroid/telephony/TelephonyManager;
    :cond_13
    const-string v41, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_14

    .line 3718
    const-string v41, "cw_uw_reg_state_key"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 3719
    .local v36, state:I
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "get ACTION_CW_REGISTRATION_STATE_CHANGED: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3732
    .end local v36           #state:I
    :cond_14
    const-string v41, "android.intent.action.CW_ANY_DATA_STATE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_17

    .line 3733
    const-string v41, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 3734
    .local v36, state:Ljava/lang/String;
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "get ACTION_ANY_CW_DATA_CONNECTION_STATE_CHANGED: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const-string v41, "CONNECTED"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_15

    const-string v41, "SUSPENDED"

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_16

    .line 3736
    :cond_15
    const-string v41, "PhoneApp"

    const-string v42, "C+W ppp connected!!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x11

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    #setter for: Lcom/android/phone/PhoneApp;->mNotifyDataConnected:Z
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$4102(Lcom/android/phone/PhoneApp;Z)Z

    .line 3739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mIsCwConnected:Z

    goto/16 :goto_1

    .line 3741
    :cond_16
    const-string v41, "PhoneApp"

    const-string v42, "C+W ppp disconnected!!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mIsCwConnected:Z

    goto/16 :goto_1

    .line 3745
    .end local v36           #state:Ljava/lang/String;
    :cond_17
    const-string v41, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1c

    .line 3759
    const-string v41, "state"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 3761
    .local v29, plugState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    and-int/lit8 v41, v29, 0x3

    if-nez v41, :cond_18

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0x80

    move/from16 v41, v0

    const/16 v43, 0x80

    move/from16 v0, v41

    move/from16 v1, v43

    if-ne v0, v1, :cond_1a

    :cond_18
    const/16 v41, 0x1

    :goto_6
    move-object/from16 v0, v42

    move/from16 v1, v41

    #setter for: Lcom/android/phone/PhoneApp;->mIsHeadsetPlugged:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$4202(Lcom/android/phone/PhoneApp;Z)Z

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    and-int/lit8 v41, v29, 0x4

    if-eqz v41, :cond_1b

    const/16 v41, 0x1

    :goto_7
    move-object/from16 v0, v42

    move/from16 v1, v41

    #setter for: Lcom/android/phone/PhoneApp;->mIsTTYPlugged:Z
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$4302(Lcom/android/phone/PhoneApp;Z)Z

    .line 3763
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_19

    .line 3764
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mIsTTYPlugged: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIsTTYPlugged:Z
    invoke-static/range {v43 .. v43}, Lcom/android/phone/PhoneApp;->access$4300(Lcom/android/phone/PhoneApp;)Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x7

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_1

    .line 3761
    :cond_1a
    const/16 v41, 0x0

    goto/16 :goto_6

    .line 3762
    :cond_1b
    const/16 v41, 0x0

    goto :goto_7

    .line 3773
    .end local v29           #plugState:I
    :cond_1c
    const-string v41, "android.intent.action.BATTERY_LOW"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1d

    .line 3776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/CallNotifier;->sendBatteryLow()V

    goto/16 :goto_1

    .line 3777
    :cond_1d
    const-string v41, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v41

    if-eqz v41, :cond_1e

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x8

    const-string v44, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3786
    :cond_1e
    const-string v41, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_20

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v41

    if-eqz v41, :cond_20

    .line 3788
    const-string v41, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3789
    .local v35, simstate:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_1f

    .line 3790
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "simstate: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    :cond_1f
    const-string v41, "READY"

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 3792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->displaySIMReadyToast()V

    goto/16 :goto_1

    .line 3797
    .end local v35           #simstate:Ljava/lang/String;
    :cond_20
    const-string v41, "android.intent.action.SELECT_INCORRECT_OPERATOR"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_26

    .line 3800
    const-wide/16 v6, 0x7530

    .line 3801
    .local v6, Timer:J
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v41

    if-eqz v41, :cond_22

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "preferred_network_mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v43, v0

    const/16 v43, 0x0

    invoke-static/range {v41 .. v43}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 3806
    .local v33, settingsNetworkMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    const/16 v41, 0x1

    move/from16 v0, v33

    move/from16 v1, v41

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    const/16 v41, 0x2

    move/from16 v0, v33

    move/from16 v1, v41

    if-ne v0, v1, :cond_24

    .line 3808
    :cond_21
    const-wide/32 v6, 0x13880

    .line 3814
    .end local v33           #settingsNetworkMode:I
    :cond_22
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mTimeout:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4400(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v41

    if-nez v41, :cond_25

    .line 3815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4500(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v41

    if-eqz v41, :cond_23

    .line 3816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4500(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;
    invoke-static/range {v42 .. v42}, Lcom/android/phone/PhoneApp;->access$4600(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$4502(Lcom/android/phone/PhoneApp;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3818
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_23

    .line 3819
    const-string v41, "PhoneApp"

    const-string v42, "(SELECT_INCORRECT_OPERATOR), cancelTimer mInCorrectTimeout (mIncorrectTimerCallback)"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    new-instance v42, Landroid/os/Handler;

    invoke-direct/range {v42 .. v42}, Landroid/os/Handler;-><init>()V

    #setter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$4502(Lcom/android/phone/PhoneApp;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCorrectTimeout:Landroid/os/Handler;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4500(Lcom/android/phone/PhoneApp;)Landroid/os/Handler;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIncorrectTimerCallback:Lcom/android/phone/PhoneApp$IncorrectTimerCallback;
    invoke-static/range {v42 .. v42}, Lcom/android/phone/PhoneApp;->access$4600(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$IncorrectTimerCallback;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3823
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 3824
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "..start timer..from  (SELECT_INCORRECT_OPERATOR)  delayTimer:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3809
    .restart local v33       #settingsNetworkMode:I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    const/16 v41, 0x3

    move/from16 v0, v33

    move/from16 v1, v41

    if-ne v0, v1, :cond_22

    .line 3810
    const-wide/32 v6, 0x30d40

    goto/16 :goto_8

    .line 3827
    .end local v33           #settingsNetworkMode:I
    :cond_25
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 3828
    const-string v41, "PhoneApp"

    const-string v42, "mTimeout is already start, since did not start mInCorrectTimeout  (SELECT_INCORRECT_OPERATOR)"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3848
    .end local v6           #Timer:J
    :cond_26
    const-string v41, "android.intent.action.RADIO_TECHNOLOGY"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_27

    .line 3849
    const-string v41, "phoneName"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3850
    .local v27, newPhone:Ljava/lang/String;
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Radio technology switched. Now "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " is active."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #calls: Lcom/android/phone/PhoneApp;->initForNewRadioTechnology()V
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$3100(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_1

    .line 3852
    .end local v27           #newPhone:Ljava/lang/String;
    :cond_27
    const-string v41, "android.intent.action.SERVICE_STATE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2a

    .line 3853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    #calls: Lcom/android/phone/PhoneApp;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$4700(Lcom/android/phone/PhoneApp;Landroid/content/Intent;)V

    .line 3855
    sget-short v41, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v42, 0xd2

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_28

    .line 3857
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v41

    if-eqz v41, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$3800()Z

    move-result v41

    if-nez v41, :cond_2

    .line 3859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #calls: Lcom/android/phone/PhoneApp;->displayWarningDialog()V
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4800(Lcom/android/phone/PhoneApp;)V

    .line 3860
    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$3802(Z)Z

    goto/16 :goto_1

    .line 3862
    :cond_28
    sget-short v41, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v42, 0x9b

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_2

    .line 3863
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v32

    .line 3864
    .local v32, roaming:Z
    sget-boolean v41, Lcom/android/phone/PhoneApp;->mRoaming:Z

    move/from16 v0, v41

    move/from16 v1, v32

    if-eq v0, v1, :cond_29

    if-eqz v32, :cond_29

    const/16 v34, 0x1

    .line 3865
    .local v34, showDialog:Z
    :goto_9
    sput-boolean v32, Lcom/android/phone/PhoneApp;->mRoaming:Z

    .line 3867
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "TelephonyManager.getDefault().isNetworkRoaming()="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", roamingEnabled()="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", Roaming="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-boolean v43, Lcom/android/phone/PhoneApp;->mRoaming:Z

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 3869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->getDataOnRoamingEnabled()Z

    move-result v41

    if-nez v41, :cond_2

    if-eqz v34, :cond_2

    .line 3871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #calls: Lcom/android/phone/PhoneApp;->showTMORoamingDialog()V
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$4900(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_1

    .line 3864
    .end local v34           #showDialog:Z
    :cond_29
    const/16 v34, 0x0

    goto :goto_9

    .line 3877
    .end local v32           #roaming:Z
    :cond_2a
    const-string v41, "android.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2b

    .line 3878
    const/16 v41, 0x0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$3802(Z)Z

    .line 3879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #calls: Lcom/android/phone/PhoneApp;->turnAirplaneModeByAlarm()V
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$5000(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_1

    .line 3883
    :cond_2b
    const-string v41, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2c

    .line 3884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v41

    if-nez v41, :cond_2

    .line 3902
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Error! Emergency Callback Mode not supported for "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " phones"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3905
    :cond_2c
    const-string v41, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2d

    .line 3906
    const-string v41, "android.intent.extra.DOCK_STATE"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v41

    sput v41, Lcom/android/phone/PhoneApp;->mDockState:I

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0xd

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3911
    :cond_2d
    const-string v41, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2e

    .line 3924
    const-string v41, "ttyPreferredMode"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    .line 3926
    .local v40, updatedTtyMode:I
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "mReceiver: TTY_PREFERRED_MODE_CHANGE_ACTION mode:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "("

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPreferredTtyMode:I
    invoke-static/range {v43 .. v43}, Lcom/android/phone/PhoneApp;->access$1400(Lcom/android/phone/PhoneApp;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ")"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0xe

    new-instance v44, Ljava/lang/Integer;

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v42 .. v44}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 3929
    .end local v40           #updatedTtyMode:I
    :cond_2e
    const-string v41, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2f

    .line 3930
    const-string v41, "android.media.EXTRA_RINGER_MODE"

    const/16 v42, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 3932
    .local v31, ringerMode:I
    if-nez v31, :cond_2

    .line 3933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    goto/16 :goto_1

    .line 3936
    .end local v31           #ringerMode:I
    :cond_2f
    const-string v41, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_30

    .line 3937
    const-string v41, "PhoneApp"

    const-string v42, ">>>>>>>>>>Receieved CUSTOMIZATION_CHANGE<<<<<<<<<<"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    const-string v41, "com.htc.CUSTOMIZED_REASON"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3939
    .local v14, customizedReason:Ljava/lang/String;
    const-string v41, "com.htc.FOTA_UPGRADE"

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_2

    .line 3940
    const-string v41, "PhoneApp"

    const-string v42, ">>>>>>>>sky: start checkHtcCustomization<<<<<<<<"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    #calls: Lcom/android/phone/PhoneApp;->checkHtcCustomization(Landroid/content/Context;)V
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$5100(Lcom/android/phone/PhoneApp;Landroid/content/Context;)V

    .line 3942
    const-string v41, "PhoneApp"

    const-string v42, ">>>>>>>>sky: end checkHtcCustomization<<<<<<<<"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3947
    .end local v14           #customizedReason:Ljava/lang/String;
    :cond_30
    const-string v41, "android.htc.intent.action.CUSTOMIZATION_FORCE_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_32

    .line 3948
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_31

    .line 3949
    const-string v41, "PhoneApp"

    const-string v42, "Receieved SetupWizard is done!!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    const/16 v42, 0xca

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3953
    :cond_32
    const-string v41, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_33

    .line 3954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const-string v42, "android.intent.extra.DOCK_STATE"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v42

    #setter for: Lcom/android/phone/PhoneApp;->mDockMode:I
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$5202(Lcom/android/phone/PhoneApp;I)I

    .line 3956
    const-string v41, "test"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "dock event: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    #getter for: Lcom/android/phone/PhoneApp;->mDockMode:I
    invoke-static/range {v43 .. v43}, Lcom/android/phone/PhoneApp;->access$5200(Lcom/android/phone/PhoneApp;)I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3959
    :cond_33
    const-string v41, "com.htc.laputa.navi.action.HTCNAVI_FOREGROUND"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_34

    .line 3960
    const-string v41, "PhoneApp"

    const-string v42, "HTCNAVI_FOREGROUND"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mLaputaNaviForeground:Z

    goto/16 :goto_1

    .line 3963
    :cond_34
    const-string v41, "com.htc.laputa.navi.action.HTCNAVI_BACKGROUND"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_35

    .line 3964
    const-string v41, "PhoneApp"

    const-string v42, "HTCNAVI_BACKGROUND"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/phone/PhoneApp;->mLaputaNaviForeground:Z

    goto/16 :goto_1

    .line 3967
    :cond_35
    const-string v41, "com.htc.util.contacts.Intent.ACTION_END_CALL"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_36

    .line 3968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneUtils;->hangupFromNotification(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_1

    .line 3975
    :cond_36
    const-string v41, "android.intent.action.CONTACTS_DB_READY"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_37

    .line 3976
    const-string v41, "PhoneApp"

    const-string v42, "ACTION_CONTACTS_DB_READY"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/CallNotifier;->bindDialerService()V

    goto/16 :goto_1

    .line 3982
    :cond_37
    const-string v41, "com.htc.phone.callforwarding"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3c

    .line 3983
    const-string v41, "PhoneApp"

    const-string v42, "com.htc.phone.callforwarding"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    const-string v41, "ACTION"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 3985
    .local v20, extra_action:I
    packed-switch v20, :pswitch_data_0

    goto/16 :goto_1

    .line 3993
    :pswitch_0
    const-string v41, "ENABLE"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 3995
    .local v21, extra_enable:Z
    const-string v41, "NUMBER"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3996
    .local v22, extra_number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$5300(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v41

    if-nez v41, :cond_3a

    .line 3997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    new-instance v42, Lcom/android/phone/CSCallForward;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CSCallForward;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    #setter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$5302(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    .line 4003
    .end local v21           #extra_enable:Z
    .end local v22           #extra_number:Ljava/lang/String;
    :goto_a
    :pswitch_1
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const-class v42, Lcom/android/phone/CSCallForwardProgress;

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4004
    .local v24, intentPorgress:Landroid/content/Intent;
    const-string v41, "close"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4005
    const/high16 v41, 0x3000

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 4009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$5400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v41

    if-eqz v41, :cond_38

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$5400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/CSCallForward;->finish()V

    .line 4011
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$5402(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    goto/16 :goto_1

    .line 3987
    .end local v24           #intentPorgress:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$5300(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v41

    if-eqz v41, :cond_39

    .line 3988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$5300(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/CSCallForward;->finish()V

    .line 3989
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mCSCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$5302(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    goto/16 :goto_1

    .line 4000
    .restart local v21       #extra_enable:Z
    .restart local v22       #extra_number:Ljava/lang/String;
    :cond_3a
    const-string v41, "PhoneApp"

    const-string v42, "mCSCallForward not null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 4015
    .end local v21           #extra_enable:Z
    .end local v22           #extra_number:Ljava/lang/String;
    :pswitch_3
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    const-class v42, Lcom/android/phone/CSCallForwardProgress;

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4016
    .restart local v24       #intentPorgress:Landroid/content/Intent;
    const-string v41, "update"

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4017
    const/high16 v41, 0x3000

    move-object/from16 v0, v24

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 4021
    const-string v41, "ENABLE"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 4023
    .restart local v21       #extra_enable:Z
    const-string v41, "NUMBER"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4024
    .restart local v22       #extra_number:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    #getter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v41}, Lcom/android/phone/PhoneApp;->access$5400(Lcom/android/phone/PhoneApp;)Lcom/android/phone/CSCallForward;

    move-result-object v41

    if-nez v41, :cond_3b

    .line 4025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    new-instance v42, Lcom/android/phone/CSCallForward;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v43, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/CSCallForward;-><init>(Landroid/content/Context;Ljava/lang/String;ZI)V

    #setter for: Lcom/android/phone/PhoneApp;->mStatusBarCallForward:Lcom/android/phone/CSCallForward;
    invoke-static/range {v41 .. v42}, Lcom/android/phone/PhoneApp;->access$5402(Lcom/android/phone/PhoneApp;Lcom/android/phone/CSCallForward;)Lcom/android/phone/CSCallForward;

    goto/16 :goto_1

    .line 4028
    :cond_3b
    const-string v41, "PhoneApp"

    const-string v42, "mStatusBarCallForward not null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4034
    .end local v20           #extra_action:I
    .end local v21           #extra_enable:Z
    .end local v22           #extra_number:Ljava/lang/String;
    .end local v24           #intentPorgress:Landroid/content/Intent;
    :cond_3c
    const-string v41, "com.htc.phone.missedcall.update"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3d

    .line 4035
    invoke-static/range {p2 .. p2}, Lcom/android/phone/CSMissedCallNotification;->onIntent(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 4040
    :cond_3d
    const-string v41, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3e

    const-string v41, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3e

    const-string v41, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3e

    const-string v41, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3e

    const-string v41, "android.intent.action.PACKAGE_DATA_CLEARED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_3f

    .line 4045
    :cond_3e
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5500()Landroid/os/Handler;

    move-result-object v41

    const/16 v42, 0x323

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->removeMessages(I)V

    .line 4046
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5500()Landroid/os/Handler;

    move-result-object v41

    const/16 v42, 0x323

    const-wide/16 v43, 0x7d0

    invoke-virtual/range {v41 .. v44}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 4049
    :cond_3f
    const-string v41, "android.intent.action.ACTION_SIM_SWAP_STATUS"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_41

    .line 4051
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mSimErrorDialog:Lcom/android/phone/SimErrorDialog;

    move-object/from16 v41, v0

    if-nez v41, :cond_40

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    new-instance v42, Lcom/android/phone/SimErrorDialog;

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$5600()Lcom/android/phone/PhoneApp;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Lcom/android/phone/SimErrorDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->mSimErrorDialog:Lcom/android/phone/SimErrorDialog;

    .line 4055
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mSimErrorDialog:Lcom/android/phone/SimErrorDialog;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/SimErrorDialog;->showDialog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 4057
    :catch_0
    move-exception v17

    .line 4058
    .local v17, e:Ljava/lang/Exception;
    const-string v41, "PhoneApp"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 4062
    .end local v17           #e:Ljava/lang/Exception;
    :cond_41
    const-string v41, "com.htc.laputa.HtcNavi.action.LOCATIONS_NAVI_ON"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_43

    .line 4063
    const-string v41, "isNaviOn"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 4064
    .local v25, isNaviOn:Z
    invoke-static {}, Lcom/android/phone/util/ConfigUtils;->isNaviOn()Z

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v25

    if-eq v0, v1, :cond_42

    .line 4065
    invoke-static/range {v25 .. v25}, Lcom/android/phone/util/ConfigUtils;->setNaviState(Z)V

    .line 4066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v41, v0

    if-eqz v41, :cond_42

    .line 4067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/phone/InCallScreen;->finishForNaviModeChange()V

    .line 4070
    :cond_42
    invoke-static {}, Lcom/android/phone/PhoneApp;->access$400()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 4071
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "onReceive() isNaviOn = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4074
    .end local v25           #isNaviOn:Z
    :cond_43
    const-string v41, "com.htc.intent.action.CHANGE_WIFI_MODE"

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 4075
    const-string v41, "comeIn"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 4076
    .local v23, in:Z
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->notifyWifiFullMode(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 4088
    .end local v23           #in:Z
    .restart local v37       #stateExtra:Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 4089
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v41, "PhoneApp"

    const-string v42, "Failed to set Settings.Secure.DEVICE_PROVISIONED"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4115
    .end local v17           #e:Ljava/lang/Exception;
    .end local v37           #stateExtra:Ljava/lang/String;
    :cond_44
    const-string v41, "android.intent.action.MOBILEDATA_MODE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_49

    .line 4117
    const-string v41, "state"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 4118
    .local v12, bMobileNetworkChecked:Z
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Mobile network checkbox:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->localGetGlobalRoamingOption(Lcom/android/internal/telephony/Phone;)I

    move-result v26

    .line 4120
    .local v26, nGlobalOption:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v28

    .line 4122
    .local v28, phoneType:I
    const/16 v41, 0x1

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_45

    sget v41, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->nNetworkState:I

    const/16 v42, 0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_46

    :cond_45
    const/16 v41, 0x2

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    sget v41, Lcom/android/phone/HtcCdmaPhoneApp;->nHomeRoaming:I

    if-nez v41, :cond_7

    :cond_46
    if-eqz v12, :cond_7

    .line 4129
    if-nez v26, :cond_47

    invoke-static {}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->getNeedShowRoamingOption()Z

    move-result v41

    if-eqz v41, :cond_47

    .line 4133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->triggerRoamingDialog(Landroid/content/Context;Z)V

    .line 4134
    :cond_47
    const/16 v41, 0x1

    move/from16 v0, v26

    move/from16 v1, v41

    if-eq v0, v1, :cond_48

    const/16 v41, 0x2

    move/from16 v0, v26

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    .line 4138
    :cond_48
    const-string v41, "PhoneApp"

    const-string v42, "triggerAllowDialog(true): from mobile network"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/android/phone/HtcCdmaGloableRoamingUtil;->triggerAllowDialog(Landroid/content/Context;Z)V

    goto/16 :goto_3

    .line 4143
    .end local v12           #bMobileNetworkChecked:Z
    .end local v26           #nGlobalOption:I
    .end local v28           #phoneType:I
    :cond_49
    const-string v41, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4a

    .line 4147
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v41

    const-string v42, "background_data"

    invoke-static/range {v41 .. v42}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v13

    .line 4149
    .local v13, backgroundDataEnable:I
    const-string v41, "PhoneApp"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "backgroundDataEnable:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 4150
    .end local v13           #backgroundDataEnable:I
    :catch_2
    move-exception v41

    goto/16 :goto_3

    .line 4155
    :cond_4a
    const-string v41, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4b

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x259

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4158
    sget-short v41, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v42, 0x51

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_7

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x25b

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 4165
    :cond_4b
    sget-boolean v41, Lcom/android/phone/HtcFeatureList;->FEATURE_ATT_ENTITLEMENT_CHECKING_SUPPORT:Z

    if-eqz v41, :cond_7

    sget-object v41, Lcom/android/phone/PhoneApp;->INTENT_ENTITLEMENT_CHECK_FAIL:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 4167
    const-string v41, "entitlement_check_fail_reason"

    const/16 v42, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 4168
    .local v19, errorType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x28

    const/16 v44, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v19

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 3985
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
