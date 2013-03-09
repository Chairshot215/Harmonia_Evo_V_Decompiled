.class public Lcom/android/settings/cardock/CarDockSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "CarDockSettings.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CARDOCK_DEVICE:Z = false

.field private static final KEY_DISPLAY_MODE:Ljava/lang/String; = "display_mode"

.field private static TAG:Ljava/lang/String;

.field private static final localLOGV:Z


# instance fields
.field private mDeviceList:Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;

.field private mDisplayModeChanged:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

.field private mDisplayModePref:Lcom/htc/preference/HtcListPreference;

.field final mLock:Ljava/lang/Object;

.field private mSupportLaputa:Z

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "CarDockSetting"

    sput-object v0, Lcom/android/settings/cardock/CarDockSettings;->TAG:Ljava/lang/String;

    .line 33
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0002:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0003:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0002:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/cardock/CarDockSettings;->CARDOCK_DEVICE:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cardock/CarDockSettings;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/android/settings/cardock/CarDockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cardock/CarDockSettings$1;-><init>(Lcom/android/settings/cardock/CarDockSettings;)V

    iput-object v0, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModeChanged:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cardock/CarDockSettings;)Landroid/app/UiModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/cardock/CarDockSettings;->mUiModeManager:Landroid/app/UiModeManager;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onBackPressed()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/cardock/CarDockSettings;->mDeviceList:Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/cardock/CarDockSettings;->mDeviceList:Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;

    invoke-virtual {v0}, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;->unregisterBluetoothOnOffReceiver()V

    .line 122
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0}, Lcom/android/settings/framework/flag/HtcFeatureFlags;->supportLaputa(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mSupportLaputa:Z

    .line 47
    sget-boolean v4, Lcom/android/settings/cardock/CarDockSettings;->CARDOCK_DEVICE:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mSupportLaputa:Z

    if-eqz v4, :cond_2

    .line 48
    :cond_0
    const v4, 0x7f05001c

    invoke-virtual {p0, v4}, Lcom/android/settings/cardock/CarDockSettings;->addPreferencesFromResource(I)V

    .line 49
    const-string v4, "PAIRED_DEVICES_LIST"

    invoke-virtual {p0, v4}, Lcom/android/settings/cardock/CarDockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;

    iput-object v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mDeviceList:Lcom/android/settings/cardock/HtcPairedBluetoothDevicesListPreference;

    .line 55
    :goto_0
    const-string v4, "uimode"

    invoke-virtual {p0, v4}, Lcom/android/settings/cardock/CarDockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/UiModeManager;

    iput-object v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mUiModeManager:Landroid/app/UiModeManager;

    .line 58
    const-string v4, "display_mode"

    invoke-virtual {p0, v4}, Lcom/android/settings/cardock/CarDockSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcListPreference;

    iput-object v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    .line 59
    iget-object v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v5}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    iget-object v5, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModeChanged:Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcListPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 62
    iget-boolean v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mSupportLaputa:Z

    if-eqz v4, :cond_4

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/cardock/CarDockSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/preference/HtcPreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 65
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/cardock/CarDockSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->getPreference(I)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    .line 67
    .local v0, category:Lcom/htc/preference/HtcPreferenceCategory;
    if-nez v0, :cond_3

    .line 65
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_2
    const v4, 0x7f05001d

    invoke-virtual {p0, v4}, Lcom/android/settings/cardock/CarDockSettings;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 70
    .restart local v0       #category:Lcom/htc/preference/HtcPreferenceCategory;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move-result v3

    .line 71
    .local v3, ret:Z
    if-eqz v3, :cond_1

    goto :goto_2

    .line 76
    .end local v0           #category:Lcom/htc/preference/HtcPreferenceCategory;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #ret:Z
    :cond_4
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onPause()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onResume()V

    .line 93
    iget-boolean v2, p0, Lcom/android/settings/cardock/CarDockSettings;->mSupportLaputa:Z

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/settings/cardock/CarDockSettings;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    .line 98
    .local v0, mode:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setEnabled(Z)V

    .line 102
    iget-object v2, p0, Lcom/android/settings/cardock/CarDockSettings;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    .line 103
    .local v1, nightMode:I
    if-ltz v1, :cond_0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/android/settings/cardock/CarDockSettings;->mDisplayModePref:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
