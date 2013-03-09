.class Lcom/android/settings/NetSharingEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "NetSharingEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NetSharingEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetSharingEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/NetSharingEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 378
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 382
    const-string v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    sput-boolean v17, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    .line 384
    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-eqz v17, :cond_1

    .line 385
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 393
    :goto_0
    const-string v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 397
    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v17, :cond_2

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 633
    :cond_0
    :goto_1
    return-void

    .line 388
    :cond_1
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v17

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 389
    .local v5, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v17

    sput-boolean v17, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 390
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mobiledata:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 405
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 408
    const-string v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    sput-boolean v17, Lcom/android/settings/NetSharingEnabler;->mobiledata:Z

    .line 409
    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v17, :cond_5

    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v17, :cond_5

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v18

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v17

    if-eqz v17, :cond_8

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v17, :cond_8

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 412
    :cond_5
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_9

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v17, :cond_9

    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v17, :cond_9

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 416
    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v17, :cond_6

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 418
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    .line 426
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 410
    :cond_8
    const/16 v17, 0x0

    goto :goto_2

    .line 420
    :cond_9
    const-string v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 423
    sget-boolean v17, Lcom/android/settings/NSReceiver;->USB:Z

    if-nez v17, :cond_7

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_3

    .line 428
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 430
    const-string v17, "NetSharing"

    const-string v18, "battery changed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v17, "plugged"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 432
    .local v12, pluggedType:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_b

    const/16 v17, 0x1

    :goto_4
    sput-boolean v17, Lcom/android/settings/NSReceiver;->USB:Z

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 435
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "plugged:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    sget-boolean v17, Lcom/android/settings/NSReceiver;->USB:Z

    if-nez v17, :cond_0

    sget-boolean v17, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v17, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 432
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 461
    .end local v12           #pluggedType:I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 463
    invoke-static/range {p1 .. p2}, Lcom/android/settings/NetSharingEnabler;->CheckWiFi(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 464
    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v17, :cond_d

    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v17, :cond_d

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v18

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v17

    if-eqz v17, :cond_10

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v17, :cond_10

    sget-boolean v17, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 466
    :cond_d
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_f

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v17, :cond_f

    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v17, :cond_f

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 470
    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v17, :cond_e

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 472
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    .line 474
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 465
    :cond_10
    const/16 v17, 0x0

    goto :goto_5

    .line 476
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.net.wifi.STATE_CHANGE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 478
    const-string v17, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    .line 479
    .local v10, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    sput-boolean v17, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    .line 481
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "wifienabled:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/settings/NetSharingEnabler;->wifienabled:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v17, :cond_12

    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v17, :cond_12

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v18

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v17

    if-eqz v17, :cond_15

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v17, :cond_15

    sget-boolean v17, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v17, :cond_15

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 485
    :cond_12
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v17

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_14

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->FOR_SPRINT:Z

    if-nez v17, :cond_14

    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-nez v17, :cond_14

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 489
    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v17, :cond_13

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/ModemLinkTypeEnabler;->Get_Connection_Type(Landroid/content/Context;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 491
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    .line 493
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x5

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 484
    :cond_15
    const/16 v17, 0x0

    goto :goto_6

    .line 508
    .end local v10           #networkInfo:Landroid/net/NetworkInfo;
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "INTENT_STOP_IS"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.ipt.enabled"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 511
    :cond_17
    const-string v17, "NetSharing"

    const-string v18, "INTENT_STOP_IS"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 515
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 517
    const-string v17, "NetSharing"

    const-string v18, "bt changed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v17, "android.bluetooth.adapter.extra.STATE"

    const/high16 v18, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 520
    .local v15, state:I
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bt state = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v15, v0, :cond_1a

    const/16 v17, 0x1

    :goto_7
    sput-boolean v17, Lcom/android/settings/NSReceiver;->BT:Z

    .line 524
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "USB:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/settings/NSReceiver;->USB:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "BT:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/settings/NSReceiver;->BT:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ML Interface:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getMLInterface()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-boolean v17, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v17, :cond_0

    .line 536
    sget-boolean v17, Lcom/android/settings/NSReceiver;->BT:Z

    if-nez v17, :cond_0

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 541
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 521
    :cond_1a
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 547
    .end local v15           #state:I
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.ml.enabled"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 554
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.htc.ml.disabled"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 561
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    .line 564
    const-string v17, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 565
    .restart local v5       #cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, mUsbRegexs:[Ljava/lang/String;
    const-string v17, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 569
    .local v3, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 570
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .local v11, o:Ljava/lang/String;
    move-object v14, v11

    .line 571
    check-cast v14, Ljava/lang/String;

    .line 572
    .local v14, s:Ljava/lang/String;
    move-object v4, v9

    .local v4, arr$:[Ljava/lang/String;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_8
    if-ge v7, v8, :cond_1e

    aget-object v13, v4, v7

    .line 573
    .local v13, regex:Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1f

    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/settings/NSReceiver;->hasTethered:Z

    .line 572
    :cond_1f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 578
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v11           #o:Ljava/lang/String;
    .end local v13           #regex:Ljava/lang/String;
    .end local v14           #s:Ljava/lang/String;
    :cond_20
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "hasTethered:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/settings/NSReceiver;->hasTethered:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-boolean v17, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v17, :cond_21

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->closing:Z

    if-nez v17, :cond_21

    .line 581
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/NetSharingEnabler;->opening:Z

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 584
    sget-boolean v17, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v17, :cond_0

    .line 585
    const/16 v17, 0x1

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 587
    :cond_21
    sget-boolean v17, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-nez v17, :cond_0

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->opening:Z

    if-nez v17, :cond_0

    .line 589
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v17

    if-nez v17, :cond_22

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/NetSharingEnabler;->access$200(Lcom/android/settings/NetSharingEnabler;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    :cond_22
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/NetSharingEnabler;->closing:Z

    .line 594
    sget-boolean v17, Lcom/android/settings/NSReceiver;->USB:Z

    if-eqz v17, :cond_0

    .line 595
    const/16 v17, 0x0

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/settings/NetSharingEnabler;->GiveISNote(ZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 599
    .end local v3           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #mUsbRegexs:[Ljava/lang/String;
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    .line 601
    const-string v17, "android.app.admin.extra.ALLOW_STATUS"

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 603
    .local v16, status:I
    if-nez v16, :cond_24

    .line 604
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    .line 608
    :goto_9
    const-string v17, "NetSharing"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EAS Allow IS:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-boolean v17, Lcom/android/settings/NSReceiver;->hasTethered:Z

    if-eqz v17, :cond_0

    sget-boolean v17, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    if-nez v17, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 606
    :cond_24
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/settings/NSReceiver;->EAS_AllowIS:Z

    goto :goto_9

    .line 619
    .end local v16           #status:I
    :cond_25
    const-string v17, "NetSharing"

    const-string v18, "IS start action"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->CheckThreeCondition()Z

    move-result v17

    if-eqz v17, :cond_26

    sget-boolean v17, Lcom/android/settings/NetSharingEnabler;->airplane:Z

    if-eqz v17, :cond_27

    :cond_26
    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v17, :cond_0

    .line 623
    :cond_27
    sget-boolean v17, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_LAN_TYPE:Z

    if-eqz v17, :cond_28

    .line 624
    const/16 v17, 0x0

    invoke-static {}, Lcom/android/settings/NetSharingEnabler;->access$100()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/settings/ModemLinkEnabler;->GiveISNote(ZLandroid/content/Context;)V

    .line 625
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/ModemLinkTypeEnabler;->Set_Connection_Type(Landroid/content/Context;I)V

    .line 627
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/NetSharingEnabler;->mToggleIS:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/NetSharingEnabler;->access$300(Lcom/android/settings/NetSharingEnabler;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NetSharingEnabler$2;->this$0:Lcom/android/settings/NetSharingEnabler;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/settings/NetSharingEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
