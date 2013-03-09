.class public Lcom/android/settings/framework/flag/feature/HtcSearchFeatureFlags;
.super Ljava/lang/Object;
.source "HtcSearchFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final supportHardwareSearchKey()Z
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getSenseVersion()F

    move-result v0

    .line 29
    .local v0, senseVersion:F
    const v1, 0x40066666

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 32
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
