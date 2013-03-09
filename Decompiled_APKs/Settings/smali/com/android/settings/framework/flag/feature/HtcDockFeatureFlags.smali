.class public Lcom/android/settings/framework/flag/feature/HtcDockFeatureFlags;
.super Ljava/lang/Object;
.source "HtcDockFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportCarDock()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isS0002:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isK0002:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isE0002:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isM0002:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportDeskDock()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isF0001:Z

    return v0
.end method
