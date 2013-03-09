.class public Lcom/htc/HtcNaviPanel/CarDockService;
.super Landroid/app/Service;
.source "CarDockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/HtcNaviPanel/CarDockService$CarDockType;
    }
.end annotation


# static fields
.field public static final CARDOCK_ACTION:Ljava/lang/String; = "com.htc.HtcNaviPanel.cardock_action"

.field public static final CARDOCK_TYPE:Ljava/lang/String; = "cardock_type"

.field private static final TAG:Ljava/lang/String; = "CarDockService"

.field private static final localLOGV:Z = true


# instance fields
.field protected mBTStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothA2dpState:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothPbapState:I

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

.field private mIgnoreStop:Z

.field private mInit:Z

.field private mInitEnabled:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInitEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInit:Z

    .line 31
    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mIgnoreStop:Z

    .line 34
    iput v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothHeadsetState:I

    .line 35
    iput v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothA2dpState:I

    .line 36
    iput v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothPbapState:I

    .line 37
    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothEnabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothConnected:Z

    .line 49
    new-instance v0, Lcom/htc/HtcNaviPanel/CarDockService$1;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/CarDockService$1;-><init>(Lcom/htc/HtcNaviPanel/CarDockService;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/htc/HtcNaviPanel/CarDockService$2;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/CarDockService$2;-><init>(Lcom/htc/HtcNaviPanel/CarDockService;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v0, Lcom/htc/HtcNaviPanel/CarDockService$3;

    invoke-direct {v0, p0}, Lcom/htc/HtcNaviPanel/CarDockService$3;-><init>(Lcom/htc/HtcNaviPanel/CarDockService;)V

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/HtcNaviPanel/CarDockService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mIgnoreStop:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mIgnoreStop:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/HtcNaviPanel/CarDockService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/CarDockService;->unregisteReceiver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/HtcNaviPanel/CarDockService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothConnected:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/HtcNaviPanel/CarDockService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/CarDockService;->stopBluetoothByState()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/HtcNaviPanel/CarDockService;)Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/HtcNaviPanel/CarDockService;Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    return-object p1
.end method

.method static synthetic access$402(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInit:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/HtcNaviPanel/CarDockService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/HtcNaviPanel/CarDockService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/HtcNaviPanel/CarDockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/HtcNaviPanel/CarDockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothHeadsetState:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/HtcNaviPanel/CarDockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothHeadsetState:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/HtcNaviPanel/CarDockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothA2dpState:I

    return v0
.end method

.method static synthetic access$802(Lcom/htc/HtcNaviPanel/CarDockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothA2dpState:I

    return p1
.end method

.method static synthetic access$900(Lcom/htc/HtcNaviPanel/CarDockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothPbapState:I

    return v0
.end method

.method static synthetic access$902(Lcom/htc/HtcNaviPanel/CarDockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothPbapState:I

    return p1
.end method

.method private registeReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-boolean v2, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInit:Z

    if-eqz v2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.HtcNaviPanel.cardock_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/htc/HtcNaviPanel/CarDockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v1, filterB:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/HtcNaviPanel/CarDockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopBluetoothByState()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInitEnabled:Z

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-boolean v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothConnected:Z

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private unregisteReceiver()V
    .locals 3

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/CarDockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/HtcNaviPanel/CarDockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_1
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CarDockService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 133
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "CarDockService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v6, 0x1

    .line 72
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/CarDockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 74
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/DockUtils;->getAutoLaunchCarDock(Landroid/content/ContentResolver;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/htc/HtcNaviPanel/CarDockService;->stopSelf()V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-boolean v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInit:Z

    if-eqz v5, :cond_2

    .line 80
    iput-boolean v6, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mIgnoreStop:Z

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/CarDockService;->registeReceiver()V

    .line 85
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    iget-boolean v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInit:Z

    if-nez v5, :cond_3

    .line 87
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInitEnabled:Z

    .line 88
    iput-boolean v6, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mInit:Z

    .line 91
    :cond_3
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 92
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 94
    .local v3, isPairedDevice:Z
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/DockUtils;->getAutoConnectBuletooth(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 95
    .local v0, autoConnectStatus:Z
    invoke-static {v1}, Lcom/htc/HtcNaviPanel/DockUtils;->getDefaultPairedBluetoothDeviceAddress(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, deviceAddress:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 97
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    if-eqz v5, :cond_4

    .line 98
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    invoke-virtual {v5}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->release()V

    .line 99
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    .line 101
    :cond_4
    new-instance v5, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    invoke-direct {v5, p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    .line 102
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/CarDockService;->mHeadsetConnector:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;

    invoke-virtual {v5, v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->connectToUserDefaultHeadset(Ljava/lang/String;)V

    goto :goto_0
.end method
