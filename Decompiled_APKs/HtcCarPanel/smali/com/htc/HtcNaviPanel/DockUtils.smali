.class public Lcom/htc/HtcNaviPanel/DockUtils;
.super Ljava/lang/Object;
.source "DockUtils.java"


# static fields
.field private static final AUTO_LAUNCH_BLUETOOTH:Ljava/lang/String; = "auto_launch_bluetooth"

.field private static final AUTO_LAUNCH_CAR_DOCK:Ljava/lang/String; = "auto_launch_car_dock"

.field private static final BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final DEFAULT_AUTO_LAUNCH_BLUETOOTH:I = 0x0

.field private static final DEFAULT_AUTO_LAUNCH_CAR_DOCK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoConnectBuletooth(Landroid/content/ContentResolver;)Z
    .locals 5
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, value:Z
    const-string v4, "auto_launch_bluetooth"

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 51
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 52
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 51
    goto :goto_0
.end method

.method public static getAutoLaunchCarDock(Landroid/content/ContentResolver;)Z
    .locals 4
    .parameter "cr"

    .prologue
    const/4 v2, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, value:Z
    const-string v3, "auto_launch_car_dock"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 25
    .local v0, result:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 26
    :goto_0
    return v1

    .line 25
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDefaultPairedBluetoothDeviceAddress(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .parameter "cr"

    .prologue
    .line 76
    const-string v1, "bluetooth_address"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static getDefaultPairedBluetoothDeviceName(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .parameter "cr"

    .prologue
    .line 99
    const-string v1, "bluetooth_name"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method public static setAutoConnectBluetooth(Landroid/content/ContentResolver;Z)V
    .locals 2
    .parameter "cr"
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 63
    const-string v1, "auto_launch_bluetooth"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAutoLaunchCarDock(Landroid/content/ContentResolver;Z)V
    .locals 2
    .parameter "cr"
    .parameter "status"

    .prologue
    const/4 v0, 0x1

    .line 37
    const-string v1, "auto_launch_car_dock"

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setDefaultPairedBluetoothDeviceAddress(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "cr"
    .parameter "address"

    .prologue
    .line 88
    const-string v0, "bluetooth_address"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    return-void
.end method

.method public static setDefaultPairedBluetoothDeviceName(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 111
    const-string v0, "bluetooth_name"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    return-void
.end method
