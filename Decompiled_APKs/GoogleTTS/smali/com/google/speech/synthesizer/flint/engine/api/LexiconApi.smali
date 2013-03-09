.class public final Lcom/google/speech/synthesizer/flint/engine/api/LexiconApi;
.super Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;
.source "LexiconApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/speech/synthesizer/flint/engine/api/ApiBase;-><init>()V

    return-void
.end method

.method public static native deleteLexicon(J)V
.end method

.method public static native lexEntryToString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native lexiconAdd(JLjava/lang/String;)V
.end method

.method public static native lexiconContains(JLjava/lang/String;)Z
.end method

.method public static native lexiconLoad(JJ)J
.end method

.method public static native lexiconPron(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native lexiconRemove(JLjava/lang/String;)V
.end method

.method public static native lexiconSave(Ljava/lang/String;J)V
.end method

.method public static native lexiconSpellings(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public static native lexiconWordIdsFromSpelling(JLjava/lang/String;)Ljava/lang/String;
.end method
