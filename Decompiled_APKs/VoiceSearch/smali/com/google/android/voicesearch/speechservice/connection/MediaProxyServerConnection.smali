.class public Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;
.super Ljava/lang/Object;
.source "MediaProxyServerConnection.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;


# instance fields
.field private mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

.field private mContext:Landroid/content/Context;

.field private final mNetworkConnectionTimeoutMillis:I

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "networkTimeoutMillis"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mNetworkConnectionTimeoutMillis:I

    .line 55
    return-void
.end method

.method private createSession()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v2, "MediaProxyServerConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting TCP session, [url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, httpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_STUN:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-static {v2, v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    .line 76
    .local v1, requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    return-object v2

    .end local v1           #requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    throw v2
.end method

.method private createTcpConnection(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)V
    .locals 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasServerAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 112
    :cond_0
    new-instance v6, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v7, "Server response does not containt a server address"

    invoke-direct {v6, v7}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v2

    .line 116
    .local v2, serverAddress:Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getPort()I

    move-result v1

    .line 118
    .local v1, port:I
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getStunId()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, stunId:Ljava/lang/String;
    const-string v6, "MediaProxyServerConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating TCP connection to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 121
    .local v3, start:J
    new-instance v6, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    iget v7, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mNetworkConnectionTimeoutMillis:I

    invoke-direct {v6, v0, v1, v5, v7}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v6, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    .line 123
    iget-object v6, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    iget-object v7, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    invoke-virtual {v6, v7}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->start(Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V

    .line 125
    return-void
.end method

.method private destroySession()V
    .locals 4

    .prologue
    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, sessionId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 134
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->incrementRequestId()V

    .line 136
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeDestroySessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1           #sessionId:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    const-string v2, "MediaProxyServerConnection"

    const-string v3, "Destroying session failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public connect(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V
    .locals 2
    .parameter "params"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 61
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    .line 63
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->clearSession()V

    .line 64
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->createSession()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    .line 65
    .local v0, response:Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    invoke-interface {v1, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;->onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    .line 66
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->createTcpConnection(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)V

    .line 67
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRecognizeRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 68
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->destroySession()V

    .line 86
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->close()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    .line 90
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public getTrafficFlag()I
    .locals 1

    .prologue
    .line 155
    const/high16 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestIdSupported()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 1
    .parameter "requestMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/tcp/MediaProxyTcpConnectionImpl;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 95
    return-void
.end method
