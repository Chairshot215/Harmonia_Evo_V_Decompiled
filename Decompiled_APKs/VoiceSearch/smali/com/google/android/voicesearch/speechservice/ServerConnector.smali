.class public interface abstract Lcom/google/android/voicesearch/speechservice/ServerConnector;
.super Ljava/lang/Object;
.source "ServerConnector.java"


# virtual methods
.method public abstract cancelRecognition()V
.end method

.method public abstract close()V
.end method

.method public abstract connect(IJLcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
.end method

.method public abstract postAudioChunk(Ljava/nio/ByteBuffer;Z)V
.end method

.method public abstract scheduleSendClientReport()V
.end method

.method public abstract sendClientReports()V
.end method

.method public abstract setCallback(Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;)V
.end method

.method public abstract setEndOfSpeech()V
.end method

.method public abstract setEndpointTriggerType(I)V
.end method

.method public abstract setRequestStatus(I)V
.end method
