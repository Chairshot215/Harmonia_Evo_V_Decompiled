.class public Lcom/htc/htcsettingwidgets/BTWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "BTWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final M10_FILE_PATH:Ljava/lang/String; = "Port/BluetoothWidget.m10"

.field private static isAirplaneToggleable:I

.field private static final mbLOGV:Z


# instance fields
.field private mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTStateReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSettingOn:Z

.field private m_ButtonClickListener:Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;

.field private m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

.field private m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mstrItemIdentifier:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/htcsettingwidgets/BTWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/htcsettingwidgets/BTWidget;->$assertionsDisabled:Z

    .line 23
    const-class v0, Lcom/htc/htcsettingwidgets/BTWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcsettingwidgets/BTWidget;->LOG_TAG:Ljava/lang/String;

    .line 206
    const/4 v0, -0x1

    sput v0, Lcom/htc/htcsettingwidgets/BTWidget;->isAirplaneToggleable:I

    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 26
    iput-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 28
    iput-boolean v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "button.settings_section"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "textlabel.Settings"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mstrItemIdentifier:[Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/htc/htcsettingwidgets/BTWidget$1;

    invoke-direct {v0, p0}, Lcom/htc/htcsettingwidgets/BTWidget$1;-><init>(Lcom/htc/htcsettingwidgets/BTWidget;)V

    iput-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htcsettingwidgets/BTWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->isToggleable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/htcsettingwidgets/BTWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/htcsettingwidgets/BTWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/BTWidget;->setBTOn(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htcsettingwidgets/BTWidget;)Lcom/htc/fusion/fx/controls/FxSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/htcsettingwidgets/BTWidget;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/htcsettingwidgets/BTWidget;->displayState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/htcsettingwidgets/BTWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private displayState(Z)V
    .locals 3
    .parameter "bEnabled"

    .prologue
    const/4 v2, 0x1

    .line 165
    iput-boolean p1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    .line 166
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v0

    .line 167
    .local v0, iCurrentState:I
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxSettingButton;->changeToNextState(Z)V

    .line 169
    :cond_2
    return-void
.end method

.method private initBTAPI()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 124
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_2

    .line 125
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 126
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mIntentFilter:Landroid/content/IntentFilter;

    .line 132
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move v0, v1

    .line 134
    goto :goto_0

    :cond_2
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->initBTAPI()Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    .line 98
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    goto :goto_0
.end method

.method private isToggleable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/htcsettingwidgets/SettingUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    sget v3, Lcom/htc/htcsettingwidgets/BTWidget;->isAirplaneToggleable:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 211
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "bluetooth"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 214
    :cond_2
    sput v2, Lcom/htc/htcsettingwidgets/BTWidget;->isAirplaneToggleable:I

    .line 218
    .end local v0           #toggleable:Ljava/lang/String;
    :cond_3
    :goto_1
    sget v3, Lcom/htc/htcsettingwidgets/BTWidget;->isAirplaneToggleable:I

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 216
    .restart local v0       #toggleable:Ljava/lang/String;
    :cond_4
    sput v1, Lcom/htc/htcsettingwidgets/BTWidget;->isAirplaneToggleable:I

    goto :goto_1
.end method

.method private setBTOn(Z)V
    .locals 2
    .parameter "bEnabled"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->currentState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    goto :goto_0

    .line 152
    :cond_3
    if-eqz p1, :cond_4

    .line 153
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "saved"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v2, "Port/BluetoothWidget.m10"

    invoke-virtual {p0, v2}, Lcom/htc/htcsettingwidgets/BTWidget;->setContent(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 43
    .local v1, scene:Lcom/htc/fusion/fx/FxScene;
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mstrItemIdentifier:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 44
    .local v0, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v0, v3

    check-cast v2, Lcom/htc/fusion/fx/controls/FxSettingButton;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 45
    sget-boolean v2, Lcom/htc/htcsettingwidgets/BTWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->initData()V

    .line 47
    iget-boolean v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mSettingOn:Z

    if-eqz v2, :cond_2

    .line 48
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 53
    :goto_0
    new-instance v2, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;-><init>(Lcom/htc/htcsettingwidgets/BTWidget;Lcom/htc/htcsettingwidgets/BTWidget$1;)V

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;

    .line 54
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;

    if-nez v2, :cond_1

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v3, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 72
    aget-object v2, v0, v4

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 73
    sget-boolean v2, Lcom/htc/htcsettingwidgets/BTWidget;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_txtLblName:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/htc/htcsettingwidgets/BTWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mIntentFilter:Landroid/content/IntentFilter;

    .line 85
    :cond_0
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_btnClick:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v1, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 87
    iput-object v2, p0, Lcom/htc/htcsettingwidgets/BTWidget;->m_ButtonClickListener:Lcom/htc/htcsettingwidgets/BTWidget$SettingButtonClickListener;

    .line 88
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 89
    return-void
.end method
