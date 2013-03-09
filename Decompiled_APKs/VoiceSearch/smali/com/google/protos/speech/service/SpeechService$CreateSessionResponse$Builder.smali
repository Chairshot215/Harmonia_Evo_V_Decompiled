.class public final Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$CreateSessionResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientExperimentConfigHash_:I

.field private clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

.field private serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

.field private stunId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12563
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 12675
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12771
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12564
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 12565
    return-void
.end method

.method static synthetic access$14400()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1

    .prologue
    .line 12570
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 12568
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 2

    .prologue
    .line 12595
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    .line 12596
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12597
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 12599
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 5

    .prologue
    .line 12603
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 12604
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12605
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 12606
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 12607
    or-int/lit8 v2, v2, 0x1

    .line 12609
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    #setter for: Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14602(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12610
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 12611
    or-int/lit8 v2, v2, 0x2

    .line 12613
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14702(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12614
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 12615
    or-int/lit8 v2, v2, 0x4

    .line 12617
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    #setter for: Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14802(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12618
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 12619
    or-int/lit8 v2, v2, 0x8

    .line 12621
    :cond_3
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfigHash_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->clientExperimentConfigHash_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14902(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I

    .line 12622
    #setter for: Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$15002(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;I)I

    .line 12623
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 2

    .prologue
    .line 12587
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

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
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12558
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    .locals 1

    .prologue
    .line 12591
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;
    .locals 1

    .prologue
    .line 12680
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    return-object v0
.end method

.method public hasServerAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12677
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 12646
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->hasServerAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12647
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12649
    const/4 v0, 0x0

    .line 12652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeClientExperimentConfig(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12795
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12797
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    invoke-static {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .line 12803
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12804
    return-object p0

    .line 12800
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfig_:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    goto :goto_0
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
    .line 12558
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12558
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

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
    .line 12558
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12659
    const/4 v2, 0x0

    .line 12661
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12666
    if-eqz v2, :cond_0

    .line 12667
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    .line 12670
    :cond_0
    return-object p0

    .line 12662
    :catch_0
    move-exception v1

    .line 12663
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-object v2, v0

    .line 12664
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12666
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 12667
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 12627
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 12642
    :cond_0
    :goto_0
    return-object p0

    .line 12628
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasServerAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12629
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeServerAddress(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    .line 12631
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasStunId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12632
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12633
    #getter for: Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->stunId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->access$14700(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->stunId_:Ljava/lang/Object;

    .line 12636
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfig()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12637
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->mergeClientExperimentConfig(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    .line 12639
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfigHash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12640
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfigHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;

    goto :goto_0
.end method

.method public mergeServerAddress(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 12699
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12701
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->newBuilder(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$SocketAddress;)Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    .line 12707
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12708
    return-object p0

    .line 12704
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->serverAddress_:Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    goto :goto_0
.end method

.method public setClientExperimentConfigHash(I)Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 12822
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->bitField0_:I

    .line 12823
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse$Builder;->clientExperimentConfigHash_:I

    .line 12825
    return-object p0
.end method
