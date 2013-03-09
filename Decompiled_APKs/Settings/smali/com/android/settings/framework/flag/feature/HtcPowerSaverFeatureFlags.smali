.class public Lcom/android/settings/framework/flag/feature/HtcPowerSaverFeatureFlags;
.super Ljava/lang/Object;
.source "HtcPowerSaverFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportPowerSaverSettings(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    .line 37
    .local v0, senseVersion:F
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isB0002:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0005:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0006:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isT0001:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0003:Z

    if-nez v2, :cond_0

    const/high16 v2, 0x4000

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 48
    .local v1, support:Z
    :goto_0
    return v1

    .line 46
    .end local v1           #support:Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #support:Z
    goto :goto_0
.end method
