.class public final Lcom/google/speech/synthesizer/flint/engine/api/FileResourceApi;
.super Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.source "FileResourceApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;-><init>()V

    return-void
.end method

.method public static native deleteFileResource(J)V
.end method

.method public static native getFileResource(Ljava/lang/String;)J
.end method

.method public static native getMemoryFileResource(Ljava/lang/String;)J
.end method

.method public static native memoryResourceFromBuffer([B)J
.end method

.method public static native rewindFileResource(J)V
.end method
