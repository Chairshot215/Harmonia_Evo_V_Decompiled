.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;


# static fields
.field private static final BTOPP_ACTION_OPEN_RECEIVED_FILES:Ljava/lang/String; = "android.btopp.intent.action.OPEN_RECEIVED_FILES"

.field private static final MENU_ID_ADVANCED:I = 0x3

.field private static final MENU_ID_RENAME_DEVICE:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_SHOW_RECEIVED:I = 0x5

.field private static final MENU_ID_VISIBILITY_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field mMyDevicePreference:Lcom/htc/preference/HtcPreference;

.field private mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 353
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    .line 231
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreferenceGroup;->setTitle(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 233
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->setDeviceListGroup(Lcom/htc/preference/HtcPreferenceGroup;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addCachedDevices()V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->setEnabled(Z)V

    .line 237
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->removeAllDevices()V

    .line 218
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 221
    return-void
.end method

.method private updateContent(IZ)V
    .locals 9
    .parameter "bluetoothState"
    .parameter "scanState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 241
    .local v2, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    const/4 v0, 0x0

    .line 243
    .local v0, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 329
    :goto_0
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 330
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 332
    :goto_1
    return-void

    .line 245
    :pswitch_0
    invoke-virtual {v2}, Lcom/htc/preference/HtcPreferenceScreen;->removeAll()V

    .line 246
    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 247
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    .line 250
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    if-nez v3, :cond_0

    .line 251
    new-instance v3, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 255
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f020056

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    .line 259
    :goto_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v8}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 260
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    .line 261
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 263
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v3, :cond_1

    .line 264
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/htc/preference/HtcPreference;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 266
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v3, :cond_5

    .line 273
    new-instance v3, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    .line 277
    :goto_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    const v4, 0x7f0c08cf

    sget-object v5, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 280
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 282
    .local v1, numberOfPairedDevices:I
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v3, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 285
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    if-nez v3, :cond_6

    .line 286
    new-instance v3, Lcom/android/settings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/settings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    .line 290
    :goto_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    const v4, 0x7f0c08d0

    sget-object v5, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/htc/preference/HtcPreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 293
    iput-boolean v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 295
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 296
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    check-cast v3, Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v7}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 302
    :cond_2
    :goto_5
    if-nez v1, :cond_3

    .line 303
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 304
    if-ne p2, v7, :cond_8

    .line 305
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 306
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 313
    :cond_3
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 257
    .end local v1           #numberOfPairedDevices:I
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f02005c

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setIcon(I)V

    goto/16 :goto_2

    .line 275
    :cond_5
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    goto :goto_3

    .line 288
    .restart local v1       #numberOfPairedDevices:I
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->removeAll()V

    goto :goto_4

    .line 297
    :cond_7
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 299
    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    goto :goto_5

    .line 308
    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v3, :cond_3

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_6

    .line 317
    .end local v1           #numberOfPairedDevices:I
    :pswitch_1
    const v0, 0x7f0c07da

    .line 318
    goto/16 :goto_0

    .line 321
    :pswitch_2
    const v0, 0x7f0c08d9

    .line 322
    goto/16 :goto_0

    .line 325
    :pswitch_3
    const v0, 0x7f0c07d9

    goto/16 :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 378
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 379
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 381
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x1

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    if-nez p1, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v7, 0x1020004

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 94
    const v4, 0x7f050009

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 99
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Lcom/htc/widget/HtcToggleButton;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcToggleButton;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, actionBarSwitch:Lcom/htc/widget/HtcToggleButton;
    instance-of v4, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 102
    check-cast v3, Lcom/htc/preference/HtcPreferenceActivity;

    .line 103
    .local v3, preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0b0002

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 106
    .local v2, padding:I
    invoke-virtual {v0, v6, v6, v2, v6}, Lcom/htc/widget/HtcToggleButton;->setPadding(IIII)V

    .line 107
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 109
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 116
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 118
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->setHasOptionsMenu(Z)V

    .line 119
    return-void

    .end local v0           #actionBarSwitch:Lcom/htc/widget/HtcToggleButton;
    .end local v1           #activity:Landroid/app/Activity;
    :cond_2
    move v4, v6

    .line 89
    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 338
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 153
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 154
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 155
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_1

    const v2, 0x7f0c08cd

    .line 157
    .local v2, textId:I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 160
    const/4 v3, 0x2

    const v5, 0x7f0c07bb

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 163
    const/4 v3, 0x3

    const v5, 0x7f0c0919

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 166
    const/4 v3, 0x4

    const v5, 0x7f0c07b3

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 169
    const/4 v3, 0x5

    const v5, 0x7f0c07d1

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_0
    move v0, v4

    .line 153
    goto :goto_0

    .line 155
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_1
    const v2, 0x7f0c08cc

    goto :goto_1

    .restart local v2       #textId:I
    :cond_2
    move v3, v4

    .line 157
    goto :goto_2
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 348
    const/16 v0, 0xb

    if-eq p2, v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 351
    :cond_0
    return-void
.end method

.method public onDeviceNameChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .parameter "device"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    :cond_0
    move v0, v8

    .line 180
    goto :goto_0

    .line 183
    :pswitch_1
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "rename device"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v8

    .line 185
    goto :goto_0

    .line 188
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c08d8

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v8

    .line 197
    goto :goto_0

    .line 195
    :cond_1
    const-class v0, Lcom/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 200
    :pswitch_3
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "visibility timeout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v8

    .line 202
    goto :goto_0

    .line 205
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "direction"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const-string v0, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 209
    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 149
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 131
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothAdapter$Callback;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 139
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 345
    return-void
.end method
