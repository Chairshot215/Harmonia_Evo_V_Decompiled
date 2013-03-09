.class public Lcom/android/settings/framework/flag/feature/HtcPenFeatureFlags;
.super Ljava/lang/Object;
.source "HtcPenFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPenSettingsVisibility()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v0

    return v0
.end method
