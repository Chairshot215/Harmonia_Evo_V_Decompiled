.class Lcom/android/settings/ModemLinkEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "ModemLinkEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ModemLinkEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ModemLinkEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ModemLinkEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0xd

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.htc.android.startIS"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    const-string v4, "ModemLink"

    const-string v6, "IS start action"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xaa

    if-ne v4, v6, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xd8

    if-ne v4, v6, :cond_0

    .line 267
    sput-boolean v5, Lcom/android/settings/ModemLinkEnabler;->installed:Z

    .line 269
    :cond_0
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 270
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Lcom/android/settings/ModemLinkEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.htc.android.startML"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 274
    const-string v4, "ModemLink"

    const-string v6, "ML start action"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IS_ML:Z

    if-eqz v4, :cond_3

    .line 276
    sput-boolean v5, Lcom/android/settings/ModemLinkEnabler;->installed:Z

    .line 278
    :cond_3
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 279
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Lcom/android/settings/ModemLinkEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 283
    const-string v4, "ModemLink"

    const-string v7, "battery changed"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 285
    .local v2, pluggedType:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/android/settings/MLReceiver;->USB:Z

    .line 287
    const-string v4, "ModemLink"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/settings/MLReceiver;->USB:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v4, "ModemLink"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BT:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/settings/MLReceiver;->BT:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v4, "ModemLink"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ML Interface:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getMLInterface()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->getMLInterface()I

    move-result v4

    if-ne v4, v5, :cond_5

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 297
    :cond_5
    sget-boolean v4, Lcom/android/settings/MLReceiver;->USB:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/settings/MLReceiver;->BT:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    iget-object v4, v4, Lcom/android/settings/ModemLinkEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_6

    .line 300
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    iget-object v4, v4, Lcom/android/settings/ModemLinkEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 302
    :cond_6
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 303
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Lcom/android/settings/ModemLinkEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 285
    goto/16 :goto_1

    .line 337
    .end local v2           #pluggedType:I
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 339
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 341
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 345
    .local v0, hotstate:I
    if-eq v0, v10, :cond_9

    if-ne v0, v8, :cond_b

    :cond_9
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 347
    sget-boolean v4, Lcom/android/settings/ModemLinkEnabler;->opening:Z

    if-nez v4, :cond_a

    .line 348
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 349
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v9, v7}, Lcom/android/settings/ModemLinkEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    .line 351
    :cond_a
    sput-boolean v6, Lcom/android/settings/ModemLinkEnabler;->opening:Z

    .line 355
    :cond_b
    if-eq v0, v10, :cond_c

    if-ne v0, v8, :cond_d

    :cond_c
    move v6, v5

    :cond_d
    sput-boolean v6, Lcom/android/settings/ModemLinkEnabler;->hotspotenabled:Z

    .line 357
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    #getter for: Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/ModemLinkEnabler;->access$100(Lcom/android/settings/ModemLinkEnabler;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    #getter for: Lcom/android/settings/ModemLinkEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/settings/ModemLinkEnabler;->access$100(Lcom/android/settings/ModemLinkEnabler;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 359
    .end local v0           #hotstate:I
    .end local v1           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 361
    const-string v4, "android.app.admin.extra.ALLOW_STATUS"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 363
    .local v3, status:I
    if-nez v3, :cond_10

    .line 364
    sput-boolean v6, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    .line 368
    :goto_2
    const-string v4, "ModemLink"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EAS Allow IS:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v7, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/android/settings/ModemLinkEnabler;->isMLEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    if-nez v4, :cond_1

    .line 372
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    iget-object v4, v4, Lcom/android/settings/ModemLinkEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v4, :cond_f

    .line 373
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    iget-object v4, v4, Lcom/android/settings/ModemLinkEnabler;->mIDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 375
    :cond_f
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 376
    iget-object v4, p0, Lcom/android/settings/ModemLinkEnabler$2;->this$0:Lcom/android/settings/ModemLinkEnabler;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Lcom/android/settings/ModemLinkEnabler;->onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 366
    :cond_10
    sput-boolean v5, Lcom/android/settings/MLReceiver;->EAS_AllowIS:Z

    goto :goto_2

    .line 380
    .end local v3           #status:I
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.htc.is.enabled"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 383
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 387
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.htc.is.disabled"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    sget-object v4, Lcom/android/settings/ModemLinkEnabler;->mToggleML:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method
