.class public Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAutoConnectDeskBluetoothPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# static fields
.field private static final DEFAULT_AUTO_LAUNCH_BLUETOOTH:I = 0x0

.field private static final DESK_AUTO_LAUNCH_BLUETOOTH:Ljava/lang/String; = "desk_auto_launch_bluetooth"

.field public static final KEY:Ljava/lang/String; = "desk_auto_connect_bluetooth_preference"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->initialize()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->initialize()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->initialize()V

    .line 48
    return-void
.end method

.method private getAutoConnectStatus()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "desk_auto_launch_bluetooth"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 99
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 98
    goto :goto_0
.end method

.method public static getAutoConnectStatus(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, value:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "desk_auto_launch_bluetooth"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 136
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 135
    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "desk_auto_connect_bluetooth_preference"

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setKey(Ljava/lang/String;)V

    .line 58
    :cond_0
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setTitle(I)V

    .line 59
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setSummary(I)V

    .line 60
    invoke-virtual {p0, p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 61
    return-void
.end method

.method private isPairedDevices()Z
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 82
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->listBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const/4 v2, 0x1

    .line 86
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

    .line 110
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_auto_launch_bluetooth"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    return-void

    .line 110
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

    .line 66
    invoke-super {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;->onAttachedToHierarchy(Lcom/htc/preference/HtcPreferenceManager;)V

    .line 67
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->isPairedDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->getAutoConnectStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setChecked(Z)V

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setChecked(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/dockmode/preference/HtcAutoConnectDeskBluetoothPreference;->setAutoConnectStatus(Z)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method
