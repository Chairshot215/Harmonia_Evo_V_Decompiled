.class public Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;
.super Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;
.source "WidgetWifi.java"


# instance fields
.field listener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field public m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field public m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mbRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mbRegistered:Z

    .line 30
    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 61
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$1;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->listener:Lcom/htc/fusion/fx/MessageListener;

    .line 205
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$2;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi$2;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->handleWifiStateChanged(II)V

    return-void
.end method

.method private handleWifiStateChanged(II)V
    .locals 1
    .parameter "wifiState"
    .parameter "previousWifiState"

    .prologue
    .line 226
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->updateIcon()V

    .line 231
    :cond_1
    return-void
.end method

.method private initFusionScr()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    .line 73
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 75
    .local v1, descendants:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 76
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 78
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 80
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 81
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->getCurrentSetting()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 85
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 92
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method

.method private persistWifiEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mResContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->unRegisterReceiver()V

    .line 53
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 55
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 59
    :cond_0
    return-void
.end method

.method public getCurrentSetting()I
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, nRet:I
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 106
    :goto_0
    const-string v1, "HtcPowerStripWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCurrentSetting: nRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_1
    const-string v1, "HtcPowerStripWidget"

    const-string v2, "GetCurrentSetting: mWifiManager = null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V
    .locals 3
    .parameter "fxScene"
    .parameter "rContext"
    .parameter "UiHandler"
    .parameter "IntParam"
    .parameter "StrParam"

    .prologue
    const/16 v2, 0x1f45

    .line 34
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->initFusionScr()V

    .line 36
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mResContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateFilter:Landroid/content/IntentFilter;

    .line 38
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.hotspot.HOTSPOT_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->registerReceiver()V

    .line 40
    const-string v0, "WidgetWifi"

    const-string v1, "playmarker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    return-void
.end method

.method public pressIcon()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 113
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_0

    .line 115
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v4, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mResContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->getCurrentSetting()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 123
    .local v0, bEnable:Z
    :goto_1
    const-string v4, "HtcPowerStripWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PressIcon bEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v4, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_6

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 131
    .local v3, wifiApState:I
    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 137
    :cond_2
    iget-object v4, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 139
    const-string v5, "HtcPowerStripWidget"

    if-eqz v0, :cond_4

    const-string v4, "can not enable wifi"

    :goto_2
    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v3           #wifiApState:I
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .end local v0           #bEnable:Z
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_3
    move v0, v4

    .line 121
    goto :goto_1

    .line 139
    .restart local v0       #bEnable:Z
    .restart local v3       #wifiApState:I
    :cond_4
    :try_start_1
    const-string v4, "can not stop wifi"

    goto :goto_2

    .line 143
    :cond_5
    invoke-direct {p0, v0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->persistWifiEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 153
    .end local v3           #wifiApState:I
    :cond_6
    const-string v4, "HtcPowerStripWidget"

    const-string v5, "PressIcon: mWifiManager = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 188
    iget-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mbRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mbRegistered:Z

    .line 194
    :cond_0
    return-void
.end method

.method public setButtonState()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->getCurrentSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->mbRegistered:Z

    .line 203
    :cond_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetWifi;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method
