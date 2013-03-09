.class public final Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientParametersProto.java"

# interfaces
.implements Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;",
        "Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;",
        ">;",
        "Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 877
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 801
    invoke-direct {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->maybeForceBuilderInitialization()V

    .line 802
    return-void
.end method

.method static synthetic access$1100()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 1

    .prologue
    .line 795
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->create()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 1

    .prologue
    .line 807
    new-instance v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 805
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->build()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 2

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    .line 827
    .local v0, result:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    invoke-static {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 830
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 5

    .prologue
    .line 834
    new-instance v1, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/ClientParametersProto$1;)V

    .line 835
    .local v1, result:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->bitField0_:I

    .line 836
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 837
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 838
    or-int/lit8 v2, v2, 0x1

    .line 840
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;
    invoke-static {v1, v3}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->access$1302(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 841
    #setter for: Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->access$1402(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;I)I

    .line 842
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clone()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clone()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 2

    .prologue
    .line 818
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->create()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

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
    .line 795
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clone()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x1

    return v0
.end method

.method public mergeClientParameters(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 901
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 903
    iget-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    invoke-static {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters;->newBuilder(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientParameters$Builder;->buildPartial()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    .line 909
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->bitField0_:I

    .line 910
    return-object p0

    .line 906
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->clientParameters_:Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

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
    .line 795
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 795
    check-cast p1, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

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
    .line 795
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 861
    const/4 v2, 0x0

    .line 863
    .local v2, parsedMessage:Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    if-eqz v2, :cond_0

    .line 869
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    .line 872
    :cond_0
    return-object p0

    .line 864
    :catch_0
    move-exception v1

    .line 865
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-object v2, v0

    .line 866
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 869
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 846
    invoke-static {}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getDefaultInstance()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-object p0

    .line 847
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->hasClientParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p1}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getClientParameters()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;->mergeClientParameters(Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig$Builder;

    goto :goto_0
.end method
