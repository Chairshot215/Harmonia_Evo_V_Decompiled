.class public Lcom/android/systemui/power/PowerSaverOperation;
.super Ljava/lang/Object;
.source "PowerSaverOperation.java"


# static fields
.field public static final DEFAULT_BACKGROUNDDATA:Z = true

.field public static final DEFAULT_BLUETOOTH:Z = true

.field public static final DEFAULT_BRIGHTNESS:Z = true

.field public static final DEFAULT_BRIGHTNESS_AUTO:I = 0x0

.field public static final DEFAULT_BRIGHTNESS_VALUE:I = 0x66

.field public static final DEFAULT_DATACONNECTION_SLEEP:Z = true

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

.field public static final KEY_DATACONNECTION_SLEEP:Ljava/lang/String; = "powersaver_dataconnection"

.field public static final KEY_ENABLE_POWERSAVER:Ljava/lang/String; = "powersaver_enable"

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

.field public static final KEY_N_WIFI:Ljava/lang/String; = "psaver_normal_wifi"

.field public static final KEY_ONSCREEN_ANIMATION:Ljava/lang/String; = "powersaver_onscreen_animation"

.field public static final KEY_POWERSAVER_SHARED:Ljava/lang/String; = "powersaver_shared"

.field public static final KEY_SCREEN_BRIGHTNESS:Ljava/lang/String; = "powersaver_screen_brightness"

.field public static final KEY_SCREEN_BRIGHTNESS_SETTINGS:Ljava/lang/String; = "powersaver_screen_brightness_settings"

.field public static final KEY_SCREEN_BRIGHTNESS_SETTINGS_AUTO:Ljava/lang/String; = "powersaver_screen_brightness_settings_auto"

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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSysBackgroundData(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "background_data"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBluetooth()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Powersaver"

    const-string v2, "Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public static getSysBrightness(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "screen_brightness"

    const/16 v1, 0x66

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysBrightnessAuto(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysHapicFeedback(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysOnscreenAnimations()[F
    .locals 5

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "Powersaver"

    const-string v4, "error at IWindowManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSysTimeOut(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v0, "screen_off_timeout"

    const/16 v1, 0x1770

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSysWifi(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v1, "Powersaver"

    const-string v2, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public setBackgroundData(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 2

    const-string v0, "powersaver_backgrounddata"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/power/PowerSaverOperation;->setSysBackgroundData(Landroid/content/ContentResolver;I)V

    :cond_0
    return-void
.end method

.method public setBluetooth(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "powersaver_bluetooth"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerSaverOperation;->setSysBluetooth(Z)V

    :cond_0
    return-void
.end method

.method public setBrightness(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 4

    const-string v2, "powersaver_screen_brightness"

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "powersaver_screen_brightness_settings"

    const/16 v3, 0x66

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "powersaver_screen_brightness_settings_auto"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/systemui/power/PowerSaverOperation;->setSysBrightness(Landroid/content/ContentResolver;II)V

    :cond_0
    return-void
.end method

.method public setHapicFeedback(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 2

    const-string v0, "powersaver_haptic_feedback"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/power/PowerSaverOperation;->setSysHapicFeedback(Landroid/content/ContentResolver;I)V

    :cond_0
    return-void
.end method

.method public setOnscreenAnimations(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v1, "powersaver_onscreen_animation"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerSaverOperation;->setSysOnscreenAnimations([F)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setStatus(Landroid/content/ContentResolver;I)V
    .locals 1

    const-string v0, "powersaver_status"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setSysBackgroundData(Landroid/content/ContentResolver;I)V
    .locals 2

    const-string v0, "background_data"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Powersaver"

    const-string v1, "error at Secure.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setSysBluetooth(Z)V
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Powersaver"

    const-string v2, "Bluetooth is not supported on this hardware platform."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Powersaver"

    const-string v2, "error at bluetoothAdapter.enable()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disableFromPowerSaver()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Powersaver"

    const-string v2, "error at bluetoothAdapter.disable()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSysBrightness(Landroid/content/ContentResolver;II)V
    .locals 4

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const-string v2, "screen_brightness_mode"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "screen_brightness"

    invoke-static {p1, v2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Powersaver"

    const-string v3, "error at Settings.System.putInt"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v2, "Powersaver"

    const-string v3, "error at IPowerManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v1, p3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSysHapicFeedback(Landroid/content/ContentResolver;I)V
    .locals 2

    const-string v0, "haptic_feedback_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setSysOnscreenAnimations([F)V
    .locals 4

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Powersaver"

    const-string v3, "error at IWindowManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSysTimeOut(Landroid/content/ContentResolver;I)V
    .locals 2

    const-string v0, "screen_off_timeout"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Powersaver"

    const-string v1, "error at Settings.System.putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setSysWifi(Landroid/content/Context;Z)V
    .locals 6

    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    if-nez v3, :cond_0

    const-string v4, "Powersaver"

    const-string v5, "error at getSystemService(Context.WIFI_SERVICE)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_1
    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeOut(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)V
    .locals 3

    const-string v1, "powersaver_screen_timeout"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "powersaver_screen_timeout_settings"

    const/16 v2, 0x7530

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/power/PowerSaverOperation;->setSysTimeOut(Landroid/content/ContentResolver;I)V

    :cond_0
    return-void
.end method

.method public setWifi(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2

    const-string v0, "powersaver_wifi"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/power/PowerSaverOperation;->setSysWifi(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
