.class public Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;
.super Lcom/htc/dockmode/preference/HtcProgressListPreference;
.source "HtcPairedDeskBluetoothDevicesListPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;


# static fields
.field private static final DESK_BLUETOOTH_ADDRESS:Ljava/lang/String; = "desk_bluetooth_address"

.field private static final DESK_BLUETOOTH_NAME:Ljava/lang/String; = "desk_bluetooth_name"

.field public static final KEY:Ljava/lang/String; = "DESK_PAIRED_DEVICES_LIST"


# instance fields
.field private mPairedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousBluetoothEnabledStatus:Z

.field private mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

.field private mReceiverRegistered:Z

.field private mUpdateLock:Ljava/lang/Object;

.field private mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcProgressListPreference;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiverRegistered:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    .line 41
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdated:Z

    .line 50
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->initialize()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/htc/dockmode/preference/HtcProgressListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiverRegistered:Z

    .line 35
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    .line 41
    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdated:Z

    .line 59
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->initialize()V

    .line 60
    return-void
.end method

.method private declared-synchronized fillEntriesAndEntrtValues()V
    .locals 8

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 137
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 140
    .local v4, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    new-instance v1, Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v6}, Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 142
    .local v1, deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    iget-object v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    .end local v4           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 146
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v4       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 147
    .local v2, entries:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 149
    .local v5, values:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 150
    iget-object v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;

    .line 151
    .restart local v1       #deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    invoke-virtual {v1}, Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 152
    invoke-virtual {v1}, Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v1           #deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 157
    array-length v6, v2

    if-lez v6, :cond_3

    .line 158
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setEnabled(Z)V

    .line 164
    :goto_2
    iget-object v7, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    iget-boolean v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdated:Z

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 166
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdated:Z

    .line 167
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setDefaultSummaryAndValue()V

    .line 169
    :cond_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->unregisterBluetoothOnOffReceiver()V

    .line 172
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setProgressBarVisibility(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 160
    :cond_3
    const v6, 0x7f080047

    :try_start_4
    invoke-virtual {p0, v6}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setTitle(I)V

    .line 161
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setShouldDisableView(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 169
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static getDefaultPairedBluetoothDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static getDefaultPairedBluetoothDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    const v2, 0x7f080046

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "DESK_PAIRED_DEVICES_LIST"

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setKey(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setTitle(I)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setDialogTitle(I)V

    .line 69
    invoke-virtual {p0, p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setPersistent(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->updatePairedBluetoothDevicesList()V

    .line 73
    return-void
.end method

.method private setDefaultSummaryAndValue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 199
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v5, "desk_bluetooth_name"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, name:Ljava/lang/String;
    const-string v5, "desk_bluetooth_address"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, address:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 204
    iget-object v5, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;

    .line 207
    .local v2, deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    invoke-virtual {v2}, Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 208
    invoke-virtual {p0, v4}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setValue(Ljava/lang/String;)V

    .line 217
    .end local v2           #deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    :goto_1
    return-void

    .line 203
    .restart local v2       #deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v2           #deviceInfo:Lcom/htc/dockmode/bluetooth/BluetoothDeviceInfo;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0, v6}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/htc/dockmode/preference/HtcProgressListPreference;->onAttachedToActivity()V

    .line 80
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mUpdated:Z

    .line 87
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setDefaultSummaryAndValue()V

    .line 89
    :cond_0
    monitor-exit v2

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBluetoothOnOffChanged(Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 124
    iget v0, p1, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$EventParams;->state:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->fillEntriesAndEntrtValues()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setProgressBarVisibility(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 224
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setValue(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 227
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "desk_bluetooth_name"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 231
    const-string v3, "desk_bluetooth_address"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    const/4 v3, 0x1

    return v3
.end method

.method public unregisterBluetoothOnOffReceiver()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->unregisterReceiver()V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiverRegistered:Z

    .line 184
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    if-nez v0, :cond_0

    .line 185
    const/16 v0, 0x19

    const/16 v2, 0xc8

    invoke-static {v0, v2}, Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector;->turnOffBluetoothMonitor(II)V

    .line 187
    :cond_0
    monitor-exit v1

    .line 189
    :cond_1
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePairedBluetoothDevicesList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-virtual {p0, v2}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->setProgressBarVisibility(Z)V

    .line 100
    new-instance v0, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    .line 101
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0, p0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->setOnBluetoothOnOffListener(Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;)V

    .line 102
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiver:Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/htc/dockmode/bluetooth/HtcBluetoothOnOffReceiver;->registerReceiver()V

    .line 104
    iput-boolean v2, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mReceiverRegistered:Z

    .line 109
    :cond_0
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/htc/dockmode/bluetooth/HtcBluetoothConnector;->turnOnBluetooth(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    .line 111
    iget-boolean v0, p0, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcPairedDeskBluetoothDevicesListPreference;->fillEntriesAndEntrtValues()V

    .line 119
    :cond_1
    return-void
.end method
