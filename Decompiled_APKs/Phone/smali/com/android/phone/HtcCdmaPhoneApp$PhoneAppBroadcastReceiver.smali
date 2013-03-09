.class Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/HtcCdmaPhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/HtcCdmaPhoneApp;Lcom/android/phone/HtcCdmaPhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 932
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/HtcCdmaPhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 935
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 937
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v4, v4, Lcom/android/phone/HtcCdmaPhoneApp;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v4, v4, Lcom/android/phone/HtcCdmaPhoneApp;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 939
    const-string v4, "HtcCdmaPhoneApp"

    const-string v5, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string v4, "phoneinECMState"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 942
    sput-boolean v8, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    .line 943
    const-string v4, "HtcCdmaPhoneApp"

    const-string v5, "Enter emergency call back mode after call disconnect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    sput-boolean v6, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    .line 947
    sput-boolean v6, Lcom/android/phone/HtcCdmaPhoneApp;->mEmergencyScreen:Z

    goto :goto_0

    .line 952
    :cond_2
    const-string v4, "HtcCdmaPhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iget-object v6, v6, Lcom/android/phone/HtcCdmaPhoneApp;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phones"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 956
    sget-boolean v4, Lcom/android/phone/HtcCdmaPhoneApp;->mEmergencyScreen:Z

    if-eqz v4, :cond_0

    .line 957
    sput-boolean v6, Lcom/android/phone/HtcCdmaPhoneApp;->mEmergencyScreen:Z

    .line 959
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->resetDefaultTimeout()V

    .line 960
    const-string v4, "HtcCdmaPhoneApp"

    const-string v5, "Reset the default time out"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    :cond_4
    const-string v4, "com.htc.net.wimax.AUTH_NAI_REJECTED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 965
    const-string v4, "HtcCdmaPhoneApp"

    const-string v5, "wimax.AUTH_NAI_REJECTED_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/HtcCdmaPhoneApp;->access$2200(Lcom/android/phone/HtcCdmaPhoneApp;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x32

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 967
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #getter for: Lcom/android/phone/HtcCdmaPhoneApp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/phone/HtcCdmaPhoneApp;->access$2200(Lcom/android/phone/HtcCdmaPhoneApp;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 969
    .end local v1           #msg:Landroid/os/Message;
    :cond_5
    const-string v4, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 971
    const-string v4, "ICC_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 972
    .local v3, simCardType:I
    const-string v4, "POVISIONED"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 973
    .local v2, provision:Z
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_KEY_ICC_PROVISIONED:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simCardType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$100(Lcom/android/phone/HtcCdmaPhoneApp;Ljava/lang/String;)V

    .line 974
    if-ne v3, v7, :cond_7

    if-nez v2, :cond_7

    .line 976
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    const/16 v5, 0xd

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->writeOtaRequired(I)V
    invoke-static {v4, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$800(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    .line 982
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    iput-boolean v8, v4, Lcom/android/phone/HtcCdmaPhoneApp;->isProvisionStatusQueryDone:Z

    .line 983
    if-ne v3, v7, :cond_8

    if-eqz v2, :cond_8

    .line 985
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #setter for: Lcom/android/phone/HtcCdmaPhoneApp;->mVerizonSIMtype:I
    invoke-static {v4, v8}, Lcom/android/phone/HtcCdmaPhoneApp;->access$2302(Lcom/android/phone/HtcCdmaPhoneApp;I)I

    goto/16 :goto_0

    .line 978
    :cond_7
    if-eqz v2, :cond_6

    .line 980
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    const/16 v5, 0xc

    #calls: Lcom/android/phone/HtcCdmaPhoneApp;->writeOtaRequired(I)V
    invoke-static {v4, v5}, Lcom/android/phone/HtcCdmaPhoneApp;->access$800(Lcom/android/phone/HtcCdmaPhoneApp;I)V

    goto :goto_1

    .line 989
    :cond_8
    iget-object v4, p0, Lcom/android/phone/HtcCdmaPhoneApp$PhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/HtcCdmaPhoneApp;

    #setter for: Lcom/android/phone/HtcCdmaPhoneApp;->mVerizonSIMtype:I
    invoke-static {v4, v7}, Lcom/android/phone/HtcCdmaPhoneApp;->access$2302(Lcom/android/phone/HtcCdmaPhoneApp;I)I

    goto/16 :goto_0
.end method
