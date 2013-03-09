.class public final Lcom/google/speech/synthesizer/flint/engine/api/TextAnalysisApi;
.super Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.source "TextAnalysisApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;-><init>()V

    return-void
.end method

.method public static native createTextNormalizer(JJ)J
.end method

.method public static native deleteTextNormalizer(J)V
.end method

.method public static native textStringToWordIds(JJLjava/lang/String;Lcom/google/speech/synthesizer/flint/engine/api/SentenceControls;)J
.end method

.method public static native wlStringToWordIds(JLjava/lang/String;)J
.end method
