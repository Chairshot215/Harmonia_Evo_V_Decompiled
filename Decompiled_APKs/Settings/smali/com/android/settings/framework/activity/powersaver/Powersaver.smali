.class public Lcom/android/settings/framework/activity/powersaver/Powersaver;
.super Ljava/lang/Object;
.source "Powersaver.java"


# static fields
.field public static final DEFAULT_BACKGROUNDDATA:Z = true

.field public static final DEFAULT_BLUETOOTH:Z = true

.field public static final DEFAULT_BRIGHTNESS:Z = true

.field public static final DEFAULT_BRIGHTNESS_AUTO:I = 0x0

.field public static final DEFAULT_BRIGHTNESS_VALUE:I = 0x66

.field public static final DEFAULT_BRIGHTNESS_VALUE_EFFICIENCY:I = 0x7f

.field public static final DEFAULT_ENABLE:I = 0x1

.field public static final DEFAULT_HAPTIC_FEEDBACK:Z = true

.field public static final DEFAULT_NOTIFICATION:Z = true

.field public static final DEFAULT_N_BACKGROUNDDATA:I = 0x1

.field public static final DEFAULT_N_BLUETOOTH:Z = false

.field public static final DEFAULT_N_BRIGHTNESS:I = 0x66

.field public static final DEFAULT_N_BRIGHTNESS_AUTO:I = 0x0

.field public static final DEFAULT_N_HAPTIC_FEEDBACK:I = 0x1

.field public static final DEFAULT_N_SCREEN_TIMEOUT:I = 0x1770

.field public static final DEFAULT_N_WIFI:Z = false

.field public static final DEFAULT_SCHEDULE:I = 0x19

.field public static final DEFAULT_SCHEDULE_8X60:I = 0xa

.field public static final DEFAULT_SCREEN_ANIMATION:Z = true

.field public static final DEFAULT_SCREEN_TIMEOUT:Z = true

.field public static final DEFAULT_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static final DEFAULT_WIFI:Z = true

.field public static final KEY_AUTO_WIFI_35:Ljava/lang/String; = "powersaver_location_aware_wifi"

.field public static final KEY_BACKGROUNDDATA:Ljava/lang/String; = "powersaver_backgrounddata"

.field public static final KEY_BLUETOOTH:Ljava/lang/String; = "powersaver_bluetooth"

.field public static final KEY_CDMA_35:Ljava/lang/String; = "powersaver_CDMAonly"

.field public static final KEY_CPU_35:Ljava/lang/String; = "powersaver_reduce_CPU"

.field public static final KEY_DATA_CONNECTION_35:Ljava/lang/String; = "powersaver_dataconnection"

.field public static final KEY_ENABLE_POWEREFFICIENCY:Ljava/lang/String; = "enable_power_efficiency"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field public static final KEY_FRAME_REDUCE_35:Ljava/lang/String; = "powersaver_reduce_frame_rate"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "powersaver_haptic_feedback"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "powersaver_notification"

.field public static final KEY_N_ANIMATION0:Ljava/lang/String; = "psaver_normal_animation_0"

.field public static final KEY_N_ANIMATION1:Ljava/lang/String; = "psaver_normal_animation_1"

.field public static final KEY_N_BACKGROUNDDATA:Ljava/lang/String; = "psaver_normal_bgdata"

.field public static final KEY_N_BLUETOOTH:Ljava/lang/String; = "psaver_normal_bluetooth"

.field public static final KEY_N_BRIGHTNESS:Ljava/lang/String; = "psaver_normal_brightness"

.field public static final KEY_N_BRIGHTNESS_AUTO:Ljava/lang/String; = "psaver_normal_autobrightness"

.field public static final KEY_N_HAPTIC_FEEDBACK:Ljava/lang/String; = "psaver_normal_haptic_feedback"

.field public static final KEY_N_SCREEN_TIMEOUT:Ljava/lang/String; = "psaver_normal_screen_timeout"

.field public static final KEY_N_SYSTEM_BRIGHTNESS:Ljava/lang/String; = "power_efficiency_system_brightness"

.field public static final KEY_N_SYSTEM_BRIGHTNESS_AUTO:Ljava/lang/String; = "power_efficiency_system_brightness_auto"

.field public static final KEY_N_WIFI:Ljava/lang/String; = "psaver_normal_wifi"

.field public static final KEY_ONSCREEN_ANIMATION:Ljava/lang/String; = "powersaver_onscreen_animation"

.field public static final KEY_POWERSAVER_SETTING:Ljava/lang/String; = "powersaver_setting_text"

.field public static final KEY_POWERSAVER_SHARED:Ljava/lang/String; = "powersaver_shared"

.field public static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "powersaver_screen_brightness"

.field public static final KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String; = "powersaver_screen_brightness_settings"

.field public static final KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String; = "powersaver_screen_brightness_settings_auto"

.field public static final KEY_SCREEN_BRIGHTNESS_SETTINGS_MODE:Ljava/lang/String; = "powersaver_screen_brightness_settings_mode"

.field public static final KEY_SCREEN_POWER_EFFICIENCY_ALWAYS_ON:Ljava/lang/String; = "power_efficiency_always_on"

.field public static final KEY_SCREEN_POWER_EFFICIENCY_AUTO_SYNC:Ljava/lang/String; = "power_efficiency_auto_sync"

.field public static final KEY_SCREEN_POWER_EFFICIENCY_SLEEP_POLICY:Ljava/lang/String; = "power_efficiency_sleep_policy"

.field public static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "powersaver_screen_timeout"

.field public static final KEY_SCREEN_TIMEOUT_SETTINGS:Ljava/lang/String; = "powersaver_screen_timeout_settings"

