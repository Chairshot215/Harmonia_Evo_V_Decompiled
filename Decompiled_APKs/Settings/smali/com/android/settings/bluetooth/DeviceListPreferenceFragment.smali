.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothCallback;


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final TAG:Ljava/lang/String; = "DeviceListPreferenceFragment"


# instance fields
.field private mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mOnDeviceClickListener:Landroid/view/View$OnClickListener;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 231
    new-instance v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$1;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mOnDeviceClickListener:Landroid/view/View$OnClickListener;

    .line 73
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 74
    return-void
.end method

.method private askDisconnect(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 8
    .parameter "device"

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    const v5, 0x7f0c07ca

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 269
    :cond_0
    const v5, 0x7f0c07be

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f0c07bd

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment$2;-><init>(Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 278
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 280
    return-void
.end method

.method private pair(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 9
    .parameter "device"

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->cancelDiscovery()V

    .line 287
    sget-object v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->PRESET_PIN_NAME:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 288
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, cachedName:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 305
    .end local v1           #cachedName:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0c08c6

    invoke-static {v6, v7, v8}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 309
    :cond_1
    :goto_1
    return-void

    .line 291
    .restart local v1       #cachedName:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "PTS-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "PTS-HID"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 293
    :cond_3
    const-string v6, "DeviceListPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " matched condition that should do pre-set PIN"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v5, pinIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 296
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    const-string v6, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 287
    .end local v5           #pinIntent:Landroid/content/Intent;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    instance-of v0, v0, Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    check-cast v0, Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 142
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getBondedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 144
    .local v1, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 145
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 147
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 193
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 194
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 195
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mOnDeviceClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnDeviceClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 226
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 229
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 90
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 97
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 98
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v0, :cond_1

    .line 99
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Could not find device list preference object!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .parameter "cachedDevice"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 170
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_1

    .line 171
    const-string v1, "DeviceListPreferenceFragment"

    const-string v2, "Got onDeviceAdded, but cachedDevice already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 181
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    goto :goto_0

    .line 183
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 209
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    .line 244
    const-string v1, "DeviceListPreferenceFragment"

    const-string v2, "onDevicePreferenceClick!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 246
    .local v0, bondState:I
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->askDisconnect(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 249
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isHidMouse()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0c0216

    :goto_1
    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0217

    goto :goto_1

    .line 255
    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 256
    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->pair(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 132
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 134
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 152
    const-string v1, "bt_scan"

    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 165
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settings/bluetooth/BluetoothCallback;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 122
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 217
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 139
    return-void
.end method

.method setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Lcom/htc/preference/HtcPreferenceGroup;

    .line 109
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .parameter "filterType"

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 82
    return-void
.end method

.method final setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 78
    return-void
.end method
