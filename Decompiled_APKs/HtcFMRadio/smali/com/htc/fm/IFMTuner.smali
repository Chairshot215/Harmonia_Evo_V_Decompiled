.class public interface abstract Lcom/htc/fm/IFMTuner;
.super Ljava/lang/Object;
.source "IFMTuner.java"


# static fields
.field public static final AF_STATE_OFF:I = 0x0

.field public static final AF_STATE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_DIGITAL:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final MUTE_STATE_MUTED:I = 0x1

.field public static final MUTE_STATE_UNMUTED:I = 0x2

.field public static final RDS_STATE_OFF:I = 0x0

.field public static final RDS_STATE_ON:I = 0x1


# virtual methods
.method public abstract getAudioMode()I
.end method

.method public abstract getAudioPath()I
.end method

.method public abstract getCmdState()I
.end method

.method public abstract getFreq()I
.end method

.method public abstract getState()I
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isMute()Z
.end method

.method public abstract isNeedVolumeAdjust()Z
.end method

.method public abstract isRdsOn()Z
.end method

.method public abstract isRssiOn()Z
.end method

.method public abstract isWeakSignal()Z
.end method

.method public abstract seekDown()Z
.end method

.method public abstract seekUp()Z
.end method

.method public abstract setBand(I)Z
.end method

.method public abstract setHeadsetOut()Z
.end method

.method public abstract setMono()Z
.end method

.method public abstract setOnEventChangedListener(Lcom/htc/fm/OnEventChangedListener;)V
.end method

.method public abstract setOnStateChangedListener(Lcom/htc/fm/OnStateChangedListener;)V
.end method

.method public abstract setRdsOff()Z
.end method

.method public abstract setRdsOn()Z
.end method

.method public abstract setRssiOff()Z
.end method

.method public abstract setRssiOn()Z
.end method

.method public abstract setSpeakerOut()Z
.end method

.method public abstract setStereo()Z
.end method

.method public abstract setVolume(ID)Z
.end method

.method public abstract status()I
.end method

.method public abstract tune(I)Z
.end method

.method public abstract tuneFirst()Z
.end method

.method public abstract turnOff()Z
.end method

.method public abstract turnOn(I)Z
.end method

.method public abstract volumeDown()Z
.end method

.method public abstract volumeUp()Z
.end method
