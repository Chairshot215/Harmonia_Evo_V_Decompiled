.class public Lcom/android/settings/Powersaver;
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

.field public static final DEFAULT_SCHEDULE:I = 0xf

.field public static final DEFAULT_SCREEN_ANIMATION:Z = true

.field public static final DEFAULT_SCREEN_TIMEOUT:Z = true

.field public static final DEFAULT_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static final DEFAULT_WIFI:Z = true

.field public static final KEY_BACKGROUNDDATA:Ljava/lang/String; = "powersaver_backgrounddata"

.field public static final KEY_BLUETOOTH:Ljava/lang/String; = "powersaver_bluetooth"

.field public static final KEY_ENABLE_POWEREFFICIENCY:Ljava/lang/String; = "enable_power_efficiency"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "powersaver_haptic_feedback"

.field public static final KEY_NOTIFICATION:Ljava/lang/String; = "powersaver_notify_me"

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

.field public static final KEY_WIFI:Ljava/lang/String; = "powersaver_wifi"

.field public static final NORMAL_STATUS:I = 0x1f40

.field public static final POWERSAVER_STATUS:I = 0x1f41

.field private static final TAG:Ljava/lang/String; = "Powersaver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerEfficiencyEnable(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 322
    const-string v0, "enable_power_efficiency"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPowerSaverEnable(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 310
    const-string v0, "powersaver_enable"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSchedule(Landroid/content/ContentResolver;)I
    .locals 4
    .parameter "contentresolver"

    .prologue
    const/16 v3, 0xf

    .line 344
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x21

    if-ne v1, v2, :cond_1

    .line 346
    :cond_0
    const-string v1, "powersaver_set_schedule"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 349
    .local v0, iReturnValue:I
    :goto_0
    return v0

    .line 348
    .end local v0           #iReturnValue:I
    :cond_1
    const-string v1, "powersaver_set_schedule"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #iReturnValue:I
    goto :goto_0
.end method

.method public static getStatus(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 302
    const-string v0, "powersaver_status"

    const/16 v1, 0x1f40

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBackgroundData(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 283
    const-string v0, "background_data"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBluetooth()Z
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 225
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 226
    const-string v1, "Powersaver"

    const-string v2, "Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public static getSysBrightness(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 201
    const-string v0, "screen_brightness"

    const/16 v1, 0x66

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBrightnessAuto(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 195
    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysHapicFeedback(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 294
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysOnscreenAnimations()[F
    .locals 5

    .prologue
    .line 133
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 134
    .local v2, mWindowManager:Landroid/view/IWindowManager;
    if-nez v2, :cond_0

    .line 135
    const-string v3, "Powersaver"

    const-string v4, "error at IWindowManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, AnimationScales:[F
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 141
    :catch_0
    move-exception v1

    .line 143
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSysTimeOut(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentresolver"

    .prologue
    .line 155
    const-string v0, "screen_off_timeout"

    const/16 v1, 0x1770

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysWifi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 262
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 263
    .local v0, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 264
    const-string v1, "Powersaver"

    const-string v2, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static isfastBootAllowed(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "contentResolver"

    .prologue
    const/4 v0, 0x0

    .line 332
    const-string v1, "enable_fastboot"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setPowerEfficiencyEnable(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 316
    const-string v0, "enable_power_efficiency"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    return-void
.end method

.method public static setPowerSaverEnable(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 306
    const-string v0, "powersaver_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    return-void
.end method

.method public static setSchedule(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "value"

    .prologue
    .line 327
    const-string v0, "powersaver_set_schedule"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    return-void
.end method

.method public static setStatus(Landroid/content/ContentResolver;I)V
    .locals 1
    .parameter "contentresolver"
    .parameter "STATUS"

    .prologue
    .line 298
    const-string v0, "powersaver_status"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    return-void
.end method

.method public static setSysBackgroundData(Landroid/content/ContentResolver;ILandroid/content/Context;)V
    .locals 4
    .parameter "contentresolver"
    .parameter "Enable"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 274
    const-string v1, "connectivity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 275
    .local v0, CM:Landroid/net/ConnectivityManager;
    if-ne p1, v2, :cond_1

    .line 276
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 279
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

    .line 280
    return-void

    .line 277
    :cond_1
    if-nez p1, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    goto :goto_0
.end method

.method public static setSysBluetooth(Z)V
    .locals 3
    .parameter "Enable"

    .prologue
    .line 207
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 208
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 209
    const-string v1, "Powersaver"

    const-string v2, "Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    if-eqz p0, :cond_2

    .line 213
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    const-string v1, "Powersaver"

    const-string v2, "error at bluetoothAdapter.enable()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-static {v0}, Lcom/htc/wrap/android/bluetooth/HtcWrapBluetoothAdapter;->disableFromPowerSaver(Landroid/bluetooth/BluetoothAdapter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
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
    .line 160
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 161
    const-string v2, "screen_brightness_mode"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    const-string v2, "screen_brightness"

    invoke-static {p0, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 176
    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 183
    .local v1, power:Landroid/os/IPowerManager;
    if-nez v1, :cond_4

    .line 184
    const-string v2, "Powersaver"

    const-string v3, "error at IPowerManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_4
    invoke-interface {v1, p2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSysHapicFeedback(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "Enable"

    .prologue
    .line 288
    const-string v0, "haptic_feedback_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    return-void
.end method

.method public static setSysOnscreenAnimations([F)V
    .locals 4
    .parameter "AnimationScales"

    .prologue
    .line 118
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 119
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    if-nez v1, :cond_0

    .line 120
    const-string v2, "Powersaver"

    const-string v3, "error at IWindowManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSysTimeOut(Landroid/content/ContentResolver;I)V
    .locals 2
    .parameter "contentresolver"
    .parameter "value"

    .prologue
    .line 149
    const-string v0, "screen_off_timeout"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method public static setSysWifi(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "Enable"

    .prologue
    .line 232
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 233
    .local v3, wifimgr:Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_0

    .line 234
    const-string v4, "Powersaver"

    const-string v5, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 238
    .local v0, CM:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 240
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz p1, :cond_2

    .line 243
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 252
    :try_start_1
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v1

    .line 254
    .restart local v1       #e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setfastBootAllowed(Landroid/content/ContentResolver;Z)V
    .locals 2
    .parameter "contentResolver"
    .parameter "enabled"

    .prologue
    .line 338
    const-string v1, "enable_fastboot"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
