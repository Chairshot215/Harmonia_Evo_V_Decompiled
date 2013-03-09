.class Lcom/htc/android/psclient/UsbConnectedReceiver$1;
.super Ljava/lang/Object;
.source "UsbConnectedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/UsbConnectedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    iput-object p2, p0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$mIntent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "android.hardware.usb.action.USB_CONNECT2PC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 86
    :cond_0
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDongleConnected()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Dongle connected, return."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->usbConnected:Z
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$100(Lcom/htc/android/psclient/UsbConnectedReceiver;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 91
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 92
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const/4 v15, 0x2

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$202(Lcom/htc/android/psclient/UsbConnectedReceiver;I)I

    .line 100
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$200(Lcom/htc/android/psclient/UsbConnectedReceiver;)I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$200(Lcom/htc/android/psclient/UsbConnectedReceiver;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1a

    .line 101
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/android/psclient/PSCommon;->initialDefaultSettingForFota(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$200(Lcom/htc/android/psclient/UsbConnectedReceiver;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 103
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "USB Connected."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v14, 0x0

    sput v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    .line 105
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const/4 v15, 0x1

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$502(Lcom/htc/android/psclient/UsbConnectedReceiver;Z)Z

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const-string v15, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$200(Lcom/htc/android/psclient/UsbConnectedReceiver;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Dock Connected."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v14, 0x1

    sput v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    .line 116
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const/4 v15, 0x1

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$502(Lcom/htc/android/psclient/UsbConnectedReceiver;Z)Z

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const-string v15, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.htc.usb.change"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "plugged"

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$500(Lcom/htc/android/psclient/UsbConnectedReceiver;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 142
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 143
    :cond_7
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "connected mode = dock mode, block 2 secs"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .line 146
    .local v9, pause:Landroid/os/ConditionVariable;
    const-wide/16 v14, 0x7d0

    invoke-virtual {v9, v14, v15}, Landroid/os/ConditionVariable;->block(J)Z

    .line 148
    .end local v9           #pause:Landroid/os/ConditionVariable;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->launchUSBUI(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 94
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const/4 v15, 0x1

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$202(Lcom/htc/android/psclient/UsbConnectedReceiver;I)I

    goto/16 :goto_1

    .line 97
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const/4 v15, 0x0

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$202(Lcom/htc/android/psclient/UsbConnectedReceiver;I)I

    goto/16 :goto_1

    .line 109
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "usb_dont_ask"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$502(Lcom/htc/android/psclient/UsbConnectedReceiver;Z)Z

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "usb_previous_type"

    const-string v17, "Charge Only"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    .line 120
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "dock_dont_ask"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->isDontAsk:Z
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$502(Lcom/htc/android/psclient/UsbConnectedReceiver;Z)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "dock_previous_type"

    const-string v17, "Charge Only"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    .line 151
    :cond_d
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_e

    .line 152
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const-string v15, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    :cond_e
    :goto_4
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 159
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isMFGBuild()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const-string v15, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    :cond_f
    :goto_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 166
    .local v11, state:Ljava/lang/String;
    const-string v14, "mounted"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string v14, "mounted_ro"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string v14, "shared"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v15, 0x40

    if-ne v14, v15, :cond_13

    .line 177
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Charge Only"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 178
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableChargeOnly(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 155
    .end local v11           #state:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "usb_default_type"

    const-string v17, "Charge Only"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 162
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "dock_default_type"

    const-string v17, "Charge Only"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_5

    .line 172
    .restart local v11       #state:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Disk Drive"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const-string v15, "Charge Only"

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$602(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 179
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "HTC Sync"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 180
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableHtcSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 181
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Disk Drive"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 182
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableDiskDrive(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 183
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Internet Sharing"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 184
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableInternetSharing(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 185
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Modem link"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 186
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableModemLink(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 187
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Media Sync"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 188
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableMediaSync(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 189
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->buttonType:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$600(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Internet Pass Through"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 190
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableInternetPassThrough(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0

    .line 193
    .end local v11           #state:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->connectedMode:I
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$200(Lcom/htc/android/psclient/UsbConnectedReceiver;)I

    move-result v14

    if-nez v14, :cond_1e

    .line 194
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Usb cable connected, return!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 198
    :cond_1b
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_1c

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "USB Disconnected."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1c
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1d

    .line 202
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Dock Disconnected."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "com.htc.usb.change"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "plugged"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "android.htc.connect_to_pc.permission.INTENT"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    const-string v16, "INTENT_CLOSE_BY_USB_DISCONNECT"

    invoke-virtual/range {v14 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->closeUSBUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "action.stopPCTool"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Catch USB Disconnect Event, USB cable does really not exist."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 209
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/android/psclient/PSCommon;->isScreenLockAndStopMountingDisk:Z

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "No Type"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "No Type"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    const-string v16, "psclient.intent.action.stop_sync"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 214
    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "com.htc.is.enabled"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.htc.is.enabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_1f

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 217
    :cond_1f
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_20

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Internet Sharing"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    :cond_20
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_21

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Internet Sharing"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Internet Sharing"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 226
    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "com.htc.is.disabled"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 227
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.htc.is.disabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_23

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 230
    :cond_23
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_24

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 232
    .local v13, type:Ljava/lang/String;
    const-string v14, "Internet Sharing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-eqz v14, :cond_24

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Charge Only"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 238
    .end local v13           #type:Ljava/lang/String;
    :cond_24
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 239
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 240
    .restart local v13       #type:Ljava/lang/String;
    const-string v14, "Internet Sharing"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Charge Only"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 247
    .end local v13           #type:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "com.htc.ml.enabled"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.htc.ml.enabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_26

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 250
    :cond_26
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_27

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Modem link"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    :cond_27
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_28

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Modem link"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Modem link"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 259
    :cond_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "com.htc.ml.disabled"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.htc.ml.disabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_2a

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 263
    :cond_2a
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_2b

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 265
    .restart local v13       #type:Ljava/lang/String;
    const-string v14, "Modem link"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2b

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-eqz v14, :cond_2b

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Charge Only"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 271
    .end local v13           #type:Ljava/lang/String;
    :cond_2b
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 273
    .restart local v13       #type:Ljava/lang/String;
    const-string v14, "Modem link"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Charge Only"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 280
    .end local v13           #type:Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "com.htc.ipt.enabled"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_30

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.htc.ipt.enabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_2d

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 283
    :cond_2d
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_2e

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Internet Pass Through"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    :cond_2e
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2f

    .line 287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Internet Pass Through"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    :cond_2f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Internet Pass Through"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 292
    :cond_30
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "com.htc.ipt.disabled"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "com.htc.ipt.disabled"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_31

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 296
    :cond_31
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_32

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 298
    .restart local v13       #type:Ljava/lang/String;
    const-string v14, "Internet Pass Through"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-eqz v14, :cond_32

    .line 299
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Charge Only"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 304
    .end local v13           #type:Ljava/lang/String;
    :cond_32
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 305
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 306
    .restart local v13       #type:Ljava/lang/String;
    const-string v14, "Internet Pass Through"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "Charge Only"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 313
    .end local v13           #type:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "INTENT_OPTION_CHANGED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_34

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Option changed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$800(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/util/Timer;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$800(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/util/Timer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Timer;->cancel()V

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$800(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/util/Timer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Timer;->purge()I

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    const/4 v15, 0x0

    #setter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->uiTimer:Ljava/util/Timer;
    invoke-static {v14, v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$802(Lcom/htc/android/psclient/UsbConnectedReceiver;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 321
    :catch_0
    move-exception v3

    .line 322
    .local v3, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    .end local v3           #e:Ljava/lang/Exception;
    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "com.htc.android.ackISOFF"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Received intent:com.htc.android.ackISOFF"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v14, 0x1

    sput-boolean v14, Lcom/htc/android/psclient/PSCommon;->isNSStopped:Z

    goto/16 :goto_0

    .line 327
    :cond_35
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "android.net.hotspot.HOTSPOT_STATE_CHANGED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$mIntent:Landroid/content/Intent;

    const-string v15, "hotspot_state"

    const/16 v16, 0x4

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$902(I)I

    .line 329
    invoke-static {}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$900()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_36

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "isHotspotEnabled"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 332
    :cond_36
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "isHotspotEnabled"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_7

    .line 335
    :cond_37
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3a

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Intent.ACTION_LOCALE_CHANGED"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDongleConnected()Z

    move-result v14

    if-eqz v14, :cond_38

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Dongle connected, return."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    :cond_38
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_39

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-eqz v14, :cond_39

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 343
    .restart local v13       #type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 345
    .end local v13           #type:Ljava/lang/String;
    :cond_39
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isDockConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 347
    .restart local v13       #type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/htc/android/psclient/PSCommon;->getType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->setUsbToPCNotification(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 349
    .end local v13           #type:Ljava/lang/String;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3c

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$mIntent:Landroid/content/Intent;

    const-string v15, "android.app.admin.extra.ALLOW_STATUS"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 352
    .local v12, status:I
    if-nez v12, :cond_3b

    .line 353
    const/4 v6, 0x0

    .line 357
    .local v6, isAvaliable:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/htc/android/psclient/PSCommon;->setInternetSharingAvaliableByEasPolicy(ZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 355
    .end local v6           #isAvaliable:Z
    :cond_3b
    const/4 v6, 0x1

    .restart local v6       #isAvaliable:Z
    goto :goto_8

    .line 358
    .end local v6           #isAvaliable:Z
    .end local v12           #status:I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "default_type_change_notify_from_dock"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_40

    .line 359
    const-string v2, "Disk drive"

    .line 360
    .local v2, diskDrive_old:Ljava/lang/String;
    const-string v5, "Mobile network sharing"

    .line 361
    .local v5, internetSharing_old:Ljava/lang/String;
    const-string v4, "Internet pass through"

    .line 362
    .local v4, internetPassThrough_old:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "deskdock_connection_type"

    invoke-static {v14, v15}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 363
    .local v8, mDockDefaultType:Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3d

    .line 364
    const-string v8, "Disk Drive"

    .line 366
    :cond_3d
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3e

    .line 367
    const-string v8, "Internet Sharing"

    .line 369
    :cond_3e
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3f

    .line 370
    const-string v8, "Internet Pass Through"

    .line 372
    :cond_3f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_default_type"

    invoke-interface {v14, v15, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 374
    .end local v2           #diskDrive_old:Ljava/lang/String;
    .end local v4           #internetPassThrough_old:Ljava/lang/String;
    .end local v5           #internetSharing_old:Ljava/lang/String;
    .end local v8           #mDockDefaultType:Ljava/lang/String;
    :cond_40
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "ask_me_change_notify_from_dock"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_41

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "deskdock_ask_me"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    .line 376
    .local v7, mDockAskMe:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "dock_dont_ask"

    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 378
    .end local v7           #mDockAskMe:Z
    :cond_41
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->val$action:Ljava/lang/String;

    const-string v15, "android.intent.action.USER_PRESENT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 379
    invoke-static {}, Lcom/htc/android/psclient/PSCommon;->isUsbConnected()Z

    move-result v14

    if-nez v14, :cond_42

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Screen unlock but USB cable is not connected, stop mountig storage."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    :cond_42
    const-string v1, ""

    .line 384
    .local v1, defType:Ljava/lang/String;
    const-string v10, ""

    .line 385
    .local v10, prevType:Ljava/lang/String;
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    if-nez v14, :cond_43

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "usb_default_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "usb_previous_type"

    const-string v16, "No Type"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 389
    :cond_43
    sget v14, Lcom/htc/android/psclient/PSCommon;->mConnectedMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_44

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "dock_default_type"

    const-string v16, "Charge Only"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "dock_previous_type"

    const-string v16, "No Type"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 393
    :cond_44
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->TAG:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$000(Lcom/htc/android/psclient/UsbConnectedReceiver;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isScreenLockAndStopMountingDisk = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/htc/android/psclient/PSCommon;->isScreenLockAndStopMountingDisk:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v14, "Disk Drive"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "No Type"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    sget-boolean v14, Lcom/htc/android/psclient/PSCommon;->isScreenLockAndStopMountingDisk:Z

    if-eqz v14, :cond_1

    .line 395
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$700(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v16, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->prefs:Landroid/content/SharedPreferences;
    invoke-static/range {v16 .. v16}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$300(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/psclient/UsbConnectedReceiver$1;->this$0:Lcom/htc/android/psclient/UsbConnectedReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/psclient/UsbConnectedReceiver;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/psclient/UsbConnectedReceiver;->access$400(Lcom/htc/android/psclient/UsbConnectedReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-static/range {v14 .. v17}, Lcom/htc/android/psclient/PSCommon;->enableDiskDrive(ILandroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 396
    const/4 v14, 0x0

    sput-boolean v14, Lcom/htc/android/psclient/PSCommon;->isScreenLockAndStopMountingDisk:Z

    goto/16 :goto_0
.end method
