.class Lcom/googlecode/android/wifi/tether/SetupActivity$13;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/SetupActivity;->updateConfiguration(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    iput-object p2, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/android/wifi/tether/SetupActivity$13;)Lcom/googlecode/android/wifi/tether/SetupActivity;
    .locals 1
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 541
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 542
    const/4 v12, 0x0

    .line 544
    .local v12, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "devicepref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "devicepref"

    const-string v27, "auto"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 547
    .local v16, newDevice:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDevice:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$4(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDevice:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$5(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateDeviceParameters()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenuHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f07004c

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 553
    :try_start_0
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_0

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 554
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 562
    .local v13, msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 940
    .end local v13           #msg:Landroid/os/Message;
    .end local v16           #newDevice:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 941
    return-void

    .line 557
    .restart local v16       #newDevice:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 558
    .local v8, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 566
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v16           #newDevice:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "setuppref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "setuppref"

    const-string v27, "auto"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 569
    .local v18, newSetup:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSetup:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$6(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSetup:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$7(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateDeviceParameters()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->updateSettingsMenuHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f07004d

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 575
    :try_start_1
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_3

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 576
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 583
    :cond_3
    :goto_2
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 584
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 579
    .end local v13           #msg:Landroid/os/Message;
    :catch_1
    move-exception v8

    .line 580
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 588
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v18           #newSetup:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "ssidpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "ssidpref"

    const-string v27, "AndroidTether"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 590
    .local v17, newSSID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSSID:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$8(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSSID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$9(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V

    .line 592
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f07004e

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 594
    :try_start_2
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_5

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 595
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 602
    :cond_5
    :goto_3
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 603
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 598
    .end local v13           #msg:Landroid/os/Message;
    :catch_2
    move-exception v8

    .line 599
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 607
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v17           #newSSID:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "keepalivecheckoptionpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "keepalivecheckoptionpref"

    const-string v27, "karetry"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 609
    .local v19, newkeepaliveshutdown:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->keepaliveshutdown:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$10(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->keepaliveshutdown:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$11(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070078

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 614
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 615
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 619
    .end local v13           #msg:Landroid/os/Message;
    .end local v19           #newkeepaliveshutdown:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "channelpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "channelpref"

    const-string v27, "1"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 621
    .local v15, newChannel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentChannel:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$12(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentChannel:Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$13(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V

    .line 623
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f07004f

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 625
    :try_start_3
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_8

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 626
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 633
    :cond_8
    :goto_4
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 634
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 629
    .end local v13           #msg:Landroid/os/Message;
    :catch_3
    move-exception v8

    .line 630
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 638
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v15           #newChannel:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "wakelockpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 640
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "wakelockpref"

    const/16 v27, 0x1

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 641
    .local v2, disableWakeLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->isNatEnabled()Z

    move-result v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    move-object/from16 v25, v0

    const-string v26, "bin/dnsmasq"

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->isProcessRunning(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 642
    if-eqz v2, :cond_b

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherApplication;->releaseWakeLock()V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070053

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v12

    .line 657
    .end local v2           #disableWakeLock:Z
    :cond_a
    :goto_5
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 658
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 647
    .end local v13           #msg:Landroid/os/Message;
    .restart local v2       #disableWakeLock:Z
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherApplication;->acquireWakeLock()V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070054

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v12

    goto :goto_5

    .line 652
    .end local v2           #disableWakeLock:Z
    :catch_4
    move-exception v8

    .line 653
    .restart local v8       #ex:Ljava/lang/Exception;
    const-string v25, "TETHER -> SetupActivity"

    const-string v26, "Can\'t enable/disable Wake-Lock!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 661
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "acpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "acpref"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 663
    .local v6, enableAccessCtrl:Z
    if-eqz v6, :cond_f

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v25

    if-nez v25, :cond_e

    .line 666
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->touch()V

    .line 667
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_d

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 668
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V

    .line 670
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070056

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v12

    .line 687
    :cond_e
    :goto_6
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 688
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 671
    .end local v13           #msg:Landroid/os/Message;
    :catch_5
    move-exception v5

    .line 672
    .local v5, e:Ljava/io/IOException;
    const-string v12, "Unable to touch \'whitelist_mac.conf\'."

    goto :goto_6

    .line 677
    .end local v5           #e:Ljava/io/IOException;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->exists()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->remove()Z

    .line 679
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_10

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 680
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->reloadACRules()V

    .line 682
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070055

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 691
    .end local v6           #enableAccessCtrl:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "encpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "encpref"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 693
    .local v7, enableEncryption:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentEncryptionEnabled:Z
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$14(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z

    move-result v25

    move/from16 v0, v25

    if-eq v7, v0, :cond_1

    .line 696
    :try_start_7
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_12

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    .line 697
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f

    .line 703
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentEncryptionEnabled:Z
    invoke-static {v0, v7}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$15(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V

    .line 706
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 707
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 712
    .end local v7           #enableEncryption:Z
    .end local v13           #msg:Landroid/os/Message;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "hidessidpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "hidessidpref"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 714
    .local v9, hideSSID:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentHideSSID:Z
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$16(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z

    move-result v25

    move/from16 v0, v25

    if-eq v9, v0, :cond_1

    .line 717
    :try_start_8
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_14

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 718
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    .line 724
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentHideSSID:Z
    invoke-static {v0, v9}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$17(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V

    .line 727
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 728
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentHideSSID:Z
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$16(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 734
    .local v11, li:Landroid/view/LayoutInflater;
    const v25, 0x7f030004

    const/16 v26, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 735
    .local v24, view:Landroid/view/View;
    new-instance v25, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f070059

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    .line 737
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f07005a

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    new-instance v27, Lcom/googlecode/android/wifi/tether/SetupActivity$13$1;

    invoke-direct/range {v27 .. v28}, Lcom/googlecode/android/wifi/tether/SetupActivity$13$1;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity$13;)V

    invoke-virtual/range {v25 .. v27}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    .line 743
    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 748
    .end local v9           #hideSSID:Z
    .end local v11           #li:Landroid/view/LayoutInflater;
    .end local v13           #msg:Landroid/os/Message;
    .end local v24           #view:Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "driverreloadpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "driverreloadpref"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 750
    .local v4, driverReload:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDriverReload:Z
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$18(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z

    move-result v25

    move/from16 v0, v25

    if-eq v4, v0, :cond_1

    .line 753
    :try_start_9
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_16

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    .line 754
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    .line 760
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentDriverReload:Z
    invoke-static {v0, v4}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$19(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V

    .line 763
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 764
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 770
    .end local v4           #driverReload:Z
    .end local v13           #msg:Landroid/os/Message;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "passphrasepref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "passphrasepref"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v27 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v27, "abcdefghijklm"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 772
    .local v20, passphrase:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPassphrase:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$20(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 775
    :try_start_a
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_18

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 776
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 783
    :cond_18
    :goto_a
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f070050

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPassphrase:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$21(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V

    .line 787
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 788
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 779
    .end local v13           #msg:Landroid/os/Message;
    :catch_6
    move-exception v8

    .line 780
    .restart local v8       #ex:Ljava/lang/Exception;
    const-string v25, "TETHER -> SetupActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception happend while restarting service - Here is what I know: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 792
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v20           #passphrase:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "txpowerpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "txpowerpref"

    const-string v27, "disabled"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 794
    .local v23, transmitPower:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentTransmitPower:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$22(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 797
    :try_start_b
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_1a

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    .line 798
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 805
    :cond_1a
    :goto_b
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f070051

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentTransmitPower:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$23(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V

    .line 809
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 810
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "txpowerwarningpref"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 815
    .local v22, shoTxPowerWarning:Z
    if-nez v22, :cond_1

    const-string v25, "disabled"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 817
    .restart local v11       #li:Landroid/view/LayoutInflater;
    const v25, 0x7f03000b

    const/16 v26, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 818
    .restart local v24       #view:Landroid/view/View;
    new-instance v25, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f070057

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    .line 820
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f070058

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    new-instance v27, Lcom/googlecode/android/wifi/tether/SetupActivity$13$2;

    invoke-direct/range {v27 .. v28}, Lcom/googlecode/android/wifi/tether/SetupActivity$13$2;-><init>(Lcom/googlecode/android/wifi/tether/SetupActivity$13;)V

    invoke-virtual/range {v25 .. v27}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v25

    .line 828
    invoke-virtual/range {v25 .. v25}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 801
    .end local v11           #li:Landroid/view/LayoutInflater;
    .end local v13           #msg:Landroid/os/Message;
    .end local v22           #shoTxPowerWarning:Z
    .end local v24           #view:Landroid/view/View;
    :catch_7
    move-exception v8

    .line 802
    .restart local v8       #ex:Ljava/lang/Exception;
    const-string v25, "TETHER -> SetupActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception happend while restarting service - Here is what I know: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 832
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v23           #transmitPower:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "lannetworkpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "lannetworkpref"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v27, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static/range {v27 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$1(Lcom/googlecode/android/wifi/tether/SetupActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v27, "192.168.2.0/24"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 834
    .local v10, lannetwork:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentLAN:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$24(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 837
    :try_start_c
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_1c

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 838
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V

    .line 840
    :cond_1c
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v26, v0

    const v27, 0x7f070052

    invoke-virtual/range {v26 .. v27}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, " \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\'."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentLAN:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$25(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 849
    :goto_c
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 850
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 843
    .end local v13           #msg:Landroid/os/Message;
    :catch_8
    move-exception v8

    .line 844
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 845
    const-string v25, "TETHER -> SetupActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception happend while restarting service - Here is what I know: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 855
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v10           #lannetwork:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "mssclampingpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "mssclampingpref"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 857
    .local v14, mssclamping:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentMssclampingEnabled:Z
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$26(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z

    move-result v25

    move/from16 v0, v25

    if-eq v14, v0, :cond_1

    .line 860
    :try_start_d
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_1e

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1e

    .line 861
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V

    .line 863
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentMssclampingEnabled:Z
    invoke-static {v0, v14}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$27(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 871
    :goto_d
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 872
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 865
    .end local v13           #msg:Landroid/os/Message;
    :catch_9
    move-exception v8

    .line 866
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 867
    const-string v25, "TETHER -> SetupActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception happend while restarting service - Here is what I know: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 876
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v14           #mssclamping:Z
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "routefixpref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "routefixpref"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 878
    .local v21, routefix:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentRoutefixEnabled:Z
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$28(Lcom/googlecode/android/wifi/tether/SetupActivity;)Z

    move-result v25

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 881
    :try_start_e
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_20

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_20

    .line 882
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V

    .line 884
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentRoutefixEnabled:Z
    invoke-static {v0, v1}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$29(Lcom/googlecode/android/wifi/tether/SetupActivity;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 892
    :goto_e
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 893
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 886
    .end local v13           #msg:Landroid/os/Message;
    :catch_a
    move-exception v8

    .line 887
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 888
    const-string v25, "TETHER -> SetupActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception happend while restarting service - Here is what I know: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 897
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v21           #routefix:Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "dnsprimarypref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "dnsprimarypref"

    const-string v27, "8.8.8.8"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 899
    .local v3, dns:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPrimaryDNS:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$30(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 902
    :try_start_f
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_22

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    .line 903
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V

    .line 905
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentPrimaryDNS:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$31(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 913
    :goto_f
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 914
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 907
    .end local v13           #msg:Landroid/os/Message;
    :catch_b
    move-exception v8

    .line 908
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 909
    const-string v25, "TETHER -> SetupActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception happend while restarting service - Here is what I know: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 918
    .end local v3           #dns:Ljava/lang/String;
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$key:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "dnssecondarypref"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->val$sharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "dnssecondarypref"

    const-string v27, "8.8.4.4"

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 920
    .restart local v3       #dns:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSecondaryDNS:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$32(Lcom/googlecode/android/wifi/tether/SetupActivity;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 923
    :try_start_10
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v25, :cond_24

    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    .line 924
    sget-object v25, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual/range {v25 .. v25}, Lcom/googlecode/android/wifi/tether/TetherService;->restart()V

    .line 926
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/googlecode/android/wifi/tether/SetupActivity;->currentSecondaryDNS:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$33(Lcom/googlecode/android/wifi/tether/SetupActivity;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 934
    :goto_10
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 935
    .restart local v13       #msg:Landroid/os/Message;
    iput-object v12, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity;->displayToastMessageHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 928
    .end local v13           #msg:Landroid/os/Message;
    :catch_c
    move-exception v8

    .line 929
    .restart local v8       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/SetupActivity$13;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070045

    invoke-virtual/range {v25 .. v26}, Lcom/googlecode/android/wifi/tether/SetupActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 930
    const-string v25, "TETHER -> SetupActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception happend while restarting service - Here is what I know: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 757
    .end local v3           #dns:Ljava/lang/String;
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v4       #driverReload:Z
    :catch_d
    move-exception v25

    goto/16 :goto_9

    .line 721
    .end local v4           #driverReload:Z
    .restart local v9       #hideSSID:Z
    :catch_e
    move-exception v25

    goto/16 :goto_8

    .line 700
    .end local v9           #hideSSID:Z
    .restart local v7       #enableEncryption:Z
    :catch_f
    move-exception v25

    goto/16 :goto_7
.end method
