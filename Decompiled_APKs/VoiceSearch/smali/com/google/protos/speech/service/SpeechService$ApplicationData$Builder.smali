.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ApplicationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1890
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 1891
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->maybeForceBuilderInitialization()V

    .line 1892
    return-void
.end method

.method static synthetic access$1900()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 1

    .prologue
    .line 1886
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 1

    .prologue
    .line 1897
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1895
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 2

    .prologue
    .line 1914
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    .line 1915
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1916
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1918
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 2

    .prologue
    .line 1922
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 1923
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 2

    .prologue
    .line 1906
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

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
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1886
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 1910
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1933
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1935
    const/4 v0, 0x0

    .line 1937
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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
    .line 1886
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1886
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

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
    .line 1886
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1944
    const/4 v2, 0x0

    .line 1946
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    if-eqz v2, :cond_0

    .line 1952
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    .line 1955
    :cond_0
    return-object p0

    .line 1947
    :catch_0
    move-exception v1

    .line 1948
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-object v2, v0

    .line 1949
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1951
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1952
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1927
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1929
    :goto_0
    return-object p0

    .line 1928
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_0
.end method
