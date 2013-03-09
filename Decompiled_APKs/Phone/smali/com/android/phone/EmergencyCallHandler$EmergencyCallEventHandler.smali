.class Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;
.super Landroid/os/Handler;
.source "EmergencyCallHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmergencyCallEventHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/EmergencyCallHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallHandler$EmergencyCallEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 95
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 98
    :sswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v1, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    .line 101
    .local v1, eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    .line 103
    .local v5, state:Landroid/telephony/ServiceState;
    const-string v6, "EmergencyCallHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_SERVICE_STATE_CHANGED state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    const-string v7, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 112
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->isECCtriggeredByIMS:Z

    if-eqz v6, :cond_2

    .line 116
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v4

    .line 117
    .local v4, screen:Lcom/android/phone/InCallScreen;
    if-eqz v4, :cond_2

    .line 118
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 119
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/phone/InCallScreen;->mHasDialedECC:Z

    .line 123
    .end local v4           #screen:Lcom/android/phone/InCallScreen;
    :cond_2
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    iget-object v7, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 124
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "EmergencyCallHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    .end local v5           #state:Landroid/telephony/ServiceState;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;

    .line 154
    .restart local v1       #eci:Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;
    :try_start_1
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    iget-object v7, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_1
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v6}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v2

    .line 156
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "EmergencyCallHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityNotFoundException ex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    const-string v8, "112"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 159
    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v6, v1, Lcom/android/phone/EmergencyCallHandler$EmergencyCallInfo;->app:Landroid/app/Application;

    invoke-virtual {v6, v3}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
