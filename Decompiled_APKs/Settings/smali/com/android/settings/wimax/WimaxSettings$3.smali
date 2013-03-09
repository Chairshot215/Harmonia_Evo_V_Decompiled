.class Lcom/android/settings/wimax/WimaxSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "WimaxSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wimax/WimaxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/WimaxSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/WimaxSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.htc.net.wimax.RSSI_CHANGED"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 448
    const-string v6, "newRssiLevel"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$302(I)I

    .line 450
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    const-string v9, "connectivity"

    invoke-virtual {v6, v9}, Lcom/android/settings/wimax/WimaxSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 451
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 453
    .local v3, info:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v9, :cond_0

    .line 454
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->updateServiceProvider()V
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$400(Lcom/android/settings/wimax/WimaxSettings;)V

    .line 455
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mSignalStrengthPreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$600(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/wimax/WimaxSettings;->access$500(Lcom/android/settings/wimax/WimaxSettings;)Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/wimax/WimaxSettings;->access$300()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/wimax/WimaxStatus;->getPrintableSiganlStrength(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mBackoffRescan:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$200(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v6

    if-ne v6, v11, :cond_8

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 495
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mMenuScan:Landroid/view/MenuItem;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$1400(Lcom/android/settings/wimax/WimaxSettings;)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 496
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mMenuScan:Landroid/view/MenuItem;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$1400(Lcom/android/settings/wimax/WimaxSettings;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v9}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/net/wimax/WimaxController;->isBackoffState()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v9}, Lcom/android/settings/wimax/WimaxSettings;->access$000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/net/wimax/WimaxController;->getWimaxState()I

    move-result v9

    if-ne v9, v11, :cond_9

    :goto_2
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 498
    :cond_1
    return-void

    .line 458
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.htc.net.wimax.STATE_CHANGE"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 460
    .local v5, networkinfo:Landroid/net/NetworkInfo;
    const-string v6, "WimaxSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "received NETWORK_STATE_CHANGED_ACTION, getDetailedState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v9, :cond_3

    .line 464
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mIPAddressPreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$700(Lcom/android/settings/wimax/WimaxSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v6

    const-string v9, "dhcp.wimax0.ipaddress"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->updateServiceProvider()V
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$400(Lcom/android/settings/wimax/WimaxSettings;)V

    goto/16 :goto_0

    .line 466
    :cond_3
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v9, :cond_0

    .line 468
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->clearWimaxInfo()V
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$800(Lcom/android/settings/wimax/WimaxSettings;)V

    goto/16 :goto_0

    .line 470
    .end local v5           #networkinfo:Landroid/net/NetworkInfo;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 472
    const-string v6, "curWimaxEnabledState"

    const/4 v9, 0x4

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v11, :cond_5

    .line 474
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->clearWimaxInfo()V
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$800(Lcom/android/settings/wimax/WimaxSettings;)V

    .line 476
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->enableWimaxInfo()V
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$900(Lcom/android/settings/wimax/WimaxSettings;)V

    goto/16 :goto_0

    .line 477
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.htc.net.wimax.WIMAX_EAP_AKA_NOTIFICATION"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 478
    const-string v6, "eap_aka_notification_code"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 480
    .local v1, errorCode:I
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mWimaxError:Lcom/android/settings/wimax/WimaxError;
    invoke-static {v6}, Lcom/android/settings/wimax/WimaxSettings;->access$1000(Lcom/android/settings/wimax/WimaxSettings;)Lcom/android/settings/wimax/WimaxError;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/settings/wimax/WimaxError;->getErrorMsgId(I)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, errorString:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 482
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v9, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->createErrorDialog(Ljava/lang/String;Z)Landroid/app/Dialog;
    invoke-static {v9, v2, v7}, Lcom/android/settings/wimax/WimaxSettings;->access$1200(Lcom/android/settings/wimax/WimaxSettings;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v9

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;
    invoke-static {v6, v9}, Lcom/android/settings/wimax/WimaxSettings;->access$1102(Lcom/android/settings/wimax/WimaxSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 483
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v9, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;
    invoke-static {v9}, Lcom/android/settings/wimax/WimaxSettings;->access$1100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/app/Dialog;

    move-result-object v9

    #calls: Lcom/android/settings/wimax/WimaxSettings;->showDialog(Landroid/app/Dialog;)V
    invoke-static {v6, v9}, Lcom/android/settings/wimax/WimaxSettings;->access$1300(Lcom/android/settings/wimax/WimaxSettings;Landroid/app/Dialog;)V

    goto/16 :goto_0

    .line 485
    .end local v1           #errorCode:I
    .end local v2           #errorString:Ljava/lang/String;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v9, "com.htc.net.wimax.WIMAX_EAP_NOTIFICATION"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    const-string v6, "eap_notification_msg"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, msg:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v4, :cond_0

    .line 489
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v9, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #calls: Lcom/android/settings/wimax/WimaxSettings;->createErrorDialog(Ljava/lang/String;Z)Landroid/app/Dialog;
    invoke-static {v9, v4, v8}, Lcom/android/settings/wimax/WimaxSettings;->access$1200(Lcom/android/settings/wimax/WimaxSettings;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v9

    #setter for: Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;
    invoke-static {v6, v9}, Lcom/android/settings/wimax/WimaxSettings;->access$1102(Lcom/android/settings/wimax/WimaxSettings;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 490
    iget-object v6, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    iget-object v9, p0, Lcom/android/settings/wimax/WimaxSettings$3;->this$0:Lcom/android/settings/wimax/WimaxSettings;

    #getter for: Lcom/android/settings/wimax/WimaxSettings;->mDialog:Landroid/app/Dialog;
    invoke-static {v9}, Lcom/android/settings/wimax/WimaxSettings;->access$1100(Lcom/android/settings/wimax/WimaxSettings;)Landroid/app/Dialog;

    move-result-object v9

    #calls: Lcom/android/settings/wimax/WimaxSettings;->showDialog(Landroid/app/Dialog;)V
    invoke-static {v6, v9}, Lcom/android/settings/wimax/WimaxSettings;->access$1300(Lcom/android/settings/wimax/WimaxSettings;Landroid/app/Dialog;)V

    goto/16 :goto_0

    .end local v4           #msg:Ljava/lang/String;
    :cond_8
    move v6, v8

    .line 494
    goto/16 :goto_1

    :cond_9
    move v7, v8

    .line 496
    goto/16 :goto_2
.end method
