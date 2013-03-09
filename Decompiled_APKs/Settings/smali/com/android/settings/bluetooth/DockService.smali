.class public Lcom/android/settings/bluetooth/DockService;
.super Landroid/app/Service;
.source "DockService.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_CONNECT_RETRY:I = 0x6

.field private static final SHARED_PREFERENCES_KEY_CONNECT_RETRY_COUNT:Ljava/lang/String; = "connect_retry_count"

.field private static final SHARED_PREFERENCES_KEY_DISABLE_BT_WHEN_UNDOCKED:Ljava/lang/String; = "disable_bt_when_undock"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "dock_settings"

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field private static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DockService"


# instance fields
.field private mA2dpState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private mDockState:I

.field private mHeadsetState:I

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    .line 209
    new-instance v0, Lcom/android/settings/bluetooth/DockService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DockService$2;-><init>(Lcom/android/settings/bluetooth/DockService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DockService;->onProfileManagerReady(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/bluetooth/DockService;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/DockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/bluetooth/DockService;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DockService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->handleAutoConnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/DockService;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/DockService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->getSettingBool(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/DockService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/DockService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->checkDockEventComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/DockService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/bluetooth/DockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/settings/bluetooth/DockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    return p1
.end method

.method private checkDockEventComplete()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 372
    const/4 v1, 0x0

    .line 374
    .local v1, completed:Z
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 376
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    if-ne v2, v4, :cond_2

    .line 377
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    .line 378
    const/4 v1, 0x1

    .line 409
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 410
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    invoke-static {p0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->saveDockState(Landroid/content/Context;I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->stopSelf()V

    .line 414
    :cond_1
    return v1

    .line 379
    :cond_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 381
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    if-nez v2, :cond_3

    .line 382
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 384
    :cond_3
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 389
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_4
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 391
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    if-nez v2, :cond_6

    .line 392
    const-string v2, "disable_bt_when_undock"

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getSettingBool(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 393
    const-string v2, "disable_bt_when_undock"

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DockService;->removeSetting(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->disable()Z

    .line 396
    :cond_5
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    .line 397
    const/4 v1, 0x1

    goto :goto_0

    .line 399
    :cond_6
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 400
    .restart local v0       #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    if-ne v2, v4, :cond_7

    .line 401
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 403
    :cond_7
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    if-ne v2, v4, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 4
    .parameter "device"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 292
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 295
    :cond_0
    return-object v0
.end method

.method private getSettingBool(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 299
    const-string v1, "dock_settings"

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getSettingInt(Ljava/lang/String;I)I
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 305
    const-string v1, "dock_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private handleAutoConnect()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 361
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 364
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 365
    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    if-nez v1, :cond_2

    iput v2, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    .line 366
    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    if-nez v1, :cond_0

    iput v2, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    goto :goto_0
.end method

.method private handleDockEvent(Z)V
    .locals 6
    .parameter "dockevent"

    .prologue
    const/16 v3, 0xd

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 333
    if-eqz p1, :cond_1

    const/16 v2, 0xb

    :goto_0
    iput v2, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    .line 334
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->checkDockEventComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 333
    goto :goto_0

    .line 338
    :cond_2
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mDockState:I

    invoke-static {p0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->saveDockState(Landroid/content/Context;I)V

    .line 340
    if-eqz p1, :cond_5

    .line 341
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 343
    .local v0, btState:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    if-ne v0, v3, :cond_4

    .line 345
    :cond_3
    const-string v2, "disable_bt_when_undock"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/bluetooth/DockService;->setSettingBool(Ljava/lang/String;Z)V

    .line 347
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_1

    .line 348
    :cond_4
    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DockService;->handleAutoConnect()V

    goto :goto_1

    .line 352
    .end local v0           #btState:I
    :cond_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DockService;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 353
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 354
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    if-ne v2, v4, :cond_6

    iput v5, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    .line 355
    :cond_6
    iget v2, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    if-ne v2, v4, :cond_0

    iput v5, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    goto :goto_1
.end method

.method private onProfileManagerReady(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .parameter "device"
    .parameter "state"

    .prologue
    .line 178
    const-string v2, "DockService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProfileManagerReady: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settings/bluetooth/HeadsetProfile;

    move-result-object v1

    .line 181
    .local v1, headset:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/DockService;->mHeadsetState:I

    .line 182
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v0

    .line 183
    .local v0, a2dp:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/DockService;->mA2dpState:I

    .line 186
    packed-switch p2, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DockService;->handleDockEvent(Z)V

    goto :goto_0

    .line 192
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DockService;->handleDockEvent(Z)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private removeSetting(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 325
    const-string v2, "dock_settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 327
    .local v1, sharedPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 330
    return-void
.end method

.method private setSettingBool(Ljava/lang/String;Z)V
    .locals 3
    .parameter "key"
    .parameter "bool"

    .prologue
    .line 311
    const-string v1, "dock_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 315
    return-void
.end method

.method private setSettingInt(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 318
    const-string v1, "dock_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/DockService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 77
    .local v1, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_0

    .line 78
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 83
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 84
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 85
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_1

    .line 86
    const-string v2, "DockService"

    const-string v3, "Can\'t get LocalBluetoothProfileManager: exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/bluetooth/DockService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/bluetooth/DockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 107
    :cond_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 108
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 109
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 110
    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x2

    .line 122
    if-nez p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->stopSelf()V

    .line 174
    :cond_0
    :goto_0
    return v6

    .line 131
    :cond_1
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 132
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/16 v5, -0x4d2

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 134
    .local v3, state:I
    if-nez v1, :cond_2

    .line 135
    const-string v4, "DockService"

    const-string v5, "device is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DockService;->stopSelf()V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    :cond_3
    iput-object v1, p0, Lcom/android/settings/bluetooth/DockService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 148
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 149
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->isManagerReady()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 150
    const-string v4, "DockService"

    const-string v5, "mProfileManager.isManagerReady"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, v1, v3}, Lcom/android/settings/bluetooth/DockService;->onProfileManagerReady(Landroid/bluetooth/BluetoothDevice;I)V

    .line 153
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 165
    :goto_1
    if-nez v3, :cond_0

    .line 166
    const-string v4, "DockService"

    const-string v5, "undocked, remove profile listener & mRunnable!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    .line 168
    iget-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    goto :goto_0

    .line 155
    :cond_4
    const-string v4, "DockService"

    const-string v5, "fuck! profile not ready."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object v0, v1

    .line 157
    .local v0, d:Landroid/bluetooth/BluetoothDevice;
    move v2, v3

    .line 158
    .local v2, dockstate:I
    new-instance v4, Lcom/android/settings/bluetooth/DockService$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/settings/bluetooth/DockService$1;-><init>(Lcom/android/settings/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;I)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DockService;->mRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method
