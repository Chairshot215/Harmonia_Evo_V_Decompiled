.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationErrorCode_:I

.field private bitField0_:I

.field private response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21192
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 21284
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21193
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->maybeForceBuilderInitialization()V

    .line 21194
    return-void
.end method

.method static synthetic access$26000()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21187
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1

    .prologue
    .line 21199
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 21197
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21187
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 2

    .prologue
    .line 21220
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    .line 21221
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21222
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21224
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21187
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 5

    .prologue
    .line 21228
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 21229
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->bitField0_:I

    .line 21230
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21231
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 21232
    or-int/lit8 v2, v2, 0x1

    .line 21234
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    #setter for: Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->access$26202(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21235
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 21236
    or-int/lit8 v2, v2, 0x2

    .line 21238
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->applicationErrorCode_:I

    #setter for: Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->applicationErrorCode_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->access$26302(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;I)I

    .line 21239
    #setter for: Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->access$26402(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;I)I

    .line 21240
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 21187
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 21187
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 2

    .prologue
    .line 21212
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

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
    .line 21187
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 21187
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21187
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    .locals 1

    .prologue
    .line 21216
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .locals 1

    .prologue
    .line 21289
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public hasResponse()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 21286
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->bitField0_:I

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
    .line 21255
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21256
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21258
    const/4 v0, 0x0

    .line 21261
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
    .line 21187
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21187
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

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
    .line 21187
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21268
    const/4 v2, 0x0

    .line 21270
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21275
    if-eqz v2, :cond_0

    .line 21276
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    .line 21279
    :cond_0
    return-object p0

    .line 21271
    :catch_0
    move-exception v1

    .line 21272
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-object v2, v0

    .line 21273
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21275
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 21276
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 21244
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 21251
    :cond_0
    :goto_0
    return-object p0

    .line 21245
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21246
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getResponse()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->mergeResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    .line 21248
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->hasApplicationErrorCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21249
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse;->getApplicationErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->setApplicationErrorCode(I)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;

    goto :goto_0
.end method

.method public mergeResponse(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21308
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 21310
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 21316
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->bitField0_:I

    .line 21317
    return-object p0

    .line 21313
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->response_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_0
.end method

.method public setApplicationErrorCode(I)Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 21335
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->bitField0_:I

    .line 21336
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationResponse$Builder;->applicationErrorCode_:I

    .line 21338
    return-object p0
.end method
