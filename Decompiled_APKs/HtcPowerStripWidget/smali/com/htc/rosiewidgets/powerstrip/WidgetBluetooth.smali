.class public Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;
.super Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;
.source "WidgetBluetooth.java"


# instance fields
.field private BTAdapter:Landroid/bluetooth/BluetoothAdapter;

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

.field private mBTStateReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field public m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field public m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private mbRegistered:Z

.field private mbStateChanging:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mIntentFilter:Landroid/content/IntentFilter;

    .line 23
    iput-boolean v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbRegistered:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbStateChanging:Z

    .line 25
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 68
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$1;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$1;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->listener:Lcom/htc/fusion/fx/MessageListener;

    .line 185
    new-instance v0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;

    invoke-direct {v0, p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;-><init>(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbStateChanging:Z

    return p1
.end method

.method private initFusionScr()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 79
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mStrParam:[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    .line 80
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 82
    .local v1, descendants:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 83
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxTxtlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mResContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 87
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 88
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->getCurrentSetting()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 92
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v5}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v2, v3}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 100
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v6}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->listener:Lcom/htc/fusion/fx/MessageListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->unRegisterReceiver()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mIntentFilter:Landroid/content/IntentFilter;

    .line 66
    return-void
.end method

.method public getCurrentSetting()I
    .locals 4

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, nRet:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 107
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    const-string v1, "HtcPowerStripWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT GetCurrentSetting: nRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersistedAirplaneModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mResContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mResContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 231
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
    const/16 v2, 0x1f46

    .line 31
    invoke-super/range {p0 .. p5}, Lcom/htc/rosiewidgets/powerstrip/WidgetBaseClass;->init(Lcom/htc/fusion/fx/FxScene;Landroid/content/Context;Landroid/os/Handler;[I[Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->initFusionScr()V

    .line 33
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mIntentFilter:Landroid/content/IntentFilter;

    .line 36
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_3

    .line 38
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x59

    if-eq v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->registerReceiver()V

    .line 51
    :cond_1
    :goto_0
    const-string v0, "WidgetBluetooth"

    const-string v1, "playmarker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    return-void

    .line 48
    :cond_3
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "initBluetoothAPI failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pressIcon()V
    .locals 3

    .prologue
    .line 114
    iget-boolean v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbStateChanging:Z

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->getPersistedAirplaneModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 119
    const-string v1, "HtcPowerStripWidget"

    const-string v2, "AirplaneMode ON, cannot turn ON"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->updateIcon()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->getCurrentSetting()I

    move-result v0

    .line 125
    .local v0, nRet:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbStateChanging:Z

    .line 127
    if-nez v0, :cond_2

    .line 129
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 161
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 162
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->BTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 164
    iget-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbRegistered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbRegistered:Z

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "HtcPowerStripWidget"

    const-string v1, "register Bluetooth state receiver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setButtonState()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->getCurrentSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mResContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mResContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbRegistered:Z

    .line 183
    :cond_0
    return-void
.end method

.method public updateIcon()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->getCurrentSetting()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->m_fxBtn:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0
.end method
