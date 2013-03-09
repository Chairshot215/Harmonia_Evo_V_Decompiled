.class public Lcom/android/mms/transaction/MobileStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileStateReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 20
    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x78

    if-eq v11, v12, :cond_1

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0x9

    if-eq v11, v12, :cond_1

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v12, 0xae

    if-ne v11, v12, :cond_0

    sget-short v11, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v12, 0x35

    if-eq v11, v12, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 29
    const-string v11, "phone"

    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 34
    .local v8, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mobiledata_on"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-ne v11, v1, :cond_2

    .line 41
    .local v1, bMobileDataEnabledSetting:Z
    :goto_1
    const-string v11, "state"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, str:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 43
    const-class v11, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v11, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone$DataState;

    .line 48
    .local v6, state:Lcom/android/internal/telephony/Phone$DataState;
    :goto_2
    const-string v11, "networkUnvailable"

    invoke-virtual {p2, v11, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 50
    .local v9, unavailable:Z
    const-string v10, "apnTypes"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, capability:Ljava/lang/String;
    const-string v10, "reason"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, reason:Ljava/lang/String;
    const-string v10, "apn"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, apnName:Ljava/lang/String;
    const-string v10, "default"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "*"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 55
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 57
    const-string v10, "MobileStateReceiver"

    const-string v11, "onReceive DATA_CONNECTED"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v10, "notification"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 60
    .local v4, nm:Landroid/app/NotificationManager;
    const v10, 0x7f090161

    invoke-virtual {v4, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .end local v0           #apnName:Ljava/lang/String;
    .end local v1           #bMobileDataEnabledSetting:Z
    .end local v2           #capability:Ljava/lang/String;
    .end local v4           #nm:Landroid/app/NotificationManager;
    .end local v5           #reason:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v7           #str:Ljava/lang/String;
    .end local v9           #unavailable:Z
    :cond_2
    move v1, v10

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception v3

    .line 36
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v10, "SmsReceiverService"

    const-string v11, "MobileStateReceiver SettingNotFoundException!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 45
    .end local v3           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #bMobileDataEnabledSetting:Z
    .restart local v7       #str:Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .restart local v6       #state:Lcom/android/internal/telephony/Phone$DataState;
    goto :goto_2
.end method
