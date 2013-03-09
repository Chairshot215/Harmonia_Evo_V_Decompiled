.class public final Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RequestMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enableDebugPassword_:Ljava/lang/Object;

.field private enableDebug_:Z

.field private header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5941
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 6047
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6111
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 5942
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->maybeForceBuilderInitialization()V

    .line 5943
    return-void
.end method

.method static synthetic access$6500()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1

    .prologue
    .line 5948
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5946
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 2

    .prologue
    .line 5971
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 5972
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5973
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5975
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 5

    .prologue
    .line 5979
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 5980
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 5981
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5982
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5983
    or-int/lit8 v2, v2, 0x1

    .line 5985
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RequestMessage;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6702(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 5986
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5987
    or-int/lit8 v2, v2, 0x2

    .line 5989
    :cond_1
    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebug_:Z

    #setter for: Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebug_:Z
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6802(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Z)Z

    .line 5990
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5991
    or-int/lit8 v2, v2, 0x4

    .line 5993
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6902(Lcom/google/protos/speech/service/SpeechService$RequestMessage;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5994
    #setter for: Lcom/google/protos/speech/service/SpeechService$RequestMessage;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$7002(Lcom/google/protos/speech/service/SpeechService$RequestMessage;I)I

    .line 5995
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 2

    .prologue
    .line 5963
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

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
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5937
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1

    .prologue
    .line 5967
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasHeader()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 6049
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6016
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->hasHeader()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6024
    :cond_0
    :goto_0
    return v0

    .line 6020
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6024
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
    .line 5937
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5937
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

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
    .line 5937
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6031
    const/4 v2, 0x0

    .line 6033
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6038
    if-eqz v2, :cond_0

    .line 6039
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 6042
    :cond_0
    return-object p0

    .line 6034
    :catch_0
    move-exception v1

    .line 6035
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-object v2, v0

    .line 6036
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6038
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 6039
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5999
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 6012
    :goto_0
    return-object p0

    .line 6000
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6001
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 6003
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasEnableDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6004
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getEnableDebug()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->setEnableDebug(Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;

    .line 6006
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->hasEnableDebugPassword()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6007
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6008
    #getter for: Lcom/google/protos/speech/service/SpeechService$RequestMessage;->enableDebugPassword_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->access$6900(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebugPassword_:Ljava/lang/Object;

    .line 6011
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_0
.end method

.method public mergeHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6071
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6073
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->newBuilder(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6079
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6080
    return-object p0

    .line 6076
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    goto :goto_0
.end method

.method public setEnableDebug(Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6098
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6099
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->enableDebug_:Z

    .line 6101
    return-object p0
.end method

.method public setHeader(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6055
    if-nez p1, :cond_0

    .line 6056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6058
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->header_:Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    .line 6060
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->bitField0_:I

    .line 6061
    return-object p0
.end method
