.class public final Lcom/google/speech/synthesizer/flint/engine/api/ProjectFileApi;
.super Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.source "ProjectFileApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;-><init>()V

    return-void
.end method

.method public static native deleteProjectFile(J)V
.end method

.method public static native deleteProjectResourceHolder(J)V
.end method

.method public static native newProjectFile(JLjava/lang/Object;)J
.end method

.method public static native newProjectResourceHolder()J
.end method

.method public static native projectFileContains(JLjava/lang/String;)Z
.end method

.method public static native projectFileGet(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native projectFileSetPrefix(JLjava/lang/String;)V
.end method
