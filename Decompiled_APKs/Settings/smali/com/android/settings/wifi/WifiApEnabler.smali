.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# static fields
.field public static final DIALOG_CODE_WARNING_ACG:I = 0x7

.field public static final KEY_IS_DIALOG:Ljava/lang/String; = "is_dialog_code"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDontRemind:Landroid/widget/CheckBox;

.field private mEnableMhs:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLayoutFactory:Landroid/view/LayoutInflater;

.field private final mMhsIntentFilter:Landroid/content/IntentFilter;

.field private final mMhsReceiver:Landroid/content/BroadcastReceiver;

.field private mMhsStatus:I

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private remindDialog:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/preference/HtcCheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "checkBox"

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "WifiApEnabler"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$2;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 122
    invoke-virtual {p2}, Lcom/htc/preference/HtcCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 124
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mLayoutFactory:Landroid/view/LayoutInflater;

    .line 125
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v0, v2, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v0, v2, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xad

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    .line 150
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v0, :cond_2

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsIntentFilter:Landroid/content/IntentFilter;

    .line 155
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 136
    goto :goto_0

    .line 153
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsIntentFilter:Landroid/content/IntentFilter;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkMHSStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApEnabler;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->showRemindDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiAPEnable(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->setHotspotStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDontRemind:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkMHSStatus()V
    .locals 5

    .prologue
    .line 518
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->checkWifiApEnabledMhsRequest()I

    move-result v0

    .line 519
    .local v0, status:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 521
    .local v1, wifiApState:I
    iput v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsStatus:I

    .line 522
    const-string v2, "WifiApEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mhs status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v2, "WifiApEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifiAp status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    .line 526
    return-void
.end method

.method private handleMhs(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 486
    if-eqz p1, :cond_3

    .line 488
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 489
    .local v0, wifiState:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 491
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->showTurnoffWifiDialog()V

    .line 506
    .end local v0           #wifiState:I
    :goto_0
    return v1

    .line 496
    .restart local v0       #wifiState:I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 497
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 503
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #wifiState:I
    :cond_3
    move v1, v2

    .line 506
    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 444
    packed-switch p1, :pswitch_data_0

    .line 477
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c090d

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 446
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c090b

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 454
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 459
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c090c

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 463
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 467
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 468
    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->updateMhsUI(I)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setHotspotStatus()V
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 378
    .local v0, hotspotstate:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 384
    .end local v0           #hotspotstate:I
    :cond_1
    :goto_0
    return-void

    .line 381
    .restart local v0       #hotspotstate:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setWifiAPEnable(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 308
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 309
    .local v2, wifiState:I
    move v1, p1

    .line 310
    .local v1, isEnable:Z
    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 313
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 318
    if-eqz v1, :cond_2

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.showme.LOG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "callingApp"

    const-string v4, "com.android.settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v3, "actionCoverage"

    const-string v4, "topic_tag-internet_connections-use_phone_as_wireless_router"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v6}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v4, 0x7f0c090d

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_0
.end method

.method private showRemindDialog(Z)V
    .locals 8
    .parameter "wifiapenable"

    .prologue
    .line 332
    move v1, p1

    .line 333
    .local v1, enable:Z
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c03c7

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0314

    new-instance v6, Lcom/android/settings/wifi/WifiApEnabler$10;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiApEnabler$10;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0313

    new-instance v6, Lcom/android/settings/wifi/WifiApEnabler$9;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/WifiApEnabler$9;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 357
    .local v2, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mLayoutFactory:Landroid/view/LayoutInflater;

    const v5, 0x7f04007d

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 358
    .local v0, contentView:Landroid/widget/LinearLayout;
    const v4, 0x7f080159

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDontRemind:Landroid/widget/CheckBox;

    .line 359
    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 360
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa1

    if-ne v4, v5, :cond_0

    .line 361
    const v4, 0x7f0c04da

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 362
    const v4, 0x7f080158

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 363
    .local v3, text:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 365
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mDontRemind:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 367
    .end local v3           #text:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/WifiApEnabler$11;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiApEnabler$11;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 372
    return-void
.end method

.method private showTurnoffWifiDialog()V
    .locals 3

    .prologue
    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.hotspot.TurnOffWifi"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 512
    const-string v1, "WifiApEnabler"

    const-string v2, "turn off wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 515
    return-void
.end method

.method private updateMhsUI(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 529
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 530
    :cond_0
    const-string v0, "WifiApEnabler"

    const-string v1, "setchecked false summary starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v1, 0x7f0c090b

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 541
    :cond_1
    :goto_0
    return-void

    .line 535
    :cond_2
    if-ne p1, v2, :cond_1

    .line 536
    const-string v0, "WifiApEnabler"

    const-string v1, "setchecked true summary original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 419
    const/4 v11, 0x0

    .line 420
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 422
    .local v10, wifiErrored:Z
    move-object/from16 v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 423
    check-cast v8, Ljava/lang/String;

    .line 424
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 425
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 424
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 422
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 428
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 429
    check-cast v8, Ljava/lang/String;

    .line 430
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 431
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 430
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 428
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 435
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 436
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 437
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 441
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 438
    :cond_7
    if-eqz v10, :cond_6

    .line 439
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    const v13, 0x7f0c090d

    invoke-virtual {v12, v13}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public isMLEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 388
    const-string v2, "init.svc.modem"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, s:Ljava/lang/String;
    const-string v2, "WifiApEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ML value = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-eqz v0, :cond_0

    const-string v2, "stopped"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 394
    :cond_1
    const-string v2, "running"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mMhsIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->checkMHSStatus()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 14
    .parameter "enable"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 187
    .local v0, cr:Landroid/content/ContentResolver;
    move v9, p1

    .line 188
    .local v9, isEnable:Z
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    .line 189
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->handleMhs(Z)Z

    move-result v11

    .line 191
    .local v11, mhsResult:Z
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMhs result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz v11, :cond_0

    .line 193
    const/4 v1, 0x1

    .line 301
    .end local v11           #mhsResult:Z
    :goto_0
    return v1

    .line 197
    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_1

    .line 198
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->showRemindDialog(Z)V

    .line 199
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mEnableMhs:Z

    if-nez v1, :cond_3

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_remind_dialog"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->isMLEnabled()Z

    move-result v12

    .line 208
    .local v12, mlEnabled:Z
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MLEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz v12, :cond_2

    if-eqz v9, :cond_2

    .line 210
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c04d5

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0314

    new-instance v3, Lcom/android/settings/wifi/WifiApEnabler$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApEnabler$4;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0313

    new-instance v3, Lcom/android/settings/wifi/WifiApEnabler$3;

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wifi/WifiApEnabler$3;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c04d6

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v10

    .line 234
    .local v10, mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiApEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApEnabler$5;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 239
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 203
    .end local v10           #mBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v12           #mlEnabled:Z
    :catch_0
    move-exception v7

    .line 204
    .local v7, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I

    goto :goto_1

    .line 240
    .end local v7           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v12       #mlEnabled:Z
    :cond_2
    if-eqz v9, :cond_7

    iget v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->remindDialog:I

    if-nez v1, :cond_7

    .line 241
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->showRemindDialog(Z)V

    .line 242
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 245
    .end local v12           #mlEnabled:Z
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x98

    if-eq v1, v2, :cond_4

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x92

    if-ne v1, v2, :cond_7

    :cond_4
    if-eqz v9, :cond_7

    .line 247
    const-string v1, "content://htc-messages/mms-connection-status"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 248
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, "false"

    .line 249
    .local v8, isDownload:Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 253
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_6
    const-string v1, "true"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0322

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0324

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0314

    new-instance v3, Lcom/android/settings/wifi/WifiApEnabler$8;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApEnabler$8;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0313

    new-instance v3, Lcom/android/settings/wifi/WifiApEnabler$7;

    invoke-direct {v3, p0, v9}, Lcom/android/settings/wifi/WifiApEnabler$7;-><init>(Lcom/android/settings/wifi/WifiApEnabler;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiApEnabler$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApEnabler$6;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 280
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 284
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #isDownload:Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiAPEnable(Z)V

    .line 288
    if-nez v9, :cond_8

    .line 289
    const/4 v13, 0x0

    .line 291
    .local v13, wifiSavedState:I
    :try_start_1
    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 295
    :goto_2
    const/4 v1, 0x1

    if-ne v13, v1, :cond_8

    .line 296
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 297
    const-string v1, "wifi_saved_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 301
    .end local v13           #wifiSavedState:I
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 292
    .restart local v13       #wifiSavedState:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 406
    const-string v0, ""

    .line 407
    .local v0, s:Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_2

    .line 408
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c04d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    if-nez v4, :cond_1

    .end local v0           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    :goto_1
    return-void

    .line 408
    .restart local v0       #s:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCheckBox:Lcom/htc/preference/HtcCheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0975

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    if-nez v4, :cond_4

    .end local v0           #s:Ljava/lang/String;
    :cond_3
    :goto_2
    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local v0       #s:Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
