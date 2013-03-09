.class public final Lcom/google/speech/synthesizer/flint/engine/api/CommonApi;
.super Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.source "CommonApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;-><init>()V

    return-void
.end method

.method public static native compileLinguisticAttributes(J)J
.end method

.method public static native deleteLinguisticAttributes(J)V
.end method

.method public static native deleteSynthesisOutput(JJ)V
.end method

.method public static native deleteSynthesisState(J)V
.end method

.method public static native getSynthesisStatus(J)Lcom/google/speech/synthesizer/flint/engine/api/SynthesisStatus;
.end method

.method public static native getVoiceType(J)Lcom/google/speech/synthesizer/flint/engine/api/VoiceType;
.end method

.method public static native getWaveData(J)Lcom/google/speech/synthesizer/flint/engine/api/WaveData;
.end method
