.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_UI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiEnabler"


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsWifiDisable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegister:Z

.field private mSsid:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mStateMachineEvent:Z

.field private mSummary:Landroid/widget/TextView;

.field private mSwitch:Lcom/htc/widget/HtcToggleButton;

.field private mSwitchHeader:Landroid/view/View;

.field private mUpdateHandler:Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "switchHeader"

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    .line 81
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    .line 143
    instance-of v0, p2, Lcom/htc/widget/HtcToggleButton;

    if-eqz v0, :cond_1

    .line 144
    check-cast p2, Lcom/htc/widget/HtcToggleButton;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 150
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.app.admin.intent.ALLOW_WIFI_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mUpdateHandler:Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;-><init>(Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/wifi/WifiEnabler$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mUpdateHandler:Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;

    .line 162
    :cond_0
    return-void

    .line 146
    .restart local p2
    :cond_1
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiPolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleIPTStateChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiEnabler;)Lcom/htc/widget/HtcToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    return-object v0
.end method

.method private checkWifiPolicy()V
    .locals 7

    .prologue
    const v6, 0x7f0c05f1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 325
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 327
    .local v0, devPolicyMgr:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifiStatus(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_1

    .line 328
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 329
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 330
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->support3LM()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v1

    .line 339
    .local v1, dm:Landroid/os/IDeviceManager3LM;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getWifiState()I

    move-result v2

    if-nez v2, :cond_2

    .line 340
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 341
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 342
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f0c05f1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 351
    .end local v1           #dm:Landroid/os/IDeviceManager3LM;
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    .line 352
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 353
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->updateWifiState()V

    goto :goto_0
.end method

.method public static getCwStatus(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "ssid"
    .parameter "cwState"

    .prologue
    .line 359
    packed-switch p2, :pswitch_data_0

    .line 372
    :pswitch_0
    const v1, 0x7f0c055d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, resText:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 361
    .end local v0           #resText:Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f0c0562

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    .restart local v0       #resText:Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v0           #resText:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f0c0561

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0       #resText:Ljava/lang/String;
    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleIPTStateChanged(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 314
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive USBNET connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c0613

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->updateWifiState()V

    goto :goto_0
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 293
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 295
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSsid:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v3, 0x104039f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 304
    .end local v0           #info:Landroid/net/wifi/WifiInfo;
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local v0       #info:Landroid/net/wifi/WifiInfo;
    .restart local v1       #str:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mIsWifiDisable:Z

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 245
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 270
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c090d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 247
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c090b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0c090c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 261
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 266
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 283
    :cond_0
    return-void
.end method

.method private updateWifiState()V
    .locals 2

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 309
    .local v0, wifiState:I
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 311
    .end local v0           #wifiState:I
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/htc/widget/HtcToggleButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const v5, 0x7f0c090d

    const/4 v4, 0x0

    .line 207
    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 212
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0c090e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 215
    invoke-virtual {p1, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 221
    .local v1, wifiApState:I
    if-eqz p2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    if-eqz p2, :cond_4

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.showme.LOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "callingApp"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "actionCoverage"

    const-string v3, "topic_tag-connections_internet-wifi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p1, v4}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    goto :goto_0

    .line 236
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 238
    invoke-virtual {p1, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mUpdateHandler:Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;->removeMessages(I)V

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 182
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mRegister:Z

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mUpdateHandler:Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    return-void
.end method

.method public setSwitch(Landroid/view/View;)V
    .locals 7
    .parameter "switchHeader"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 185
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    .line 187
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 188
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    const v6, 0x7f080110

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcToggleButton;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    .line 189
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcToggleButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcToggleButton$OnCheckedChangeListener;)V

    .line 190
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButton;->setClickable(Z)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchHeader:Landroid/view/View;

    const v6, 0x1020010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSummary:Landroid/widget/TextView;

    .line 194
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 195
    .local v2, wifiState:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v1, v4

    .line 196
    .local v1, isEnabled:Z
    :goto_1
    if-ne v2, v4, :cond_4

    move v0, v4

    .line 197
    .local v0, isDisabled:Z
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 201
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mUpdateHandler:Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings/wifi/WifiEnabler$UpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_3
    move v1, v5

    .line 195
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_4
    move v0, v5

    .line 196
    goto :goto_2
.end method
