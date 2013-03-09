.class public interface abstract Lcom/google/android/voicesearch/speechservice/listener/InternalRecognitionListener;
.super Ljava/lang/Object;
.source "InternalRecognitionListener.java"


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onBufferReceived([B)V
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(IZ)V
.end method

.method public abstract onEvent(I)V
.end method

.method public abstract onInProgressPartialResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onInProgressResults(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReadyForSpeech(FF)V
.end method

.method public abstract onResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRmsChanged(F)V
.end method

.method public abstract onVoiceSearchResults(Ljava/util/ArrayList;Ljava/io/ByteArrayOutputStream;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Ljava/io/ByteArrayOutputStream;",
            "Z)V"
        }
    .end annotation
.end method
