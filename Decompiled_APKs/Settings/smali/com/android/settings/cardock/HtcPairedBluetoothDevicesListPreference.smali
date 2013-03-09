.class public Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;
.super Lcom/android/settings/cardock/HtcProgressListPreference;
.source "HtcPairedBluetoothDevicesListPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;
.implements Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;


# static fields
.field private static final BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field public static final KEY:Ljava/lang/String; = "PAIRED_DEVICES_LIST"


# instance fields
.field private mPairedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cardock/BluetoothDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousBluetoothEnabledStatus:Z

.field private mReceiver:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

.field private mUpdateLock:Ljava/lang/Object;

.field private mUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/cardock/HtcProgressListPreference;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    .line 42
    iput-boolean v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdated:Z

    .line 52
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->initialize()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/cardock/HtcProgressListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    .line 42
    iput-boolean v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdated:Z

    .line 61
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->initialize()V

    .line 62
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

    iput-object v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

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
    new-instance v1, Lcom/android/settings/cardock/BluetoothDeviceInfo;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v6}, Lcom/android/settings/cardock/BluetoothDeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 142
    .local v1, deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
    iget-object v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
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
    iget-object v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 147
    .local v2, entries:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 149
    .local v5, values:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 150
    iget-object v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/cardock/BluetoothDeviceInfo;

    .line 151
    .restart local v1       #deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
    invoke-virtual {v1}, Lcom/android/settings/cardock/BluetoothDeviceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 152
    invoke-virtual {v1}, Lcom/android/settings/cardock/BluetoothDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v1           #deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 157
    array-length v6, v2

    if-lez v6, :cond_3

    .line 158
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setEnabled(Z)V

    .line 164
    :goto_2
    iget-object v7, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    iget-boolean v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdated:Z

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 166
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdated:Z

    .line 167
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setDefaultSummaryAndValue()V

    .line 169
    :cond_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->unregisterBluetoothOnOffReceiver()V

    .line 172
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setProgressBarVisibility(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 160
    :cond_3
    const v6, 0x7f0c04f2

    :try_start_4
    invoke-virtual {p0, v6}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setTitle(I)V

    .line 161
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setShouldDisableView(Z)V
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
    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static getDefaultPairedBluetoothDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method private initialize()V
    .locals 3

    .prologue
    const v2, 0x7f0c04f1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    const-string v0, "PAIRED_DEVICES_LIST"

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setKey(Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setTitle(I)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setDialogTitle(I)V

    .line 71
    invoke-virtual {p0, p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setPersistent(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->updatePairedBluetoothDevicesList()V

    .line 75
    return-void
.end method

.method private setDefaultSummaryAndValue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v5, "bluetooth_name"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, name:Ljava/lang/String;
    const-string v5, "bluetooth_address"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, address:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cardock/BluetoothDeviceInfo;

    .line 211
    .local v2, deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
    invoke-virtual {v2}, Lcom/android/settings/cardock/BluetoothDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    invoke-virtual {p0, v4}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setValue(Ljava/lang/String;)V

    .line 221
    .end local v2           #deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
    :goto_1
    return-void

    .line 207
    .restart local v2       #deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v2           #deviceInfo:Lcom/android/settings/cardock/BluetoothDeviceInfo;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p0, v6}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToActivity()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/cardock/HtcProgressListPreference;->onAttachedToActivity()V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdated:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPairedDevices:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mUpdated:Z

    .line 89
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setDefaultSummaryAndValue()V

    .line 91
    :cond_0
    monitor-exit v2

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBluetoothOnOffChanged(Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 124
    iget v0, p1, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$EventParams;->state:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->fillEntriesAndEntrtValues()V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setProgressBarVisibility(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 228
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 234
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "bluetooth_name"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    const-string v3, "bluetooth_address"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    const/4 v3, 0x1

    return v3
.end method

.method public unregisterBluetoothOnOffReceiver()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mReceiver:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mReceiver:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mReceiver:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;->unregisterReceiver()V

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    if-nez v0, :cond_0

    .line 187
    const/16 v0, 0x19

    const/16 v2, 0xc8

    invoke-static {v0, v2}, Lcom/android/settings/cardock/HtcBluetoothConnector;->turnOffBluetoothMonitor(II)V

    .line 189
    :cond_0
    monitor-exit v1

    .line 191
    :cond_1
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePairedBluetoothDevicesList()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->setProgressBarVisibility(Z)V

    .line 103
    new-instance v0, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mReceiver:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

    .line 104
    iget-object v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mReceiver:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0, p0}, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;->setOnBluetoothOnOffListener(Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver$OnBluetoothOnOffChangedListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mReceiver:Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;

    invoke-virtual {v0}, Lcom/android/settings/cardock/HtcBluetoothOnOffReceiver;->registerReceiver()V

    .line 108
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Lcom/android/settings/cardock/HtcBluetoothConnector;->turnOnBluetooth(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->mPreviousBluetoothEnabledStatus:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->fillEntriesAndEntrtValues()V

    .line 119
    :cond_0
    return-void
.end method
