.class public Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;
.super Ljava/lang/Object;
.source "ProtoBufUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addConfigurableGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V
    .locals 8
    .parameter "grammar"
    .parameter "p"
    .parameter "addContactsTokens"

    .prologue
    .line 225
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    move-result-object v2

    .line 226
    .local v2, configurableGrammar:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, authTokens:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 229
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->setUseSpeechpersonalizationGaiaAuthenticationTokens(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    .line 230
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 231
    .local v3, contactToken:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->addGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #authTokens:[Ljava/lang/String;
    .end local v3           #contactToken:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    sget-object v6, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;->configurableGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ConfigurableGrammar;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 236
    return-void
.end method

.method private static addIntentGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 4
    .parameter "grammar"
    .parameter "p"

    .prologue
    .line 206
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    .line 207
    .local v0, intentApiGrammar:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLanguageModel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLanguageModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->setLanguageModel(Ljava/lang/String;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMaxResults()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->setMaxNbest(I)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 211
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    .line 212
    .local v1, recognitionContext:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->setRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 215
    :cond_1
    sget-object v2, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->intentApiGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->build()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 216
    return-void
.end method

.method private static addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "googleSearchRequest"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 527
    invoke-static {p1, p2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->addAttributes(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 528
    return-void
.end method

.method public static asShortString(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 686
    const-string v1, "RequestMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v1, "Header["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getRequestId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReportRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    const-string v1, ",ClientReportRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asShortString(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 543
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "RecognizeResponse:["

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    const-string v0, "status="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getStatus()Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 548
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    .line 551
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 552
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v4

    .line 553
    const-string v1, ",recognition_result("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 557
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_0
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v1

    .line 563
    const-string v2, ",alternates=#"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanCount()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    .line 566
    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getAlternatesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protos/speech/common/Alternates$Alternate;

    .line 567
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getStart()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/protos/speech/common/Alternates$Alternate;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasStartTimeUsec()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasEndTimeUsec()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStartTimeUsec()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 577
    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getEndTimeUsec()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 581
    :cond_3
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasUtteranceId()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 582
    const-string v1, ",utteranceId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_4
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 588
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v2

    .line 589
    const-string v1, ",appData["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 592
    const-string v1, ",[gaiaStatusList="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->gaiaStatusList:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;

    .line 595
    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatusList;->getGaiaStatusList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;

    .line 596
    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GaiaStatus;->getErrorStatus()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ApplicationErrorStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 599
    :cond_5
    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_6
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 603
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    .line 605
    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretationCount()I

    move-result v1

    .line 606
    const-string v2, ",actionResponse"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    const-string v2, "[numInterpretations="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_7
    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    :cond_8
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasApplicationErrorCode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",applicationErrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getApplicationErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_9
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasGaiaResult()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 618
    const-string v1, ",gaiaResult="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 621
    :cond_a
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialResult()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 622
    const-string v1, ",partialResult"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getPartCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 624
    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getPart(I)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getTranscript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getPart(I)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;->getStabilityConfidence()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 630
    :cond_b
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_2
    return-object v0

    :cond_c
    const-string v0, "Unknown"

    goto :goto_2
.end method

.method private static makeActionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 8
    .parameter "p"

    .prologue
    .line 416
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v2

    .line 417
    .local v2, actionRequest:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSupportedActionInterpretations()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 418
    .local v4, interpretation:I
    invoke-static {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    .line 419
    .local v0, action:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v2, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->addSupportedAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    goto :goto_0

    .line 423
    .end local v0           #action:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .end local v4           #interpretation:I
    :cond_1
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeWebSearchRequestData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->setWebsearchRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    .line 425
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMultislotActionType()I

    move-result v5

    .line 426
    .local v5, multislotActionType:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 430
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v1

    .line 431
    .local v1, actionContext:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->setActionType(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 432
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMultislotActionSelectedSlot()Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, selectedSlot:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 434
    invoke-virtual {v1, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->setSelectedSlot(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 436
    :cond_2
    invoke-virtual {v2, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->setMultislotActionContext(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    .line 439
    .end local v1           #actionContext:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .end local v6           #selectedSlot:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v7

    return-object v7
.end method

.method private static makeApplicationData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 3
    .parameter "p"

    .prologue
    .line 405
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    .line 406
    .local v0, requestAppData:Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    sget-object v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->actionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeActionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 407
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static makeCancelRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter "p"

    .prologue
    .line 330
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->cancelRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CancelRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$CancelRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CancelRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static makeClientReportRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 4
    .parameter "p"
    .parameter "clientReport"

    .prologue
    .line 350
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    .line 351
    .local v0, request:Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->setClientReport(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    .line 352
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReportRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method public static makeClientReportRequest(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 4
    .parameter "messageHeader"
    .parameter "clientReport"

    .prologue
    .line 358
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    move-result-object v0

    .line 359
    .local v0, request:Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->setClientReport(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;

    .line 360
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;->clientReportRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ClientReportRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ClientReportRequest;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method public static makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 8
    .parameter "p"
    .parameter "protocol"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    .line 158
    .local v0, ap:Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    sget-object v4, Lcom/google/protos/speech/service/SpeechService$Encoding;->AMR_NB:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v0, v4}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setEncoding(Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 159
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAudioSampleRate()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setSampleRate(I)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 160
    invoke-virtual {v0, v7}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setEndpointerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 164
    invoke-virtual {v0, v6}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->setNoiseCancelerEnabled(Z)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    .line 166
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v2

    .line 167
    .local v2, csr:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    invoke-virtual {v2, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocol(Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 170
    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setInputAudioParameters(Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 175
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getExperimentHash()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 177
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getCookie()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, cookie:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v2, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setCookie(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setLocale(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 187
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v3

    .line 188
    .local v3, pf:Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;
    invoke-virtual {v3, v7}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableAck(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 189
    invoke-virtual {v3, v6}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableInProgressResponse(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 190
    sget-object v4, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    if-eq p1, v4, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isPartialTranscriptsEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnablePartialResults(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isAlternatesEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setEnableRecognitionAlternates(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 194
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isDictationMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;->setDictationMode(Z)Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    .line 196
    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocolFeatures(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 198
    sget-object v4, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v5

    invoke-static {p0, v4, v5, v6}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v4

    return-object v4
.end method

.method public static makeCreateSessionRequestForClientReport(Landroid/content/Context;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 6
    .parameter "context"

    .prologue
    .line 141
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    move-result-object v0

    .line 142
    .local v0, csr:Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;
    sget-object v2, Lcom/google/protos/speech/service/SpeechService$Protocol;->HTTP:Lcom/google/protos/speech/service/SpeechService$Protocol;

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocol(Lcom/google/protos/speech/service/SpeechService$Protocol;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 143
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/Utils;->buildClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setClientId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 144
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures;->newBuilder()Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setProtocolFeatures(Lcom/google/protos/speech/service/SpeechService$ProtocolFeatures$Builder;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 146
    const-string v2, "en-US"

    invoke-virtual {v0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->setLocale(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;

    .line 148
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v1

    .line 149
    .local v1, header:Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    const-string v2, "voice-search"

    invoke-virtual {v1, v2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 151
    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v2

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;->createSessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CreateSessionRequest;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v2

    return-object v2
.end method

.method public static makeDestroySessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 3
    .parameter "p"

    .prologue
    .line 335
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public static makeDestroySessionRequestForClientReport()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 5

    .prologue
    .line 340
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    .line 341
    .local v0, header:Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    const-string v1, "voice-search"

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 343
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    sget-object v2, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->destroySessionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method public static makeMediaDataRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;[BZ)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 4
    .parameter "p"
    .parameter "audioData"
    .parameter "endOfData"

    .prologue
    .line 323
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaData;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    move-result-object v0

    .line 324
    .local v0, mediaData:Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;
    invoke-virtual {v0, p2}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->setEndOfData(Z)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    .line 325
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;

    .line 326
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$MediaData;->mediaData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MediaData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MediaData;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method public static makeMessageHeader(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 2
    .parameter "p"
    .parameter "isClientReport"

    .prologue
    .line 390
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    .line 391
    .local v0, header:Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 392
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v1

    if-lez v1, :cond_1

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setRequestId(I)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 399
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 401
    :cond_2
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    return-object v1
.end method

.method public static makeRecognitionContext(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 4
    .parameter "b"
    .parameter "language"
    .parameter "refererUrl"

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const/4 v3, 0x0

    .line 132
    :goto_0
    return-object v3

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v2

    .line 114
    .local v2, rc:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    const-string v3, "packageName"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v2, v1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 118
    :cond_1
    const-string v3, "hint"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, hint:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v2, v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setHint(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 122
    :cond_2
    const-string v3, "inputType"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    const-string v3, "inputType"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setInputType(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 125
    :cond_3
    const-string v3, "imeOptions"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    const-string v3, "imeOptions"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setImeOptions(I)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 129
    :cond_4
    if-eqz p2, :cond_5

    .line 130
    invoke-virtual {v2, p2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->setReferer(Ljava/lang/String;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 132
    :cond_5
    invoke-virtual {v2}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v3

    goto :goto_0
.end method

.method public static makeRecognizeRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 7
    .parameter "p"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 239
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    move-result-object v2

    .line 241
    .local v2, request:Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->newBuilder()Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;

    move-result-object v1

    .line 242
    .local v1, grammar:Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isIntentApiMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    invoke-static {v1, p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addIntentGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    .line 246
    invoke-static {v1, p0, v6}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addConfigurableGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V

    .line 261
    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 263
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getClientApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, clientApplicationId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v2, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setClientApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 268
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isProfanityFilterEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setEnableProfanityFilter(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 270
    invoke-static {p0, v2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->setPersonalizationToken(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isAlternatesEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$AlternateParams;->newBuilder()Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAlternateMaxSpanLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getAlternateMaxTotalSpanLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setMaxTotalSpanLength(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;->setUnit(I)Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setAlternateParams(Lcom/google/protos/speech/common/Alternates$AlternateParams$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 279
    :cond_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$InputModality;->PUSH_TO_TALK:Lcom/google/protos/speech/service/SpeechService$InputModality;

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputModality(Lcom/google/protos/speech/service/SpeechService$InputModality;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 280
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$InputDevice;->EMBEDDED_MICROPHONE:Lcom/google/protos/speech/service/SpeechService$InputDevice;

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputDevice(Lcom/google/protos/speech/service/SpeechService$InputDevice;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 281
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isCarDock()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_CAR_DOCK:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 287
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->hasNoiseEstmation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSnr()F

    move-result v3

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setSnr(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 289
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getNoiseLevel()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setNoiseLevel(I)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 292
    :cond_2
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->recognizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    move-result-object v4

    invoke-static {p0, v3, v4, v6}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v3

    return-object v3

    .line 247
    .end local v0           #clientApplicationId:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isDictationMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 250
    invoke-static {v1, p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addIntentGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    .line 251
    invoke-static {v1, p0, v5}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addConfigurableGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V

    goto/16 :goto_0

    .line 255
    :cond_4
    invoke-static {v1, p0, v5}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addConfigurableGrammar(Lcom/google/protos/speech/service/SpeechService$Grammar$Builder;Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)V

    .line 259
    invoke-static {p0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeApplicationData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    goto/16 :goto_0

    .line 284
    .restart local v0       #clientApplicationId:Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$InputEnvironment;->MOBILE_UNDOCKED:Lcom/google/protos/speech/service/SpeechService$InputEnvironment;

    invoke-virtual {v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setInputEnvironment(Lcom/google/protos/speech/service/SpeechService$InputEnvironment;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    goto :goto_1
.end method

.method private static makeRequestAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 531
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    .line 532
    .local v0, attr:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->setName(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    .line 533
    invoke-virtual {v0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->setValue(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    .line 534
    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    return-object v1
.end method

.method private static makeRequestMessage(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1
    .parameter "p"
    .parameter
    .parameter
    .parameter "isClientReport"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "TT;>;TT;Z)",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<Lcom/google/protos/speech/service/SpeechService$RequestMessage;TT;>;"
    .local p2, extensionValue:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeMessageHeader(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestMessage(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method private static makeRequestMessage(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 2
    .parameter "messageHeader"
    .parameter
    .parameter
    .parameter "isClientReport"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protos/speech/service/SpeechService$MessageHeader;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            "TT;>;TT;Z)",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, extension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,"Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<Lcom/google/protos/speech/service/SpeechService$RequestMessage;TT;>;"
    .local p2, extensionValue:Ljava/lang/Object;,"TT;"
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    .line 381
    .local v0, requestMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->setHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 382
    invoke-virtual {v0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->setExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 383
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    return-object v1
.end method

.method private static makeWebSearchRequestData(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 11
    .parameter "p"

    .prologue
    .line 446
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 448
    .local v7, utteranceId:Ljava/lang/String;
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v5

    .line 449
    .local v5, pb:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 450
    invoke-virtual {v5, v7}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setUtteranceId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 451
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSafeSearchSetting()I

    move-result v9

    invoke-static {v9}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->valueOf(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setSafeSearchFilter(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 453
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getUserAgent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setClientId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 456
    const-string v9, "hl"

    invoke-static {}, Lcom/google/android/voicesearch/LanguagePrefManager;->getHlParameter()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v9, "gl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v9, "ie"

    const-string v10, ""

    invoke-static {v5, v9, v10}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v9, "v"

    const-string v10, ""

    invoke-static {v5, v9, v10}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v9, "client"

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRevClientId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v9, "source"

    const-string v10, "mobilesearchapp-vs"

    invoke-static {v5, v9, v10}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v9, "channel"

    const-string v10, "iss"

    invoke-static {v5, v9, v10}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->addSearchAttribute(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getGeoPosition()Ljava/lang/String;

    move-result-object v4

    .line 467
    .local v4, latLong:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 468
    const-string v9, "Geo-Position"

    invoke-static {v9, v4}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRequestAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->addHttpHeader(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 484
    :cond_0
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 486
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v8

    .line 487
    .local v8, webSearchRequestData:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    invoke-virtual {v5}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setGoogleSearchRequestProto(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 489
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMofeHttpUrl()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, httpUrl:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v8, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setServerHttpUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getMofeProtoUrl()Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, protoUrl:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 496
    invoke-virtual {v8, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setServerProtoUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 499
    :cond_2
    sget-object v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->GZIP:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v8, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 501
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSupportedActionInterpretations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 502
    .local v3, interpretation:I
    const/16 v9, 0x8

    if-eq v3, v9, :cond_3

    .line 503
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v0

    .line 504
    .local v0, action:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v0, :cond_3

    .line 505
    invoke-virtual {v8, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->addSkipWebsearchAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    goto :goto_0

    .line 520
    .end local v0           #action:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .end local v3           #interpretation:I
    :cond_4
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 522
    invoke-virtual {v8}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v9

    return-object v9
.end method

.method private static setPersonalizationToken(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;)V
    .locals 5
    .parameter "recParams"
    .parameter "request"

    .prologue
    const/4 v3, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isPersonalizationSet()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->isPersonalizationEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 300
    .local v2, personalizationOptIn:Z
    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setPersonalizationOptIn(Z)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, authToken:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechPersonalizationServiceAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;->setGaiaAuthenticationToken(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognizeRequest$Builder;

    .line 319
    :cond_1
    return-void

    .end local v0           #authToken:Ljava/lang/String;
    .end local v2           #personalizationOptIn:Z
    :cond_2
    move v2, v3

    .line 297
    goto :goto_0

    .line 309
    .restart local v0       #authToken:Ljava/lang/String;
    .restart local v2       #personalizationOptIn:Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getContactAuthTokens()[Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, authTokens:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 312
    aget-object v0, v1, v3

    goto :goto_1
.end method

.method public static verifyInProgressRecognizeResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 637
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 678
    :goto_0
    return v0

    .line 641
    :cond_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    .line 644
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialResult()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 645
    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasPartialResult()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getPartialResult()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getPartCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 650
    const-string v0, "ProtoBufUtils"

    const-string v2, "#verifyInProgressRecognizeResponse - missing partial results"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 651
    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasRecognitionResult()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 656
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getRecognitionResult()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasUtteranceId()Z

    move-result v2

    if-nez v2, :cond_3

    .line 659
    const-string v0, "ProtoBufUtils"

    const-string v2, "#verifyInProgressRecognizeResponse - missing utterance id"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 660
    goto :goto_0

    .line 663
    :cond_3
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v2

    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    if-ne v2, v3, :cond_5

    .line 664
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesisCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 665
    const-string v0, "ProtoBufUtils"

    const-string v2, "#verifyInProgressRecognizeResponse - missing hypotesis in successful response"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 667
    goto :goto_0

    .line 670
    :cond_4
    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasSentence()Z

    move-result v0

    if-nez v0, :cond_5

    .line 671
    const-string v0, "ProtoBufUtils"

    const-string v2, "#verifyInProgressRecognizeResponse - missing sentence successful response"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 673
    goto :goto_0

    .line 678
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method
