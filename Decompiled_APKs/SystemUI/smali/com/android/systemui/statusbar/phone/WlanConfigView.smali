.class public Lcom/android/systemui/statusbar/phone/WlanConfigView;
.super Landroid/widget/LinearLayout;
.source "WlanConfigView.java"


# static fields
.field private static final STATUS_CONNECTED:I = 0x5

.field private static final STATUS_DISCONNECTED:I = 0x8

.field private static final STATUS_OBTAININGADDR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WlanCofigView"


# instance fields
.field private mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mState:I

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field private mSummary:Landroid/widget/TextView;

.field private mTitleButtonListener:Landroid/view/View$OnClickListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/phone/WlanConfigView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/WlanConfigView$1;-><init>(Lcom/android/systemui/statusbar/phone/WlanConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/WlanConfigView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/WlanConfigView$2;-><init>(Lcom/android/systemui/statusbar/phone/WlanConfigView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mState:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStyleable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/WlanConfigView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/WlanConfigView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->updateStateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/WlanConfigView;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/WlanConfigView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/WlanConfigView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method private getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_psk_hex:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wapi_cert:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ne v0, v4, :cond_1

    iput v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mState:I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->updateStateUI()V

    :cond_0
    return-void

    :cond_1
    if-ne v0, v5, :cond_2

    iput v5, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mState:I

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mState:I

    goto :goto_0
.end method

.method private hasSecurity(Landroid/net/wifi/WifiInfo;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->getWifiConfigurationSecurity(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v4, "WlanCofigView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not find out wifiConfig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_1
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private updateStateUI()V
    .locals 7

    const v3, 0x7f080083

    const/4 v6, 0x0

    const/16 v4, 0x8

    iget v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mState:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    const v3, 0x7f080084

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    const v3, 0x7f080082

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->hasSecurity(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    const v1, 0x7f0e0046

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/TitleView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v3, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    const v2, 0x7f0800b5

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/systemui/statusbar/phone/TitleView;->updateName(ZIZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/TitleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/TitleView;->setButtonImageResource(I)V

    const v1, 0x7f0e0047

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mTitleButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0048

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0e0049

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->updateResources()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    const v2, 0x7f0800b4

    invoke-virtual {v1, v3, v2, v3}, Lcom/android/systemui/statusbar/phone/TitleView;->updateName(ZIZ)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public updateResources()V
    .locals 8

    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBarFlag;->HTC_SKIN:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarStyleable;->updateStyleName()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

    const-string v6, "status_bar_item_background"

    const v7, 0x7f02022e

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView;->mCarrierTitle:Lcom/android/systemui/statusbar/phone/TitleView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/TitleView;->updateResources()V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->updateStateUI()V

    return-void
.end method
