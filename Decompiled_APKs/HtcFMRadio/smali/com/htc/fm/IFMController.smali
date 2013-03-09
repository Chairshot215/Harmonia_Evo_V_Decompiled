.class public interface abstract Lcom/htc/fm/IFMController;
.super Ljava/lang/Object;
.source "IFMController.java"


# static fields
.field public static final ACTION_INIT:I = 0x8

.field public static final ACTION_NOTIFY_SERVICE_BINDED:I = 0xf

.field public static final ACTION_NOTIFY_SERVICE_UNBINDED:I = 0x10

.field public static final ACTION_NOTIFY_STATUS_OFF:I = 0xe

.field public static final ACTION_NOTIFY_STATUS_ON:I = 0xc

.field public static final ACTION_NOTIFY_STATUS_TURNING_OFF:I = 0xd

.field public static final ACTION_NOTIFY_STATUS_TURNING_ON:I = 0xb

.field public static final ACTION_ON_SEEKED:I = 0x3

.field public static final ACTION_ON_TUNED:I = 0x2

.field public static final ACTION_PREPARING:I = 0x9

.field public static final ACTION_SET_STATUS_OFF:I = 0x1

.field public static final ACTION_TURN_OFF:I = 0xa


# virtual methods
.method public abstract bindService()Z
.end method

.method public abstract disableAudio()Z
.end method

.method public abstract getAirModeWarningMessage()Ljava/lang/String;
.end method

.method public abstract getAudioPath()I
.end method

.method public abstract getBand()I
.end method

.method public abstract getCmdState()I
.end method

.method public abstract getFirstPresetId()I
.end method

.method public abstract getFrequency()I
.end method

.method public abstract getHeadsetWarningMessage()Ljava/lang/String;
.end method

.method public abstract getRds()Ljava/lang/String;
.end method

.method public abstract getRssi()I
.end method

.method public abstract getState()I
.end method

.method public abstract getStateMessage()Ljava/lang/String;
.end method

.method public abstract isFMPlaying()Z
.end method

.method public abstract isFMReady()Z
.end method

.method public abstract isRdsOn()Z
.end method

.method public abstract isRssiOn()Z
.end method

.method public abstract isScanning()Z
.end method

.method public abstract onPresetUpdated(I)V
.end method

.method public abstract scan()V
.end method

.method public abstract seekDown()Z
.end method

.method public abstract seekUp()Z
.end method

.method public abstract serviceBinded()Z
.end method

.method public abstract setAutoPreScanEnabled(Z)V
.end method

.method public abstract setBand(I)V
.end method

.method public abstract setHeadsetOut()Z
.end method

.method public abstract setMono()Z
.end method

.method public abstract setMute()V
.end method

.method public abstract setOnEventChangedListener(Lcom/htc/fm/OnEventChangedListener;)V
.end method

.method public abstract setOnServiceStateChangedListener(Lcom/htc/fm/OnServiceStateChangedListener;)V
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

.method public abstract setUnMute()V
.end method

.method public abstract start()Z
.end method

.method public abstract stopScan()V
.end method

.method public abstract tune(I)Z
.end method

.method public abstract turnOff()Z
.end method

.method public abstract turnOn(I)Z
.end method

.method public abstract turnOn(II)Z
.end method

.method public abstract unbindService()Z
.end method
