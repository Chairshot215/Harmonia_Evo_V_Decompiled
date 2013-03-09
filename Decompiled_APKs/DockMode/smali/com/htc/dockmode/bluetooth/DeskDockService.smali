.class public Lcom/htc/dockmode/bluetooth/DeskDockService;
.super Landroid/app/Service;
.source "DeskDockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dockmode/bluetooth/DeskDockService$DeskDockType;
    }
.end annotation


# static fields
.field public static final DESKDOCK_ACTION:Ljava/lang/String; = "com.htc.HtcNaviPanel.deskdock_action"

.field public static final DESKDOCK_TYPE:Ljava/lang/String; = "deskdock_type"

.field private static final TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field protected mBTStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothA2dpState:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

.field private mInit:Z

.field private mInitEnabled:Z

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/dockmode/bluetooth/DeskDockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/dockmode/bluetooth/DeskDockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInitEnabled:Z

    .line 30
    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInit:Z

    .line 33
    iput v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothHeadsetState:I

    .line 34
    iput v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothA2dpState:I

    .line 35
    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothEnabled:Z

    .line 36
    iput-boolean v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothConnected:Z

    .line 48
    new-instance v0, Lcom/htc/dockmode/bluetooth/DeskDockService$1;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/DeskDockService$1;-><init>(Lcom/htc/dockmode/bluetooth/DeskDockService;)V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/htc/dockmode/bluetooth/DeskDockService$2;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/DeskDockService$2;-><init>(Lcom/htc/dockmode/bluetooth/DeskDockService;)V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Lcom/htc/dockmode/bluetooth/DeskDockService$3;

    invoke-direct {v0, p0}, Lcom/htc/dockmode/bluetooth/DeskDockService$3;-><init>(Lcom/htc/dockmode/bluetooth/DeskDockService;)V

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/bluetooth/DeskDockService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->unregisteReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/dockmode/bluetooth/DeskDockService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->stopBluetoothByState()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/dockmode/bluetooth/DeskDockService;)Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/dockmode/bluetooth/DeskDockService;Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/dockmode/bluetooth/DeskDockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/dockmode/bluetooth/DeskDockService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/dockmode/bluetooth/DeskDockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/dockmode/bluetooth/DeskDockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothHeadsetState:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/dockmode/bluetooth/DeskDockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothHeadsetState:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/dockmode/bluetooth/DeskDockService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothA2dpState:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/dockmode/bluetooth/DeskDockService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothA2dpState:I

    return p1
.end method

.method static synthetic access$802(Lcom/htc/dockmode/bluetooth/DeskDockService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothConnected:Z

    return p1
.end method

.method private registeReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-boolean v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInit:Z

    if-eqz v2, :cond_0

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.HtcNaviPanel.deskdock_action"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/htc/dockmode/bluetooth/DeskDockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v1, filterB:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/htc/dockmode/bluetooth/DeskDockService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopBluetoothByState()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInitEnabled:Z

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-boolean v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothConnected:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private unregisteReceiver()V
    .locals 1

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBTStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    :goto_1
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 68
    invoke-virtual {p0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 69
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/DockUtils;->getAutoConnectBuletooth(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 70
    .local v0, autoConnectStatus:Z
    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->stopSelf()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/DeskDockService;->registeReceiver()V

    .line 76
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    iget-boolean v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInit:Z

    if-nez v5, :cond_2

    .line 78
    iget-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInitEnabled:Z

    .line 79
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mInit:Z

    .line 82
    :cond_2
    iget-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->listBondedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 84
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 86
    .local v3, isPairedDevice:Z
    invoke-static {v1}, Lcom/htc/dockmode/bluetooth/DockUtils;->getDefaultPairedBluetoothDeviceAddress(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, deviceAddress:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 89
    iget-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    if-eqz v5, :cond_3

    .line 90
    iget-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-virtual {v5}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->release()V

    .line 91
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    .line 93
    :cond_3
    new-instance v5, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-direct {v5, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    .line 94
    iget-object v5, p0, Lcom/htc/dockmode/bluetooth/DeskDockService;->mHeadsetConnector:Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;

    invoke-virtual {v5, v2}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->connectToUserDefaultHeadset(Ljava/lang/String;)V

    goto :goto_0
.end method
