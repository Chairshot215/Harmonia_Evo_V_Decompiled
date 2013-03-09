.class public final Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MediaResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$MediaResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$MediaResponse;",
        "Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$MediaResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21986
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21987
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->maybeForceBuilderInitialization()V

    .line 21988
    return-void
.end method

.method static synthetic access$27300()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 1

    .prologue
    .line 21981
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 1

    .prologue
    .line 21993
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 21991
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21981
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 2

    .prologue
    .line 22010
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    .line 22011
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 22012
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22014
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21981
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 2

    .prologue
    .line 22018
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 22019
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 21981
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 21981
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 2

    .prologue
    .line 22002
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

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
    .line 21981
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 21981
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21981
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    .locals 1

    .prologue
    .line 22006
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 22028
    const/4 v0, 0x1

    return v0
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
    .line 21981
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21981
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

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
    .line 21981
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22035
    const/4 v2, 0x0

    .line 22037
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$MediaResponse;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22042
    if-eqz v2, :cond_0

    .line 22043
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    .line 22046
    :cond_0
    return-object p0

    .line 22038
    :catch_0
    move-exception v1

    .line 22039
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-object v2, v0

    .line 22040
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22042
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 22043
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$MediaResponse;)Lcom/google/protos/speech/service/SpeechService$MediaResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 22023
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MediaResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MediaResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 22024
    :cond_0
    return-object p0
.end method
