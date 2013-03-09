.class public final Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;
    }
.end annotation


# static fields
.field private static final SCAN_EXPIRATION_MS:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothAdapter"

.field private static sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;)V
    .locals 1
    .parameter "adapter"
    .parameter "context"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 62
    iput-object p2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 4
    .parameter "context"

    .prologue
    .line 76
    const-class v2, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 77
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 78
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 83
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    sget-object v1, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method cancelDiscovery()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 102
    return-void
.end method

.method disable()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 208
    iget v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, btname:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 130
    :goto_0
    return-object v1

    .line 128
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 115
    return-void
.end method

.method getScanMode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method isDiscovering()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 234
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 238
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 239
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 250
    :goto_2
    return-void

    .line 234
    .end local v0           #success:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 239
    .restart local v0       #success:Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method declared-synchronized setBluetoothStateInt(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 214
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDiscoverableTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 155
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 161
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    monitor-enter v3

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;

    .line 163
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;->onDeviceNameChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    return-void
.end method

.method setProfileManager(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 67
    return-void
.end method

.method setScanMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 170
    return-void
.end method

.method setScanMode(II)Z
    .locals 1
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method startScanning(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    if-nez p1, :cond_2

    .line 182
    iget-wide v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings/bluetooth/A2dpProfile;

    move-result-object v0

    .line 188
    .local v0, a2dp:Lcom/android/settings/bluetooth/A2dpProfile;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    .end local v0           #a2dp:Lcom/android/settings/bluetooth/A2dpProfile;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    goto :goto_0
.end method

.method stopScanning()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 203
    :cond_0
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 226
    .local v0, currentState:I
    iget v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 228
    const/4 v1, 0x1

    .line 230
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
