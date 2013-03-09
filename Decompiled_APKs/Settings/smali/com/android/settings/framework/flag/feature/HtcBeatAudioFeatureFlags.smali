.class public Lcom/android/settings/framework/flag/feature/HtcBeatAudioFeatureFlags;
.super Ljava/lang/Object;
.source "HtcBeatAudioFeatureFlags.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBeatAudioSettingsVisibility()Z
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/htc/wrap/android/media/HtcWrapAudioManager;->isSupportBeats()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcDeviceFlags;->isH0007:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcProjectFlags;->isA0003:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
