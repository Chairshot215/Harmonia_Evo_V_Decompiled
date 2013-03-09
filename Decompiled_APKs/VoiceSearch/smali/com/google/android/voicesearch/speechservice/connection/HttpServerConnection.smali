.class public Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;
.super Ljava/lang/Object;
.source "HttpServerConnection.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;


# instance fields
.field private mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private mPendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 50
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private initMessages()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->clearSession()V

    .line 64
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mPendingMessages:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-static {v1, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->incrementRequestId()V

    .line 67
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mPendingMessages:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRecognizeRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method


# virtual methods
.method public connect(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V
    .locals 1
    .parameter "params"
    .parameter "callback"

    .prologue
    .line 55
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    .line 56
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mPendingMessages:Ljava/util/List;

    .line 58
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->initMessages()V

    .line 59
    return-void
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mPendingMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "HttpServerConnection"

    const-string v4, "No messages to send"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 87
    const-string v3, "HttpServerConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous session not destroyed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    new-instance v3, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    .line 91
    const-string v3, "HttpServerConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect, [url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v5}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v5, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mPendingMessages:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .line 96
    .local v1, response:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    invoke-interface {v3, v1}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #response:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .end local v2           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    .line 100
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->initMessages()V

    throw v3

    .line 99
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/speech/service/SpeechService$ResponseMessage;>;"
    :cond_2
    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    .line 100
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->initMessages()V

    goto/16 :goto_0
.end method

.method public getTrafficFlag()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isRequestIdSupported()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 1
    .parameter "requestMessage"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
