.class public final Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private recognitionLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private synthesisVoice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9371
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9372
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 9373
    return-void
.end method

.method static synthetic access$11000()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9378
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecognitionLanguageIsMutable()V
    .locals 2

    .prologue
    .line 9486
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 9487
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9488
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9490
    :cond_0
    return-void
.end method

.method private ensureSynthesisVoiceIsMutable()V
    .locals 2

    .prologue
    .line 9575
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9576
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9577
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9579
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 9376
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 2

    .prologue
    .line 9399
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    .line 9400
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9401
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9403
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 4

    .prologue
    .line 9407
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 9408
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9409
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 9410
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9411
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9413
    :cond_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11202(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;

    .line 9414
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 9415
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9416
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9418
    :cond_1
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    #setter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11302(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;

    .line 9419
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2

    .prologue
    .line 9391
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1

    .prologue
    .line 9395
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter "index"

    .prologue
    .line 9499
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object v0
.end method

.method public getRecognitionLanguageCount()I
    .locals 1

    .prologue
    .line 9496
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter "index"

    .prologue
    .line 9588
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method public getSynthesisVoiceCount()I
    .locals 1

    .prologue
    .line 9585
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 9448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getRecognitionLanguageCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 9449
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9460
    :cond_0
    :goto_1
    return v1

    .line 9448
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9454
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getSynthesisVoiceCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 9455
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9454
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9460
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9366
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9366
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9366
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9467
    const/4 v2, 0x0

    .line 9469
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9474
    if-eqz v2, :cond_0

    .line 9475
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    .line 9478
    :cond_0
    return-object p0

    .line 9470
    :catch_0
    move-exception v1

    .line 9471
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-object v2, v0

    .line 9472
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9474
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 9475
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 9423
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 9444
    :cond_0
    :goto_0
    return-object p0

    .line 9424
    :cond_1
    #getter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9425
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9426
    #getter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9427
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9434
    :cond_2
    :goto_1
    #getter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9435
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9436
    #getter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9437
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    goto :goto_0

    .line 9429
    :cond_3
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9430
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9439
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9440
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    #getter for: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
