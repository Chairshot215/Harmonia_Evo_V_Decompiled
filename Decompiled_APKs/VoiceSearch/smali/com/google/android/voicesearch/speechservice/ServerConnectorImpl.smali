.class public Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;
.super Ljava/lang/Object;
.source "ServerConnectorImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/ServerConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$1;,
        Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

.field private mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

.field private final mConnectionCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

.field private final mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private final mReportSender:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

.field private final mTcpAttempts:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 65
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    .line 67
    new-instance v0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;-><init>(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$1;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mConnectionCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;

    .line 68
    new-instance v0, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mReportSender:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    .line 69
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getTcpAttempts()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpAttempts:I

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    return-object v0
.end method

.method private copyAudioData(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .parameter "audioChunk"

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 179
    .local v0, audioData:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 181
    return-object v0
.end method


# virtual methods
.method public cancelRecognition()V
    .locals 3

    .prologue
    .line 222
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Canceling recognition request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->getTrafficFlag()I

    move-result v1

    or-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCancelRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :try_start_1
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Sending cancel request failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .end local v0           #e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->disconnect()V

    .line 136
    :cond_0
    return-void
.end method

.method public connect(IJLcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 4
    .parameter "connectionAttempt"
    .parameter "startTimeMillis"
    .parameter "params"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    invoke-static {v1}, Lcom/google/android/voicesearch/util/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 89
    iput-object p4, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 90
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->clearSession()V

    .line 91
    new-instance v1, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mReportSender:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;-><init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;JLcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    .line 93
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->setNetworkType(I)V

    .line 94
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->disconnect()V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isPartialTranscriptsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpAttempts:I

    if-ge p1, v1, :cond_3

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/GservicesHelper;->getDirectTcpEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    new-instance v1, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-direct {v1, v2}, Lcom/google/android/voicesearch/speechservice/connection/MaglevServerConnection;-><init>(Lcom/google/android/voicesearch/GservicesHelper;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v1}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->getTrafficFlag()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mConnectionCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;

    invoke-interface {v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->connect(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 121
    :goto_1
    return-void

    .line 103
    :cond_2
    new-instance v1, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getNetworkTimeout()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/connection/MediaProxyServerConnection;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    goto :goto_0

    .line 107
    :cond_3
    new-instance v1, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/voicesearch/speechservice/connection/HttpServerConnection;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :try_start_1
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Failed to create session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 117
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_1

    .end local v0           #e:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v1
.end method

.method public postAudioChunk(Ljava/nio/ByteBuffer;Z)V
    .locals 4
    .parameter "audioChunk"
    .parameter "endOfData"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->copyAudioData(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeMediaDataRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;[BZ)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    .line 152
    .local v1, requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v2}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->getTrafficFlag()I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 158
    :try_start_0
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v2, v1}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 159
    if-eqz p2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    invoke-interface {v2}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/voicesearch/speechservice/connection/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 170
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, ex:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :try_start_1
    const-string v2, "ServerConnectorImpl"

    const-string v3, "Failed to send message"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 166
    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_0

    .end local v0           #ex:Lcom/google/android/voicesearch/speechservice/connection/ConnectionException;
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v2
.end method

.method public scheduleSendClientReport()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->scheduleSendClientReport()V

    goto :goto_0
.end method

.method public sendClientReports()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mReportSender:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->sendReports(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    .line 257
    return-void
.end method

.method public setCallback(Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    invoke-static {v0}, Lcom/google/android/voicesearch/util/Assert;->assertNull(Ljava/lang/Object;)V

    .line 82
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    .line 83
    return-void
.end method

.method public setEndOfSpeech()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->endOfSpeech()V

    .line 215
    :cond_0
    return-void
.end method

.method public setEndpointTriggerType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->setEndpointTriggerType(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public setRequestStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->setRequestStatus(I)V

    .line 205
    :cond_0
    return-void
.end method
