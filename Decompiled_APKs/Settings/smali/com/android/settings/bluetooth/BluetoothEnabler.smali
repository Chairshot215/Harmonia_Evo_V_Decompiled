.class public final Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSummary:Landroid/widget/TextView;

.field private mSwitch:Lcom/htc/widget/HtcToggleButton;

.field private mSwitchHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "switchHeader"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHeader:Landroid/view/View;

    .line 83
    instance-of v0, p2, Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_1

    .line 84
    check-cast p2, Lcom/htc/widget/HtcToggleButton;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 89
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 91
    const-string v0, "BluetoothEnabler"

    const-string v1, "Bluetooth is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.admin.intent.ALLOW_BT_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    return-void

    .line 86
    .restart local p2
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->checkBTPolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/htc/widget/HtcToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    return-object v0
.end method

.method private checkBTPolicy()V
    .locals 6

    .prologue
    const v5, 0x7f0c05f1

    const/4 v4, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 204
    .local v0, devPolicyMgr:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowBTStatus(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_2

    .line 205
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 206
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 207
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 211
    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v1

    .line 214
    .local v1, dm:Landroid/os/IDeviceManager3LM;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getBluetoothEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 216
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f0c05f1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v2

    .line 225
    .end local v1           #dm:Landroid/os/IDeviceManager3LM;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c090d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 180
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c07d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c07da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 185
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0c090e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 196
    :cond_1
    invoke-virtual {p1, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->checkBTPolicy()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/view/View;)V
    .locals 7
    .parameter "switchHeader"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 122
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHeader:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 139
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHeader:Landroid/view/View;

    .line 124
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHeader:Landroid/view/View;

    const v6, 0x7f080110

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcToggleButton;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 126
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 128
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitchHeader:Landroid/view/View;

    const v6, 0x1020010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSummary:Landroid/widget/TextView;

    .line 131
    const/16 v0, 0xa

    .line 132
    .local v0, bluetoothState:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 133
    :cond_1
    const/16 v3, 0xc

    if-ne v0, v3, :cond_4

    move v2, v4

    .line 134
    .local v2, isOn:Z
    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    move v1, v4

    .line 135
    .local v1, isOff:Z
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 136
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->checkBTPolicy()V

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_4
    move v2, v5

    .line 133
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_5
    move v1, v5

    .line 134
    goto :goto_2
.end method
