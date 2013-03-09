.class public Lcom/android/systemui/statusbar/preference/Adb;
.super Lcom/android/systemui/statusbar/preference/StatusBarPreference;
.source "Adb.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mState:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/statusbar/preference/Adb$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Adb$1;-><init>(Lcom/android/systemui/statusbar/preference/Adb;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/preference/Adb$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preference/Adb$2;-><init>(Lcom/android/systemui/statusbar/preference/Adb;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/Adb;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/preference/Adb;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private checkPortSetting()Z
    .locals 2

    const-string v1, "service.adb.tcp.port"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContentView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Adb;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/Adb;->handleWifiStateChanged(I)V

    return-void
.end method


# virtual methods
.method protected adbStart()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v4, "service.adb.tcp.port"

    const-string v5, "3700"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.service.adb.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.service.adb.enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/preference/Adb;->mState:Z

    const v6, 0x7f0800d4

    iget-object v5, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Adb;->getWifiIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3700"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Adb;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020262

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move v4, v8

    :goto_0
    return v4

    :catch_0
    move-exception v4

    move-object v1, v4

    move v4, v7

    goto :goto_0
.end method

.method protected adbStop()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "service.adb.tcp.port"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.service.adb.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "persist.service.adb.enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/preference/Adb;->mState:Z

    const v5, 0x10403a0

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/Adb;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020263

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    move v4, v8

    return v4
.end method

.method public disableAdbSetting()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Adb;->adbStop()Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public enableAdbSetting()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Adb;->adbStop()Z

    :cond_0
    return-void
.end method

.method protected getWifiIp()Ljava/lang/String;
    .locals 5

    const-string v4, "."

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Adb;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    and-int/lit16 v3, v0, 0xff

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected handleWifiStateChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Adb;->disableAdbSetting()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Adb;->enableAdbSetting()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContentView:Landroid/widget/LinearLayout;

    move v1, v3

    and-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Adb;->disableAdbSetting()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Adb;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Adb;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Adb;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateResources()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Adb;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
