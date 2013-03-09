.class Lcom/android/phone/BluetoothHandsfree$DebugThread;
.super Ljava/lang/Thread;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebugThread"
.end annotation


# static fields
.field private static final DEBUG_HANDSFREE:Ljava/lang/String; = "debug.bt.hfp"

.field private static final DEBUG_HANDSFREE_AUDIO:Ljava/lang/String; = "debug.bt.hfp.audio"

.field private static final DEBUG_HANDSFREE_AUDIO_ANYTIME:Ljava/lang/String; = "debug.bt.hfp.audio_anytime"

.field private static final DEBUG_HANDSFREE_BATTERY:Ljava/lang/String; = "debug.bt.hfp.battery"

.field private static final DEBUG_HANDSFREE_CLCC:Ljava/lang/String; = "debug.bt.hfp.clcc"

.field private static final DEBUG_HANDSFREE_ROAM:Ljava/lang/String; = "debug.bt.hfp.roam"

.field private static final DEBUG_HANDSFREE_SERVICE:Ljava/lang/String; = "debug.bt.hfp.service"

.field private static final DEBUG_HANDSFREE_SIGNAL:Ljava/lang/String; = "debug.bt.hfp.signal"

.field private static final DEBUG_UNSOL_INBAND_RINGTONE:Ljava/lang/String; = "debug.bt.unsol.inband"


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 4432
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4432
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$DebugThread;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 4471
    const/16 v18, 0x1

    .line 4472
    .local v18, oldService:Z
    const/16 v17, 0x0

    .line 4473
    .local v17, oldRoam:Z
    const/16 v16, 0x0

    .line 4475
    .local v16, oldAudio:Z
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->inDebug()Z
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$10400(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4476
    const-string v3, "debug.bt.hfp.battery"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 4477
    .local v11, batteryLevel:I
    if-ltz v11, :cond_1

    const/4 v3, 0x5

    if-gt v11, v3, :cond_1

    .line 4478
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 4479
    .local v15, intent:Landroid/content/Intent;
    const-string v3, "level"

    invoke-virtual {v15, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4480
    const-string v3, "scale"

    const/4 v4, 0x5

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V
    invoke-static {v3, v15}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 4484
    .end local v15           #intent:Landroid/content/Intent;
    :cond_1
    const/16 v20, 0x0

    .line 4485
    .local v20, serviceStateChanged:Z
    const-string v3, "debug.bt.hfp.service"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v0, v18

    if-eq v3, v0, :cond_2

    .line 4486
    if-nez v18, :cond_9

    const/16 v18, 0x1

    .line 4487
    :goto_1
    const/16 v20, 0x1

    .line 4489
    :cond_2
    const-string v3, "debug.bt.hfp.roam"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v0, v17

    if-eq v3, v0, :cond_3

    .line 4490
    if-nez v17, :cond_a

    const/16 v17, 0x1

    .line 4491
    :goto_2
    const/16 v20, 0x1

    .line 4493
    :cond_3
    if-eqz v20, :cond_4

    .line 4494
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 4495
    .local v10, b:Landroid/os/Bundle;
    const-string v4, "state"

    if-eqz v18, :cond_b

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v10, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4496
    const-string v3, "roaming"

    move/from16 v0, v17

    invoke-virtual {v10, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v10}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$2500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V

    .line 4500
    .end local v10           #b:Landroid/os/Bundle;
    :cond_4
    const-string v3, "debug.bt.hfp.audio"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v0, v16

    if-eq v3, v0, :cond_5

    .line 4501
    if-nez v16, :cond_c

    const/16 v16, 0x1

    .line 4502
    :goto_4
    if-eqz v16, :cond_d

    .line 4503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v4, 0x1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mUserWantsAudio:Z
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$4202(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 4504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 4510
    :cond_5
    :goto_5
    const-string v3, "debug.bt.hfp.signal"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4511
    .local v2, signalLevel:I
    if-ltz v2, :cond_6

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_6

    .line 4512
    new-instance v1, Landroid/telephony/SignalStrength;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    .line 4514
    .local v1, signalStrength:Landroid/telephony/SignalStrength;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 4515
    .restart local v15       #intent:Landroid/content/Intent;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 4516
    .local v12, data:Landroid/os/Bundle;
    invoke-virtual {v1, v12}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 4517
    invoke-virtual {v15, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mBluetoothPhoneState:Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$5500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V
    invoke-static {v3, v15}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->access$6600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V

    .line 4521
    .end local v1           #signalStrength:Landroid/telephony/SignalStrength;
    .end local v12           #data:Landroid/os/Bundle;
    .end local v15           #intent:Landroid/content/Intent;
    :cond_6
    const-string v3, "debug.bt.hfp.clcc"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->gsmGetClccResult()Landroid/bluetooth/AtCommandResult;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$9500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/AtCommandResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Ljava/lang/String;)V

    .line 4525
    :cond_7
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree$DebugThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4530
    const-string v3, "debug.bt.unsol.inband"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 4532
    .local v14, inBandRing:I
    if-eqz v14, :cond_8

    const/4 v3, 0x1

    if-ne v14, v3, :cond_0

    .line 4533
    :cond_8
    new-instance v19, Landroid/bluetooth/AtCommandResult;

    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 4535
    .local v19, result:Landroid/bluetooth/AtCommandResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+BSIR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 4536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4486
    .end local v2           #signalLevel:I
    .end local v14           #inBandRing:I
    .end local v19           #result:Landroid/bluetooth/AtCommandResult;
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4490
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 4495
    .restart local v10       #b:Landroid/os/Bundle;
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 4501
    .end local v10           #b:Landroid/os/Bundle;
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 4506
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/BluetoothHandsfree$DebugThread;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    goto/16 :goto_5

    .line 4526
    .restart local v2       #signalLevel:I
    :catch_0
    move-exception v13

    .line 4539
    .end local v2           #signalLevel:I
    .end local v11           #batteryLevel:I
    .end local v20           #serviceStateChanged:Z
    :cond_e
    return-void
.end method
