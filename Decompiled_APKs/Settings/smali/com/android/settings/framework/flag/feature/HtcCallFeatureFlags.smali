.class public Lcom/android/settings/framework/flag/feature/HtcCallFeatureFlags;
.super Ljava/lang/Object;
.source "HtcCallFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportCallEntry()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->supportPhoneFunctionalities()Z

    move-result v0

    return v0
.end method
