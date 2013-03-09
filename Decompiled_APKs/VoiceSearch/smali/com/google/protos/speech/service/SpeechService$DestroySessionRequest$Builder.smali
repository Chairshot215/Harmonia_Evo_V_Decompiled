.class public final Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$DestroySessionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;",
        "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$DestroySessionRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13022
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13023
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 13024
    return-void
.end method

.method static synthetic access$15200()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 1

    .prologue
    .line 13017
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 1

    .prologue
    .line 13029
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 13027
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13017
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 2

    .prologue
    .line 13046
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    .line 13047
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13048
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13050
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13017
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 2

    .prologue
    .line 13054
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 13055
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 13017
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 13017
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 2

    .prologue
    .line 13038
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

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
    .line 13017
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 13017
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13017
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    .locals 1

    .prologue
    .line 13042
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 13064
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
    .line 13017
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13017
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

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
    .line 13017
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13071
    const/4 v2, 0x0

    .line 13073
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13078
    if-eqz v2, :cond_0

    .line 13079
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    .line 13082
    :cond_0
    return-object p0

    .line 13074
    :catch_0
    move-exception v1

    .line 13075
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-object v2, v0

    .line 13076
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13078
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 13079
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;)Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 13059
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$DestroySessionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13060
    :cond_0
    return-object p0
.end method
