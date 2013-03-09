.class public Lcom/android/settings/framework/util/HtcSystemUtility;
.super Ljava/lang/Object;
.source "HtcSystemUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/settings/framework/util/HtcSystemUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/util/HtcSystemUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 31
    sget-object v0, Lcom/android/settings/framework/util/HtcSystemUtility;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static getBrightnessMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, automatic:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    return v0
.end method

.method public static getBrightnessValue(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, brightnessValue:I
    return v0
.end method

.method public static setBrightnessMode(Landroid/content/Context;Z)Z
    .locals 2
    .parameter "context"
    .parameter "automatic"

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setBrightnessValue(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "brightnessValue"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setUnderlyingBrightnessValue(I)Z
    .locals 5
    .parameter "brightnessValue"

    .prologue
    const/4 v2, 0x0

    .line 146
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 149
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 151
    const/4 v2, 0x1

    .line 159
    .end local v1           #power:Landroid/os/IPowerManager;
    :goto_0
    return v2

    .line 153
    .restart local v1       #power:Landroid/os/IPowerManager;
    :cond_0
    sget-object v3, Lcom/android/settings/framework/util/HtcSystemUtility;->TAG:Ljava/lang/String;

    const-string v4, "Set the backlight brightness failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/settings/framework/util/HtcSystemUtility;->TAG:Ljava/lang/String;

    const-string v4, "Set the backlight brightness failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
