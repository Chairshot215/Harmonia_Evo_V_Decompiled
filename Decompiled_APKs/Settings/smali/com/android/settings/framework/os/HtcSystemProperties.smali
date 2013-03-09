.class public final Lcom/android/settings/framework/os/HtcSystemProperties;
.super Landroid/os/SystemProperties;
.source "HtcSystemProperties.java"


# static fields
.field public static final BUILD_DATE_TIME:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final HARDWARE_ACCELERATION:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final HARDWARE_VERSION:Ljava/lang/String; = "ro.revision"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/SystemProperties;-><init>()V

    return-void
.end method

.method public static getBuildDateTimeValue()J
    .locals 4

    .prologue
    .line 51
    const-string v0, "persist.sys.ui.hw"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getHardwareAcceleration()Z
    .locals 2

    .prologue
    .line 60
    const-string v0, "persist.sys.ui.hw"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHardwareVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "def"

    .prologue
    .line 77
    const-string v0, "ro.revision"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setHardwareAcceleration(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 68
    const-string v1, "persist.sys.ui.hw"

    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
