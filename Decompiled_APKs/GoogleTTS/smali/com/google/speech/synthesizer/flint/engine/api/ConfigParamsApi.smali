.class public final Lcom/google/speech/synthesizer/flint/engine/api/ConfigParamsApi;
.super Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.source "ConfigParamsApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;-><init>()V

    return-void
.end method

.method public static native deleteParams(J)V
.end method

.method public static native getLanguageIdFromParams(J)Ljava/lang/String;
.end method

.method public static native loadParams(Ljava/lang/String;)J
.end method

.method public static native loadParamsFromResource(J)J
.end method
