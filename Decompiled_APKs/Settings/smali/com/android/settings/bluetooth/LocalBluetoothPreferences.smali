.class final Lcom/android/settings/bluetooth/LocalBluetoothPreferences;
.super Ljava/lang/Object;
.source "LocalBluetoothPreferences.java"


# static fields
.field private static final GRACE_PERIOD_TO_SHOW_DIALOGS_IN_FOREGROUND:I = 0xea60

.field private static final KEY_DISCOVERABLE_END_TIMESTAMP:Ljava/lang/String; = "discoverable_end_timestamp"

.field private static final KEY_DISCOVERING_TIMESTAMP:Ljava/lang/String; = "last_discovering_time"

.field private static final KEY_DOCK_AUTO_CONNECT:Ljava/lang/String; = "auto_connect_to_dock"

.field private static final KEY_DOCK_STATE:Ljava/lang/String; = "dock_state"

.field private static final KEY_LAST_SELECTED_DEVICE:Ljava/lang/String; = "last_selected_device"

.field private static final KEY_LAST_SELECTED_DEVICE_TIME:Ljava/lang/String; = "last_selected_device_time"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "bluetooth_settings"

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothPreferences"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static getDiscoverableEndTimestamp(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "discoverable_end_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "addr"

    .prologue
    .line 144
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getDockState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 168
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dock_state"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, state:I
    return v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    const-string v0, "bluetooth_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static hasDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "addr"

    .prologue
    .line 140
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static persistDiscoverableEndTimestamp(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "endTimestamp"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method

.method static persistDiscoveringTimestamp(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothPreferences$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 137
    return-void
.end method

.method static persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "deviceAddress"

    .prologue
    .line 111
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "last_selected_device"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v1, "last_selected_device_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    return-void
.end method

.method static removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "addr"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 156
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    return-void
.end method

.method static saveDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter "context"
    .parameter "addr"
    .parameter "autoConnect"

    .prologue
    .line 149
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto_connect_to_dock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    return-void
.end method

.method static saveDockState(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "state"

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dock_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    return-void
.end method

.method static shouldShowDialogInForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .parameter "context"
    .parameter "deviceAddress"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    .line 64
    .local v8, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v8, :cond_0

    .line 65
    const/4 v10, 0x0

    .line 107
    :goto_0
    return v10

    .line 69
    :cond_0
    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 70
    const/4 v10, 0x1

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 74
    .local v1, currentTimeMillis:J
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 77
    .local v9, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v10, "discoverable_end_timestamp"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 79
    .local v5, lastDiscoverableEndTime:J
    const-wide/32 v10, 0xea60

    add-long/2addr v10, v5

    cmp-long v10, v10, v1

    if-lez v10, :cond_2

    .line 81
    const/4 v10, 0x1

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 86
    .local v0, adapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 87
    const/4 v10, 0x1

    goto :goto_0

    .line 88
    :cond_3
    const-string v10, "last_discovering_time"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    add-long/2addr v10, v12

    cmp-long v10, v10, v1

    if-lez v10, :cond_4

    .line 90
    const/4 v10, 0x1

    goto :goto_0

    .line 94
    :cond_4
    if-eqz p1, :cond_5

    .line 95
    const-string v10, "last_selected_device"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, lastSelectedDevice:Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 99
    const-string v10, "last_selected_device_time"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 101
    .local v3, lastDeviceSelectedTime:J
    const-wide/32 v10, 0xea60

    add-long/2addr v10, v3

    cmp-long v10, v10, v1

    if-lez v10, :cond_5

    .line 103
    const/4 v10, 0x1

    goto :goto_0

    .line 107
    .end local v3           #lastDeviceSelectedTime:J
    .end local v7           #lastSelectedDevice:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0
.end method
