.class public Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;
.super Lcom/htc/HtcNaviPanel/settings/HtcBluetoothConnector;
.source "HtcBluetoothHeadsetConnector.java"

# interfaces
.implements Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcBluetoothHeadsetConnector"


# instance fields
.field private mConnectionLoop:Landroid/os/Handler;

.field private mConnectionRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mElapsedRealtime:J

.field private mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

.field private mReceiver:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

.field private mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothConnector;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    .line 218
    new-instance v1, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;

    invoke-direct {v1, p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector$1;-><init>(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)V

    iput-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionRunnable:Ljava/lang/Runnable;

    .line 51
    if-nez p1, :cond_0

    .line 52
    const-string v0, "The context can not be null."

    .line 53
    .local v0, error:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mElapsedRealtime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    return-object v0
.end method

.method private doConnection()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->toBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    .line 107
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 111
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;->unregisterReceiver()V

    goto :goto_0
.end method

.method private getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "currentHeadset"

    .prologue
    const/4 v4, 0x0

    .line 260
    if-nez p1, :cond_0

    move v3, v4

    .line 276
    :goto_0
    return v3

    .line 263
    :cond_0
    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 266
    .local v0, currentPriority:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 269
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    iget-object v5, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v3}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 271
    .local v2, listPriority:I
    const-string v3, "HtcBluetoothHeadsetConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", list ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-le v2, v0, :cond_1

    move v3, v4

    .line 273
    goto :goto_0

    .line 276
    .end local v2           #listPriority:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showDialogIfDeviceExist()V
    .locals 5

    .prologue
    .line 149
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "bluetooth_type"

    sget-object v3, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->DISCONNECT:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    const-string v2, "bluetooth_title"

    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v2, "bluetooth_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method private showDialogIfNoDevice()V
    .locals 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    const-class v3, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "bluetooth_type"

    sget-object v3, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    const-string v2, "bluetooth_title"

    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "bluetooth_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method


# virtual methods
.method public connectToUserDefaultHeadset(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceAddress"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const-string v0, "The deviceAddress can not be null."

    .line 67
    .local v0, error:Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mDeviceAddress:Ljava/lang/String;

    .line 74
    new-instance v2, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

    iget-object v3, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

    .line 75
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

    invoke-virtual {v2, p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;->setOnBluetoothOnOffListener(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;)V

    .line 76
    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

    invoke-virtual {v2}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;->registerReceiver()V

    .line 79
    invoke-static {}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->turnOnBluetooth()Z

    move-result v1

    .line 82
    .local v1, status:Z
    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->doConnection()V

    .line 85
    :cond_1
    return-void
.end method

.method public doBluetoothConnect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 181
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 200
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->isDefaultConnectDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 189
    .local v0, result:Z
    const-string v1, "HtcBluetoothHeadsetConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDefaultConnectDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mElapsedRealtime:J

    .line 199
    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public doBluetoothDisconnect()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mElapsedRealtime:J

    .line 210
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionLoop:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onBluetoothOnOffChanged(Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 91
    iget v0, p1, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver$EventParams;->state:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->doConnection()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget v0, p1, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver$EventParams;->state:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 94
    invoke-static {}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->turnOnBluetooth()Z

    goto :goto_0
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 281
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    iput-object p2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    .line 283
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    .line 285
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mCurrentHeadset:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    .line 286
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->showDialogIfNoDevice()V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mUserDefaultDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->showDialogIfDeviceExist()V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 307
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothHeadsetConnector;->mReceiver:Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/htc/HtcNaviPanel/settings/HtcBluetoothOnOffReceiver;->unregisterReceiver()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :goto_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    goto :goto_0
.end method
