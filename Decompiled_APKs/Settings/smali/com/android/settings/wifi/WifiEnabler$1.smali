.class Lcom/android/settings/wifi/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiEnabler;->access$100(Lcom/android/settings/wifi/WifiEnabler;I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 100
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const-string v4, "newState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v5, v4}, Lcom/android/settings/wifi/WifiEnabler;->access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 106
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiEnabler;->access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 108
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_3
    const-string v4, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiEnabler;->access$400(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$500(Lcom/android/settings/wifi/WifiEnabler;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/CustomUtil;->isCTSsid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    const-string v4, "cw_reg_state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 111
    .local v3, state:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$600(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$600(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiEnabler;->access$700(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiEnabler;->access$500(Lcom/android/settings/wifi/WifiEnabler;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/settings/wifi/WifiEnabler;->getCwStatus(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 115
    .end local v3           #state:I
    :cond_4
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 116
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 117
    .local v2, netinfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    #calls: Lcom/android/settings/wifi/WifiEnabler;->handleIPTStateChanged(Z)V
    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiEnabler;->access$800(Lcom/android/settings/wifi/WifiEnabler;Z)V

    goto/16 :goto_0

    .line 120
    .end local v2           #netinfo:Landroid/net/NetworkInfo;
    :cond_5
    const-string v4, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 121
    const-string v4, "WifiEnabler"

    const-string v5, "onReceive INTENT_ALLOW_WIFI_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #calls: Lcom/android/settings/wifi/WifiEnabler;->checkWifiPolicy()V
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$000(Lcom/android/settings/wifi/WifiEnabler;)V

    goto/16 :goto_0

    .line 123
    :cond_6
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$700(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-static {v4, v5}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 125
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$900(Lcom/android/settings/wifi/WifiEnabler;)Lcom/htc/widget/HtcToggleButton;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto/16 :goto_0

    .line 127
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiEnabler;->access$900(Lcom/android/settings/wifi/WifiEnabler;)Lcom/htc/widget/HtcToggleButton;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method
