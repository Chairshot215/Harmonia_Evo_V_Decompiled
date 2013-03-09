.class public final Lcom/google/speech/synthesizer/flint/engine/api/HmmSynthesizerApi;
.super Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.source "HmmSynthesizerApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;-><init>()V

    return-void
.end method

.method public static native hmmCreateSynthesizer(JJ)J
.end method

.method public static native hmmDeleteSynthesizer(J)V
.end method

.method public static native hmmGetVoiceSampleRate(J)I
.end method

.method public static native hmmInitBuffered(JJ)J
.end method

.method public static native hmmWaveGenerationBuffered(JJ[SJ)I
.end method

.method public static native hmmWaveGenerationToByteBuffer(JJLjava/nio/ByteBuffer;J)I
.end method

.method public static native hmmWaveGenerationWhole(JJ)Z
.end method

.method public static native wordIdsToUnits(JJ)Z
.end method