.field public static final KEY_SET_SCHEDULE:Ljava/lang/String; = "powersaver_set_schedule"

.field public static final KEY_STATUS:Ljava/lang/String; = "powersaver_status"

.field public static final KEY_SWITCH_2G_CALL_35:Ljava/lang/String; = "powersaver_switch_2G_call"

.field public static final KEY_USER_POWERSAVER_ENABLE:Ljava/lang/String; = "user_powersaver_enable"

.field public static final KEY_WIFI:Ljava/lang/String; = "powersaver_wifi"

.field public static final NORMAL_STATUS:I = 0x1f40

.field public static final POWERSAVER_STATUS:I = 0x1f41

.field private static final TAG:Ljava/lang/String; = "Powersaver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnable(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 316
    const-string v0, "powersaver_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEnable_35(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 346
    const-string v0, "user_powersaver_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPowerEfficiencyEnable(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 328
    const-string v0, "enable_power_efficiency"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSchedule(Landroid/content/ContentResolver;)I
    .locals 3
    .parameter "contentresolver"

    .prologue
    .line 337
    const-string v1, "powersaver_set_schedule"

    const/16 v2, 0x19

    invoke-static {p0, v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 338
    .local v0, iReturnValue:I
    return v0
.end method

.method public static getStatus(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 308
    const-string v0, "powersaver_status"

    const/16 v1, 0x1f40

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBackgroundData(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 289
    const-string v0, "background_data"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBluetooth()Z
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 231
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 232
    const-string v1, "Powersaver"

    const-string v2, "Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public static getSysBrightness(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 207
    const-string v0, "screen_brightness"

    const/16 v1, 0x66

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBrightnessAuto(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 201
    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysHapicFeedback(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 300
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysOnscreenAnimations()[F
    .locals 5

    .prologue
    .line 139
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 140
    .local v2, mWindowManager:Landroid/view/IWindowManager;
    if-nez v2, :cond_0

    .line 141
    const-string v3, "Powersaver"

    const-string v4, "error at IWindowManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 146
    .local v0, AnimationScales:[F
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 147
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSysTimeOut(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 161
    const-string v0, "screen_off_timeout"

    const/16 v1, 0x1770

    invoke-static {p0, v0, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysWifi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 268
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 269
    .local v0, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 270
    const-string v1, "Powersaver"

    const-string v2, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static setEnable(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 312
    const-string v0, "powersaver_enable"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    return-void
.end method

.method public static setEnable_35(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 342
    const-string v0, "user_powersaver_enable"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    return-void
.end method

.method public static setPowerEfficiencyEnable(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 322
    const-string v0, "enable_power_efficiency"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    return-void
.end method

.method public static setSchedule(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "value"

    .prologue
    .line 332
    const-string v0, "powersaver_set_schedule"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    return-void
.end method

.method public static setStatus(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "STATUS"

    .prologue
    .line 304
    const-string v0, "powersaver_status"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 305
    return-void
.end method

.method public static setSysBackgroundData(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 351
    const-string v0, "background_data"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-string v0, "Powersaver"

    const-string v1, "error at Secure.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    return-void
.end method

.method public static setSysBackgroundData(Landroid/content/ContentResolver;ILandroid/content/Context;)V
    .locals 4
    .parameter "contentresolver"
    .parameter "Enable"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 280
    const-string v1, "connectivity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 281
    .local v0, CM:Landroid/net/ConnectivityManager;
    if-ne p1, v2, :cond_1

    .line 282
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 285
    :cond_0
    :goto_0
    const-string v1, "Powersaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set BackGround data success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 283
    :cond_1
    if-nez p1, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    goto :goto_0
.end method

.method public static setSysBluetooth(Z)V
    .locals 3
    .parameter "Enable"

    .prologue
    .line 213
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 214
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 215
    const-string v1, "Powersaver"

    const-string v2, "Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    if-eqz p0, :cond_2

    .line 219
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 220
    const-string v1, "Powersaver"

    const-string v2, "error at bluetoothAdapter.enable()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    invoke-static {v0}, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothAdapter;->disableFromPowerSaver(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v1, "Powersaver"

    const-string v2, "error at bluetoothAdapter.disable()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSysBrightness(Landroid/content/ContentResolver;II)V
    .locals 4
    .parameter "contentresolver"
    .parameter "brightness_mode"
    .parameter "brightness"

    .prologue
    .line 166
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 167
    const-string v2, "screen_brightness_mode"

    invoke-static {p0, v2, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    const-string v2, "screen_brightness"

    invoke-static {p0, v2, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_3
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 189
    .local v1, power:Landroid/os/IPowerManager;
    if-nez v1, :cond_4

    .line 190
    const-string v2, "Powersaver"

    const-string v3, "error at IPowerManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_4
    invoke-interface {v1, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSysHapicFeedback(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 294
    const-string v0, "haptic_feedback_enabled"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    return-void
.end method

.method public static setSysOnscreenAnimations([F)V
    .locals 4
    .parameter "AnimationScales"

    .prologue
    .line 124
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 125
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    if-nez v1, :cond_0

    .line 126
    const-string v2, "Powersaver"

    const-string v3, "error at IWindowManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSysTimeOut(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "value"

    .prologue
    .line 155
    const-string v0, "screen_off_timeout"

    invoke-static {p0, v0, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void
.end method

.method public static setSysWifi(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "Enable"

    .prologue
    .line 238
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 239
    .local v3, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_0

    .line 240
    const-string v4, "Powersaver"

    const-string v5, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 244
    .local v0, CM:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 246
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz p1, :cond_2

    .line 249
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v1

    .line 251
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v1

    .line 260
    .restart local v1       #e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
