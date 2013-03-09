.class public Lcom/htc/wrap/android/media/HtcWrapAudioManager;
.super Landroid/media/AudioManager;
.source "HtcWrapAudioManager.java"


# static fields
.field public static final EXTRA_BEATSEFFECT_STATUS:Ljava/lang/String; = "android.media.EXTRA_BEATSEFFECT_STATUS"

.field public static final EXTRA_BEATS_HEADSET:Ljava/lang/String; = "android.media.EXTRA_HEADSET_TYPE"

.field public static final EXTRA_HEADSET_STATE:Ljava/lang/String; = "android.media.EXTRA_HEADSET_STATE"

.field public static final EXTRA_SOUNDEFFECT_STATUS:Ljava/lang/String; = "android.media.EXTRA_SOUNDEFFECT_STATUS"

.field public static final GLOBAL_BEATSEFFECT_CHANGE:Ljava/lang/String; = "android.media.GLOBAL_BEATSEFFECT_CHANGE"

.field public static final GLOBAL_SOUNDEFFECT_BEATS:I = 0x1

.field public static final GLOBAL_SOUNDEFFECT_CHANGE:Ljava/lang/String; = "android.media.GLOBAL_SOUNDEFFECT_CHANGE"

.field public static final GLOBAL_SOUNDEFFECT_ERROR:I = -0x1

.field public static final GLOBAL_SOUNDEFFECT_NONE:I = 0x0

.field public static final GLOBAL_SOUNDEFFECT_SRS:I = 0x2

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static getBeatsState(Landroid/media/AudioManager;)Z
    .locals 1
    .parameter "am"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/media/AudioManager;->getBeatsState()Z

    move-result v0

    return v0
.end method

.method public static getGlobalSoundEffect(Landroid/media/AudioManager;)I
    .locals 1
    .parameter "am"

    .prologue
    .line 92
    const/4 v0, -0x1

    return v0
.end method

.method public static isBeatsHeadset(Landroid/media/AudioManager;)Z
    .locals 1
    .parameter "am"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/media/AudioManager;->isBeatsHeadset()Z

    move-result v0

    return v0
.end method

.method public static isSupportBeats()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/media/AudioManager;->isSupportBeats()Z

    move-result v0

    return v0
.end method

.method public static setBeatsState(Landroid/media/AudioManager;ZLjava/lang/String;)V
    .locals 0
    .parameter "am"
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->setBeatsState(ZLjava/lang/String;)V

    .line 60
    return-void
.end method

.method public static setCSCallVolumeOn(Landroid/media/AudioManager;Z)V
    .locals 0
    .parameter "am"
    .parameter "on"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setCSCallVolumeOn(Z)V

    .line 68
    return-void
.end method

.method public static setGlobalSoundEffect(Landroid/media/AudioManager;ILjava/lang/String;)V
    .locals 0
    .parameter "am"
    .parameter "mode"
    .parameter "appName"

    .prologue
    .line 89
    return-void
.end method

.method public static setVolumePanelOrientation(Landroid/media/AudioManager;I)V
    .locals 0
    .parameter "am"
    .parameter "orientation"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setVolumePanelOrientation(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public getBeatsState()Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/media/AudioManager;->getBeatsState()Z

    move-result v0

    return v0
.end method

.method public getGlobalSoundEffect()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, -0x1

    return v0
.end method

.method public isBeatsHeadset()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/media/AudioManager;->isBeatsHeadset()Z

    move-result v0

    return v0
.end method

.method public setBeatsState(ZLjava/lang/String;)V
    .locals 0
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/media/AudioManager;->setBeatsState(ZLjava/lang/String;)V

    .line 43
    return-void
.end method

.method public setCSCallVolumeOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/media/AudioManager;->setCSCallVolumeOn(Z)V

    .line 30
    return-void
.end method

.method public setGlobalSoundEffect(ILjava/lang/String;)V
    .locals 0
    .parameter "mode"
    .parameter "appName"

    .prologue
    .line 97
    return-void
.end method

.method public setVolumePanelOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/media/AudioManager;->setVolumePanelOrientation(I)V

    .line 34
    return-void
.end method
