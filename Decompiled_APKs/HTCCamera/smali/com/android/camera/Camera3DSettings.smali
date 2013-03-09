.class public Lcom/android/camera/Camera3DSettings;
.super Ljava/lang/Object;
.source "Camera3DSettings.java"


# static fields
.field public static final DISPLAY_2D_BARRIER_MODE:I = 0x2

.field public static final DISPLAY_3D_BARRIER_LANDSCAPE:I = 0x0

.field public static final DISPLAY_3D_BARRIER_PORTRAIT:I = 0x1

.field public static final HW_3D_SWITCH_BUTTON_2D_MODE:I = 0x1

.field public static final HW_3D_SWITCH_BUTTON_3D_MODE:I = 0x0

.field public static final HW_3D_SWITCH_CHECK_INTERVAL:I = 0x12c

.field public static final HW_3D_SWITCH_DELAY_TIME:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "Camera3DSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3DInitialStatus(Landroid/content/ContentResolver;)I
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "htc_2d_3d_mode"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "Camera3DSettings"

    const-string v3, "Fail to get 2D/3D HW button status"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static set3DBarrier(Z)V
    .locals 4

    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayService;

    move-result-object v1

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Camera3DSettings"

    const-string v3, "Fail to switch 3D barrier"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :try_start_1
    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/os/IDisplayService;->set3DMode(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Camera3DSettings"

    const-string v3, "Fail to switch 2D barrier"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
