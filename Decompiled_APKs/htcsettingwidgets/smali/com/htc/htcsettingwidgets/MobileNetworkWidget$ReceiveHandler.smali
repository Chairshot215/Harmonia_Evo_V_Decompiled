.class Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;
.super Landroid/os/Handler;
.source "MobileNetworkWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/MobileNetworkWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;


# direct methods
.method private constructor <init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Lcom/htc/htcsettingwidgets/MobileNetworkWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;-><init>(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 341
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ReceiveHandler<"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    .line 343
    .local v5, intent:Landroid/content/Intent;
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v5}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v8

    .line 346
    .local v8, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string v10, "networkUnvailable"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 347
    .local v9, unavailable:Z
    const-string v10, "apnType"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, capability:Ljava/lang/String;
    const-string v10, "reason"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 349
    .local v6, reason:Ljava/lang/String;
    const-string v10, "apn"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, apnName:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPersistedMobileDataEnabled()Z
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1100(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z

    move-result v3

    .line 352
    .local v3, bPersistedMobileDataEnabled:Z
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "**** Received "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " broadcast - state = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", unavailable = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", reason = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v6, :cond_3

    const-string v10, "(unspecified)"

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", apnName = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "default"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "*"

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 356
    if-eqz v3, :cond_0

    .line 357
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1200(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    if-nez v10, :cond_1

    .line 358
    iget-object v11, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1300(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;

    move-result-object v10

    const-string v12, "phone"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    #setter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v11, v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1202(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 360
    :cond_1
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1200(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1200(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 364
    :cond_2
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileDataInService:Z
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1400(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 365
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    const/4 v11, 0x1

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V
    invoke-static {v10, v11}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V

    goto/16 :goto_0

    :cond_3
    move-object v10, v6

    .line 352
    goto :goto_1

    .line 373
    :cond_4
    sget-object v10, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    .line 375
    :pswitch_1
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "*** CONNECTED *** "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v11, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    const-string v10, "radioTurnedOff"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->isPersistedMobileDataEnabled()Z
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1100(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V
    invoke-static {v11, v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 382
    :pswitch_2
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "*** DISCONNECTED *** "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->updateState()V
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1600(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)V

    .line 384
    const/4 v1, 0x1

    .line 385
    .local v1, bChecked:Z
    if-eqz v9, :cond_6

    .line 386
    const-string v10, "radioTurnedOff"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 387
    const/4 v1, 0x0

    .line 394
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #getter for: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->mMobileDataInService:Z
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1400(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 395
    iget-object v11, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    if-eqz v3, :cond_9

    if-eqz v1, :cond_9

    const/4 v10, 0x1

    :goto_4
    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V
    invoke-static {v11, v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V

    goto/16 :goto_0

    .line 388
    :cond_7
    const-string v10, "pdpTeardown"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "dataDetached"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 389
    :cond_8
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1700(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 390
    const/4 v1, 0x0

    goto :goto_3

    .line 395
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 405
    .end local v1           #bChecked:Z
    :pswitch_3
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "*** CONNECTING *** "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v11, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    const-string v10, "radioTurnedOff"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    if-eqz v3, :cond_a

    const/4 v10, 0x1

    :goto_5
    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V
    invoke-static {v11, v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 410
    :pswitch_4
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "*** SUSPENDED *** "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    .end local v0           #apnName:Ljava/lang/String;
    .end local v3           #bPersistedMobileDataEnabled:Z
    .end local v4           #capability:Ljava/lang/String;
    .end local v6           #reason:Ljava/lang/String;
    .end local v8           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v9           #unavailable:Z
    :pswitch_5
    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 418
    .local v2, bEnabled:Z
    const-string v10, "sender"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 420
    .local v7, sender:Ljava/lang/String;
    invoke-static {}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$200()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", sender = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->getContext()Landroid/content/Context;
    invoke-static {v10}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1800(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 427
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    const/4 v11, 0x0

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V
    invoke-static {v10, v11}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V

    goto/16 :goto_0

    .line 429
    :cond_b
    iget-object v10, p0, Lcom/htc/htcsettingwidgets/MobileNetworkWidget$ReceiveHandler;->this$0:Lcom/htc/htcsettingwidgets/MobileNetworkWidget;

    #calls: Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->displayState(Z)V
    invoke-static {v10, v2}, Lcom/htc/htcsettingwidgets/MobileNetworkWidget;->access$1500(Lcom/htc/htcsettingwidgets/MobileNetworkWidget;Z)V

    goto/16 :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 373
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
