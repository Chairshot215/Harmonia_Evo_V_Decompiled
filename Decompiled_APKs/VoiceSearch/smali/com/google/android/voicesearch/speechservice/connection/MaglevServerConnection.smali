.class public Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;
.super Ljava/lang/Object;
.source "MaglevServerConnection.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;


# instance fields
.field private mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

.field private final mMaglevHost:Ljava/lang/String;

.field private final mMaglevPort:I

.field private final mMaglevPrefix:Ljava/lang/String;

.field private final mNetworkConnectionTimeoutMillis:I

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/GservicesHelper;)V
    .locals 1
    .parameter "gServicesHelper"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/voicesearch/GservicesHelper;->getDirectTcpHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mMaglevHost:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/voicesearch/GservicesHelper;->getDirectTcpPort()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mMaglevPort:I

    .line 54
    invoke-virtual {p1}, Lcom/google/android/voicesearch/GservicesHelper;->getDirectTcpPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mMaglevPrefix:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/voicesearch/GservicesHelper;->getNetworkTimeout()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mNetworkConnectionTimeoutMillis:I

    .line 56
    return-void
.end method

.method private createTcpConnection(Ljava/lang/String;I)V
    .locals 5
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v1, "MaglevServerConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating TCP connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v1, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mNetworkConnectionTimeoutMillis:I

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    .line 71
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->start(Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mMaglevPrefix:Ljava/lang/String;

    const-string v3, "_"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/voicesearch/util/TextUtil;->hexToBytes(Ljava/lang/CharSequence;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->sendPlainBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;

    const-string v2, "Failed to send request"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 61
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mCallback:Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;

    .line 62
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 63
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mMaglevHost:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mMaglevPort:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->createTcpConnection(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Protocol;->TCP_DIRECT:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRecognizeRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 66
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->close()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    .line 89
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public getTrafficFlag()I
    .locals 1

    .prologue
    .line 114
    const/high16 v0, 0x1

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->isConnected()Z

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
    .line 104
    const/4 v0, 0x1

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
    .line 93
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;->mTcpConnection:Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/tcp/DirectTcpConnectionImpl;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 94
    return-void
.end method
