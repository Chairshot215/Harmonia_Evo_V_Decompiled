.class public Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAutoConnectBluetoothPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final AUTO_LAUNCH_BLUETOOTH:Ljava/lang/String; = "auto_launch_bluetooth"

.field private static final DEFAULT_AUTO_LAUNCH_BLUETOOTH:I = 0x0

.field public static final KEY:Ljava/lang/String; = "auto_connect_bluetooth_preference"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->initialize()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->initialize()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->initialize()V

    .line 52
    return-void
.end method

.method private getAutoConnectStatus()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_launch_bluetooth"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 103
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 102
    goto :goto_0
.end method

.method public static getAutoConnectStatus(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, value:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_launch_bluetooth"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 136
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 137
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 136
    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    const-string v0, "auto_connect_bluetooth_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setKey(Ljava/lang/String;)V

    .line 62
    :cond_0
    const v0, 0x7f0c07db

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setTitle(I)V

    .line 63
    const v0, 0x7f0c04ee

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setSummary(I)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 65
    return-void
.end method

.method private isPairedDevices()Z
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 86
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothAdapter;->listBondedDevices(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x1

    .line 91
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setAutoConnectStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_launch_bluetooth"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V
    .locals 2
    .parameter "preferenceManager"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 71
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->isPairedDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->getAutoConnectStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setChecked(Z)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setChecked(Z)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/cardock/HtcAutoConnectBluetoothPreference;->setAutoConnectStatus(Z)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method
