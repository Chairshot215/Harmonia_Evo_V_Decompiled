.class public interface abstract Lcom/google/android/voicesearch/ime/formatter/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# virtual methods
.method public abstract formatAlternateSpan(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract formatPartialResult(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract formatResult(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleCommit(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/ExtractedText;)V
.end method

.method public abstract reset()V
.end method

.method public abstract startDictation(Landroid/view/inputmethod/ExtractedText;)V
.end method
