.class public Lcom/htc/htcsettingwidgets/WiFiWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "WiFiWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final M10_FILE_PATH:Ljava/lang/String; = "Port/WiFiWidget.m10"

.field private static final mbLOGV:Z


# instance fields
.field private mSettingOn:Z

.field private mToggleable:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;

.field private m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mstrItemIdentifier:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/htc/htcsettingwidgets/WiFiWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsettingwidgets/WiFiWidget;->$assertionsDisabled:Z

    .line 24
    const-class v0, Lcom/htc/htcsettingwidgets/WiFiWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/WiFiWidget;->LOG_TAG:Ljava/lang/String;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 27
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 29
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.settings_section"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mstrItemIdentifier:[Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/htc/htcsettingwidgets/WiFiWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/WiFiWidget$1;-><init>(Lcom/htc/htcsettingwidgets/WiFiWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcsettingwidgets/WiFiWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htcsettingwidgets/WiFiWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/htcsettingwidgets/WiFiWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->setWiFiOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htcsettingwidgets/WiFiWidget;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/htcsettingwidgets/WiFiWidget;->handleWifiStateChanged(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/htcsettingwidgets/WiFiWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/htcsettingwidgets/WiFiWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private displayState(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    const/4 v2, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    .line 194
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    .line 195
    .local v0, iCurrentState:I
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 197
    :cond_2
    return-void
.end method

.method private static getHumanReadableWifiState(I)Ljava/lang/String;
    .locals 1
    .parameter "iWifiState"

    .prologue
    .line 176
    packed-switch p0, :pswitch_data_0

    .line 188
    const-string v0, "Some other state!"

    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    const-string v0, "Disabled"

    goto :goto_0

    .line 180
    :pswitch_1
    const-string v0, "Disabling"

    goto :goto_0

    .line 182
    :pswitch_2
    const-string v0, "Enabled"

    goto :goto_0

    .line 184
    :pswitch_3
    const-string v0, "Enabling"

    goto :goto_0

    .line 186
    :pswitch_4
    const-string v0, "Unknown"

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private handleWifiStateChanged(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "iWifiState"

    .prologue
    .line 148
    packed-switch p2, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 153
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->displayState(Z)V

    goto :goto_0

    .line 160
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->displayState(Z)V

    .line 162
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mToggleable:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method private setPersistWifiEnabled(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWiFiOn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 117
    .local v0, wifiApState:I
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    .line 123
    iget-boolean v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/htcsettingwidgets/WiFiWidget;->setWifiEnabled(Z)V

    .line 124
    return-void
.end method

.method private setWifiEnabled(Z)V
    .locals 2
    .parameter "bEnabled"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/WiFiWidget;->setPersistWifiEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "saved"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const-string v2, "Port/WiFiWidget.m10"

    invoke-virtual {p0, v2}, Lcom/htc/htcsettingwidgets/WiFiWidget;->setContent(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 46
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mstrItemIdentifier:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 47
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v0, v4

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 48
    sget-boolean v2, Lcom/htc/htcsettingwidgets/WiFiWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 50
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    .line 51
    iget-boolean v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mSettingOn:Z

    if-eqz v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 57
    :goto_0
    new-instance v2, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/WiFiWidget;Lcom/htc/htcsettingwidgets/WiFiWidget$1;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;

    .line 58
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;

    if-nez v2, :cond_1

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 71
    aget-object v2, v0, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 72
    sget-boolean v2, Lcom/htc/htcsettingwidgets/WiFiWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 55
    :cond_2
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 73
    :cond_3
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->initData()V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/WiFiWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 82
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 83
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 84
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/WiFiWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/WiFiWidget$SettingButtonClickListener;

    .line 85
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 86
    return-void
.end method
