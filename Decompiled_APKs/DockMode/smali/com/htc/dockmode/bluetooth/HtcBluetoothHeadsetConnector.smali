.class public Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;
.super Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector;
.source "HtcBluetoothHeadsetConnector.java"

# interfaces
.implements Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcBluetoothHeadsetConnector"

.field private static final localLOGV:Z


# instance fields
.field private mA2dpElapsedRealtime:J

.field private mA2dpLoopRunnable:Ljava/lang/Runnable;

.field private mA2dpRunnable:Ljava/lang/Runnable;

.field private mA2dpService:Landroid/bluetooth/BluetoothA2dp;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothOn:Z

.field private mConnectionLoop:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mHeadsetElapsedRealtime:J

.field private mHeadsetLoopRunnable:Ljava/lang/Runnable;

.field private mHeadsetRunnable:Ljava/lang/Runnable;

.field private mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

.field private mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

.field private mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    .line 129
    new-instance v1, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$1;-><init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 141
    new-instance v1, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$2;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$2;-><init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 296
    new-instance v1, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$3;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$3;-><init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpRunnable:Ljava/lang/Runnable;

    .line 314
    new-instance v1, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$4;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$4;-><init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetRunnable:Ljava/lang/Runnable;

    .line 343
    new-instance v1, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$5;-><init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpLoopRunnable:Ljava/lang/Runnable;

    .line 356
    new-instance v1, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;

    invoke-direct {v1, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector$6;-><init>(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetLoopRunnable:Ljava/lang/Runnable;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, "The context can not be null."

    .line 55
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpElapsedRealtime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpElapsedRealtime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpLoopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetElapsedRealtime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetElapsedRealtime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetLoopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private doConnection()V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->toBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    .line 109
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 111
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mBluetoothHeadsetServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->unregisterReceiver()V

    goto :goto_0
.end method

.method private isDefaultConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "currentHeadset"

    .prologue
    const/4 v4, 0x0

    .line 373
    if-nez p1, :cond_0

    move v3, v4

    .line 391
    :goto_0
    return v3

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 379
    .local v0, currentPriority:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 382
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    iget-object v5, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 387
    .local v2, listPriority:I
    if-le v2, v0, :cond_1

    move v3, v4

    .line 388
    goto :goto_0

    .line 391
    .end local v2           #listPriority:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showDialogIfDeviceExist()V
    .locals 5

    .prologue
    .line 225
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "bluetooth_type"

    sget-object v3, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->DISCONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 236
    const-string v2, "bluetooth_title"

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v2, "bluetooth_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private showDialogIfNoDevice()V
    .locals 5

    .prologue
    .line 205
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "bluetooth_type"

    sget-object v3, Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/dockmode/bluetooth/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 212
    const-string v2, "bluetooth_title"

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "bluetooth_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method


# virtual methods
.method public connectToUserDefaultHeadset(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceAddress"

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string v0, "The deviceAddress can not be null."

    .line 70
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mDeviceAddress:Ljava/lang/String;

    .line 77
    new-instance v1, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    .line 78
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {v1, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->setOnBluetoothOnOffListener(Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;)V

    .line 79
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->registerReceiver()V

    .line 82
    invoke-static {}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->turnOnBluetooth()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mBluetoothOn:Z

    .line 85
    iget-boolean v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mBluetoothOn:Z

    if-eqz v1, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->doConnection()V

    .line 88
    :cond_1
    return-void
.end method

.method public doBluetoothConnect()V
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 252
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->isDefaultConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 262
    .local v0, result:Z
    if-nez v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 270
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetElapsedRealtime:J

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpElapsedRealtime:J

    .line 273
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public doBluetoothDisconnect()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 283
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetElapsedRealtime:J

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpElapsedRealtime:J

    .line 287
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    return-void
.end method

.method public headsetOnServiceConnected()V
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 169
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    .line 170
    const/4 v1, 0x1

    .line 172
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->showDialogIfDeviceExist()V

    goto :goto_0

    .line 184
    :cond_2
    iget-boolean v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mBluetoothOn:Z

    if-eqz v2, :cond_0

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetElapsedRealtime:J

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpElapsedRealtime:J

    .line 187
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public headsetOnServiceDisconnected()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onBluetoothOnOffChanged(Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 94
    iget v0, p1, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;->state:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->doConnection()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v0, p1, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;->state:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 97
    invoke-static {}, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->turnOnBluetooth()Z

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 158
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/bluetooth/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->unregisterReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method
