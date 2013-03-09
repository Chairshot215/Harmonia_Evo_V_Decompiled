.class public interface abstract Lcom/android/internal/telephony/HtcIfCallManager;
.super Ljava/lang/Object;
.source "HtcIfCallManager.java"


# virtual methods
.method public abstract htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z
.end method

.method public abstract htcBlockRingingMT(Lcom/android/internal/telephony/Connection;)Z
.end method

.method public abstract htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setAudioMode(Z)V
.end method
