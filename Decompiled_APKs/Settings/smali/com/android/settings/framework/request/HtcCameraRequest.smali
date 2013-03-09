.class public final Lcom/android/settings/framework/request/HtcCameraRequest;
.super Ljava/lang/Object;
.source "HtcCameraRequest.java"


# static fields
.field private static mAutomaticMode:I

.field private static mBrightness:I

.field private static mCameraMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Lcom/android/settings/framework/request/HtcCameraRequest;->mCameraMode:Z

    .line 20
    const/16 v0, 0x8f

    sput v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mBrightness:I

    .line 21
    sput v1, Lcom/android/settings/framework/request/HtcCameraRequest;->mAutomaticMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized requestForBrightness(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    const-class v2, Lcom/android/settings/framework/request/HtcCameraRequest;

    monitor-enter v2

    const/4 v0, 0x0

    .line 32
    .local v0, brightness:I
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 37
    :cond_1
    :try_start_1
    const-string v1, "EXTRA_BRIGHTNESS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    const/16 v1, 0x14

    if-ge v0, v1, :cond_4

    .line 39
    const/16 v0, 0x14

    .line 44
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/settings/framework/request/HtcCameraRequest;->mCameraMode:Z

    if-nez v1, :cond_3

    .line 45
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/framework/request/HtcCameraRequest;->mCameraMode:Z

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness_mode"

    sget v4, Lcom/android/settings/framework/request/HtcCameraRequest;->mAutomaticMode:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/framework/request/HtcCameraRequest;->mAutomaticMode:I

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness"

    sget v4, Lcom/android/settings/framework/request/HtcCameraRequest;->mBrightness:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/framework/request/HtcCameraRequest;->mBrightness:I

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_brightness"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    invoke-static {v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->setUnderlyingBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 40
    :cond_4
    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    .line 41
    const/16 v0, 0xff

    goto :goto_1
.end method

.method public static declared-synchronized requestForBrightnessMax(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 82
    const-class v1, Lcom/android/settings/framework/request/HtcCameraRequest;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mCameraMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    monitor-exit v1

    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mCameraMode:Z

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    sget v3, Lcom/android/settings/framework/request/HtcCameraRequest;->mAutomaticMode:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mAutomaticMode:I

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    sget v3, Lcom/android/settings/framework/request/HtcCameraRequest;->mBrightness:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mBrightness:I

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    const/16 v0, 0xff

    invoke-static {v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->setUnderlyingBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized requestForBrightnessNormal(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 125
    const-class v1, Lcom/android/settings/framework/request/HtcCameraRequest;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mCameraMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mCameraMode:Z

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    sget v3, Lcom/android/settings/framework/request/HtcCameraRequest;->mAutomaticMode:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    sget v3, Lcom/android/settings/framework/request/HtcCameraRequest;->mBrightness:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    sget v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mAutomaticMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 147
    sget v0, Lcom/android/settings/framework/request/HtcCameraRequest;->mBrightness:I

    invoke-static {v0}, Lcom/android/settings/framework/request/HtcCameraRequest;->setUnderlyingBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setUnderlyingBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 162
    const-class v3, Lcom/android/settings/framework/request/HtcCameraRequest;

    monitor-enter v3

    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 165
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 167
    :try_start_1
    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 162
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #power:Landroid/os/IPowerManager;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
