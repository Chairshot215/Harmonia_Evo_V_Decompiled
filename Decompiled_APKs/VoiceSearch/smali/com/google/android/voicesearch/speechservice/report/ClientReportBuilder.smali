.class public Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;
.super Ljava/lang/Object;
.source "ClientReportBuilder.java"


# instance fields
.field private final mClientReportSender:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

.field private final mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

.field private final mRecognitionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private final mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

.field private final mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;JLcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 1
    .parameter "clientReportSender"
    .parameter "startTimeMillis"
    .parameter "recognitionParams"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    .line 58
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mClientReportSender:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    .line 59
    iput-object p4, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mRecognitionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 60
    new-instance v0, Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-direct {v0, p2, p3}, Lcom/google/android/voicesearch/speechservice/StopWatch;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    .line 61
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 62
    return-void
.end method


# virtual methods
.method public declared-synchronized ackReceived()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/StopWatch;->getElapsedTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setRequestAckLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createClientReportRequest()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mRecognitionParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeClientReportRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endOfSpeech()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized responseReceived()V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mTotalLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/StopWatch;->getElapsedTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setTotalLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/StopWatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mUserPerceivedLatencyWatch:Lcom/google/android/voicesearch/speechservice/StopWatch;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/StopWatch;->getElapsedTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setUserPerceivedLatencyMs(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleSendClientReport()V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->createClientReportRequest()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 149
    .local v0, requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    const-string v1, "ClientReportBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->asShortString(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mClientReportSender:Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->createClientReportRequest()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportSender;->addReport(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 151
    return-void
.end method

.method public declared-synchronized setEndpointTriggerType(I)V
    .locals 4
    .parameter "triggerType"

    .prologue
    .line 118
    monitor-enter p0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 119
    :try_start_0
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    move-result-object v0

    .line 120
    .local v0, audioInputInfo:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->setEndpointTriggerType(Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$EndpointTriggerType;)Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;

    .line 121
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;->audioInputInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v0           #audioInputInfo:Lcom/google/protos/speech/service/ClientReportProto$AudioInputInfo$Builder;
    :cond_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNetworkType(I)V
    .locals 4
    .parameter "networkType"

    .prologue
    .line 107
    monitor-enter p0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    .line 109
    .local v0, mobileInfo:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->setNetworkType(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    .line 110
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    sget-object v2, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->mobileInfo:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v0           #mobileInfo:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRequestStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->mProtoBuilder:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->setClientPerceivedRequestStatus(Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
