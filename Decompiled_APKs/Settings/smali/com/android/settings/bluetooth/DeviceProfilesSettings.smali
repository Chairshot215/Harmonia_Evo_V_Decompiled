.class public final Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# static fields
.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_PROFILE_CONTAINER:Ljava/lang/String; = "profile_container"

.field private static final KEY_RENAME_DEVICE:Ljava/lang/String; = "rename_device"

.field private static final KEY_UNPAIR:Ljava/lang/String; = "unpair"

.field private static final TAG:Ljava/lang/String; = "DeviceProfilesSettings"


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothProfile;",
            "Lcom/htc/preference/HtcCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

.field private mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

.field private mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/htc/preference/HtcEditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    return-object v0
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    .prologue
    .line 182
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 183
    .local v2, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    .line 184
    .local v1, pref:Lcom/htc/preference/HtcPreference;
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 186
    .end local v1           #pref:Lcom/htc/preference/HtcPreference;
    .end local v2           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 187
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 276
    .local v0, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 278
    const v6, 0x7f0c07ca

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f0c07bf

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0c07c0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 295
    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 297
    return-void
.end method

.method private createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v1, Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 210
    .local v1, pref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setTitle(I)V

    .line 212
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setPersistent(Z)V

    .line 213
    invoke-interface {p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setOrder(I)V

    .line 214
    invoke-virtual {v1, p0}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 216
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .line 217
    .local v0, iconResource:I
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 226
    invoke-direct {p0, v1, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 228
    return-object v1
.end method

.method private getAutoConnect(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Z
    .locals 1
    .parameter "prof"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method private getProfileOf(Lcom/htc/preference/HtcPreference;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 344
    instance-of v3, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-nez v3, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-object v2

    .line 347
    :cond_1
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 5
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    .line 258
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 260
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 261
    .local v2, status:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v1, v3

    .line 264
    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    .line 270
    :goto_1
    return-void

    .line 261
    .end local v1           #isConnected:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    .restart local v1       #isConnected:Z
    :cond_1
    invoke-interface {p1, v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 268
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 309
    return-void
.end method

.method private refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 338
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 339
    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 340
    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setSummary(I)V

    .line 341
    return-void

    .line 338
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    .line 312
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 313
    .local v1, profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcCheckBoxPreference;

    .line 314
    .local v2, profilePref:Lcom/htc/preference/HtcCheckBoxPreference;
    if-nez v2, :cond_0

    .line 315
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v2

    .line 316
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 318
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Lcom/htc/preference/HtcCheckBoxPreference;Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 321
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Lcom/htc/preference/HtcCheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 322
    .restart local v1       #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v2

    .line 323
    .local v2, profilePref:Lcom/htc/preference/HtcPreference;
    if-eqz v2, :cond_2

    .line 324
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1

    .line 328
    .end local v1           #profile:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Lcom/htc/preference/HtcPreference;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 329
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 191
    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 193
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 363
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string v4, "device"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    if-eqz v1, :cond_2

    .line 104
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 106
    const-string v4, "profile_container"

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcPreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Lcom/htc/preference/HtcPreferenceGroup;

    .line 107
    const-string v4, "rename_device"

    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    check-cast v4, Lcom/htc/preference/HtcEditTextPreference;

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    .line 108
    new-instance v4, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 110
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 112
    .local v2, deviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    .line 113
    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 114
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-eqz v4, :cond_1

    .line 115
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, deviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4, v3}, Lcom/htc/preference/HtcEditTextPreference;->setText(Ljava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v4, p0}, Lcom/htc/preference/HtcEditTextPreference;->setOnPreferenceChangeListener(Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 127
    .end local v2           #deviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    .end local v3           #deviceName:Ljava/lang/String;
    :goto_1
    return-void

    .line 99
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "device"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 122
    .end local v0           #args:Landroid/os/Bundle;
    .restart local v2       #deviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    :cond_1
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Device not found, cannot connect to it"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    .end local v2           #deviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    :cond_2
    const-string v4, "DeviceProfilesSettings"

    const-string v5, "Activity started without a remote Bluetooth device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 136
    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 301
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    if-ne p1, v2, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    .line 246
    .restart local p2
    :cond_1
    instance-of v2, p1, Lcom/htc/preference/HtcCheckBoxPreference;

    if-eqz v2, :cond_0

    .line 247
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Lcom/htc/preference/HtcPreference;)Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 248
    .local v0, prof:Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 233
    invoke-virtual {p2}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, key:Ljava/lang/String;
    const-string v1, "unpair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 237
    const/4 v1, 0x1

    .line 240
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Lcom/htc/preference/HtcPreferenceScreen;Lcom/htc/preference/HtcPreference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 147
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 152
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 153
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 154
    const-string v3, "DeviceProfilesSettings"

    const-string v4, "Unbonded Device, cannot connect to it"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 159
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 160
    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Lcom/htc/preference/HtcEditTextPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 163
    .local v1, d:Landroid/app/Dialog;
    instance-of v3, v1, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v3, :cond_0

    .line 164
    check-cast v1, Lcom/htc/widget/HtcAlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 165
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    return-void
.end method
