.class public interface abstract Lcom/google/android/voicesearch/speechservice/MicrophoneManager;
.super Ljava/lang/Object;
.source "MicrophoneManager.java"


# virtual methods
.method public abstract getEncoding()I
.end method

.method public abstract getSamplingRate()I
.end method

.method public abstract setEndpointerParams(Lcom/google/android/voicesearch/speechservice/RecognitionParameters$EndpointerParams;)V
.end method

.method public abstract setupMicrophone(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;ILjava/io/ByteArrayOutputStream;Z)Lcom/google/android/voicesearch/speechservice/AudioBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopListening()V
.end method
