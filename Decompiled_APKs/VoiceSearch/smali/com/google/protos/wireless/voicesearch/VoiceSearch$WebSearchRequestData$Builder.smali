.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

.field private responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private serverHttpUrl_:Ljava/lang/Object;

.field private serverProtoUrl_:Ljava/lang/Object;

.field private skipWebsearchAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private skipWebsearchAlways_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9286
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 9310
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 9334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 9387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 9440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 9149
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->maybeForceBuilderInitialization()V

    .line 9150
    return-void
.end method

.method static synthetic access$10400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1

    .prologue
    .line 9143
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1

    .prologue
    .line 9155
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSkipWebsearchActionIsMutable()V
    .locals 2

    .prologue
    .line 9443
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 9444
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 9445
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9447
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 9153
    return-void
.end method


# virtual methods
.method public addSkipWebsearchAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9468
    if-nez p1, :cond_0

    .line 9469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9471
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->ensureSkipWebsearchActionIsMutable()V

    .line 9472
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9474
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9143
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 2

    .prologue
    .line 9184
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    .line 9185
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9186
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9188
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9143
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 5

    .prologue
    .line 9192
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 9193
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9194
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9195
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9196
    or-int/lit8 v2, v2, 0x1

    .line 9198
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$10602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 9199
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9200
    or-int/lit8 v2, v2, 0x2

    .line 9202
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$10702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 9203
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9204
    or-int/lit8 v2, v2, 0x4

    .line 9206
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$10802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9207
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 9208
    or-int/lit8 v2, v2, 0x8

    .line 9210
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$10902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9211
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 9212
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 9213
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9215
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$11002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/util/List;)Ljava/util/List;

    .line 9216
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 9217
    or-int/lit8 v2, v2, 0x10

    .line 9219
    :cond_5
    iget-boolean v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAlways_:Z

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$11102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Z)Z

    .line 9220
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$11202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;I)I

    .line 9221
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9143
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9143
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 2

    .prologue
    .line 9176
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

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
    .line 9143
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9143
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9143
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1

    .prologue
    .line 9180
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method public hasGoogleSearchRequestProto()Z
    .locals 2

    .prologue
    .line 9312
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9259
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->hasGoogleSearchRequestProto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9261
    const/4 v0, 0x0

    .line 9263
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
    .line 9143
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9143
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

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
    .line 9143
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9270
    const/4 v2, 0x0

    .line 9272
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9277
    if-eqz v2, :cond_0

    .line 9278
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 9281
    :cond_0
    return-object p0

    .line 9273
    :catch_0
    move-exception v1

    .line 9274
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-object v2, v0

    .line 9275
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9277
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 9278
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 9225
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 9255
    :cond_0
    :goto_0
    return-object p0

    .line 9226
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->hasResponseContentEncoding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9227
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 9229
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->hasGoogleSearchRequestProto()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9230
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getGoogleSearchRequestProto()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setGoogleSearchRequestProto(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 9232
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->hasServerHttpUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9233
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9234
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$10800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 9237
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->hasServerProtoUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9238
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9239
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$10900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 9242
    :cond_5
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$11000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9243
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9244
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$11000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 9245
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9252
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->hasSkipWebsearchAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9253
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getSkipWebsearchAlways()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    goto :goto_0

    .line 9247
    :cond_7
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->ensureSkipWebsearchActionIsMutable()V

    .line 9248
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAction_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->access$11000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setGoogleSearchRequestProto(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9318
    if-nez p1, :cond_0

    .line 9319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9321
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9322
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 9324
    return-object p0
.end method

.method public setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9294
    if-nez p1, :cond_0

    .line 9295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9297
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9298
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 9300
    return-object p0
.end method

.method public setServerHttpUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9361
    if-nez p1, :cond_0

    .line 9362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9364
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9365
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 9367
    return-object p0
.end method

.method public setServerProtoUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9414
    if-nez p1, :cond_0

    .line 9415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9417
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9418
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 9420
    return-object p0
.end method

.method public setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 9499
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->bitField0_:I

    .line 9500
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->skipWebsearchAlways_:Z

    .line 9502
    return-object p0
.end method
