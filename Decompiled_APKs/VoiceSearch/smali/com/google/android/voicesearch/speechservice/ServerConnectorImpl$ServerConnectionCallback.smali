.class Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;
.super Ljava/lang/Object;
.source "ServerConnectorImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/connection/ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;-><init>(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)V

    return-void
.end method


# virtual methods
.method public onConnectionAlive()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$100(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onIsAlive()V

    .line 263
    return-void
.end method

.method public onException(Ljava/lang/Exception;I)V
    .locals 2
    .parameter "e"
    .parameter "clientPerceivedStatus"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;
    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$100(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V

    .line 273
    const-string v0, "ServerConnectorImpl"

    const-string v1, "connection exception received"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    invoke-virtual {v0, p2}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 275
    return-void
.end method

.method public onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    .locals 12
    .parameter "response"

    .prologue
    .line 285
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasHeader()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v3

    .local v3, header:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    if-nez v3, :cond_2

    .line 287
    .end local v3           #header:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    :cond_0
    const-string v9, "ServerConnectorImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No header in response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 296
    .restart local v3       #header:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    :cond_2
    sget-object v9, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v9}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 299
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionId()Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, sessionId:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$200(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setSessionId(Ljava/lang/String;)V

    .line 301
    const-string v9, "ServerConnectorImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Created session "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    invoke-static {v11}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$200(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v9, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v9}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    .line 305
    .local v8, sessionResponse:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    invoke-virtual {v8}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfigHash()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 306
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$300(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/voicesearch/Experiments;->getExperimentHash(Landroid/content/Context;)J

    move-result-wide v1

    .line 307
    .local v1, currentExperimentHash:J
    invoke-virtual {v8}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfigHash()I

    move-result v9

    int-to-long v4, v9

    .line 310
    .local v4, newExperimentHash:J
    cmp-long v9, v4, v1

    if-eqz v9, :cond_1

    .line 311
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$300(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4, v5}, Lcom/google/android/voicesearch/Experiments;->updateExperimentHash(Landroid/content/Context;J)V

    .line 313
    invoke-virtual {v8}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfig()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 314
    invoke-virtual {v8}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    .line 316
    .local v0, configBuf:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->hasClientParameters()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 317
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$300(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getClientParameters()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/voicesearch/Experiments;->setExperimentParameters(Landroid/content/Context;Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)V

    goto :goto_0

    .line 327
    .end local v0           #configBuf:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .end local v1           #currentExperimentHash:J
    .end local v4           #newExperimentHash:J
    .end local v7           #sessionId:Ljava/lang/String;
    .end local v8           #sessionResponse:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    :cond_3
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCurrentConnection:Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$400(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/voicesearch/speechservice/connection/ServerConnection;->isRequestIdSupported()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 328
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getRequestId()I

    move-result v6

    .line 329
    .local v6, requestId:I
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$200(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v9

    if-eq v6, v9, :cond_4

    .line 330
    const-string v9, "ServerConnectorImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discarding response with bad request id, current="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;
    invoke-static {v11}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$200(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", received="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .end local v6           #requestId:I
    :cond_4
    sget-object v9, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;->recognizeAck:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v9}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 338
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$500(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 339
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$500(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->ackReceived()V

    goto/16 :goto_0

    .line 343
    :cond_5
    sget-object v9, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v9}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 351
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getStatus()Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v9

    sget-object v10, Lcom/google/protos/speech/service/SpeechService$Status;->IN_PROGRESS:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v9, v10, :cond_6

    .line 352
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$100(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onInProgressResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    goto/16 :goto_0

    .line 356
    :cond_6
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$100(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    .line 357
    iget-object v9, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl$ServerConnectionCallback;->this$0:Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;

    #getter for: Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;
    invoke-static {v9}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->access$500(Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;)Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/voicesearch/speechservice/report/ClientReportBuilder;->responseReceived()V

    goto/16 :goto_0
.end method
