.class final Lcom/android/settings/bluetooth/HeadsetProfile;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/HeadsetProfile$1;,
        Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "HEADSET"

.field private static final ORDINAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HeadsetProfile"

.field static final UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private final mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "profileManager"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 99
    iput-object p3, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 100
    iput-object p4, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settings/bluetooth/HeadsetProfile;Lcom/android/settings/bluetooth/HeadsetProfile$1;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/bluetooth/HeadsetProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/HeadsetProfile;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 114
    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 115
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 117
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 120
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1, v3}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 132
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return v2

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 195
    const v0, 0x7f020059

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 177
    const v0, 0x7f0c08dc

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 182
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 190
    :pswitch_0
    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 184
    :pswitch_1
    const v1, 0x7f0c08f4

    goto :goto_0

    .line 187
    :pswitch_2
    const v1, 0x7f0c08ed

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isProfileReady()Z
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mProfileReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 155
    if-eqz p2, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "HEADSET"

    return-object v0
.end method
