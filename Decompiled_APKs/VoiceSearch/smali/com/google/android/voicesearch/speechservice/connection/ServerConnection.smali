.class public interface abstract Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;
.super Ljava/lang/Object;
.source "ServerConnection.java"


# virtual methods
.method public abstract connect(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation
.end method

.method public abstract getTrafficFlag()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isRequestIdSupported()Z
.end method

.method public abstract sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation
.end method
