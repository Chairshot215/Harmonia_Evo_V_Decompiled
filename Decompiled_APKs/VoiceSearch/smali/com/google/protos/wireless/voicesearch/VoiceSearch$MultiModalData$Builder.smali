.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

.field private highConfidence_:Z

.field private priority_:I

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
    .line 4298
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4459
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 4483
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4528
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    .line 4552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4299
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->maybeForceBuilderInitialization()V

    .line 4300
    return-void
.end method

.method static synthetic access$4400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4305
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSkipWebsearchActionIsMutable()V
    .locals 2

    .prologue
    .line 4682
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 4683
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4684
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4686
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4303
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .locals 2

    .prologue
    .line 4340
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    .line 4341
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4342
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4344
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .locals 5

    .prologue
    .line 4348
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 4349
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4350
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4351
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4352
    or-int/lit8 v2, v2, 0x1

    .line 4354
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->data_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4355
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4356
    or-int/lit8 v2, v2, 0x2

    .line 4358
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4359
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4360
    or-int/lit8 v2, v2, 0x4

    .line 4362
    :cond_2
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->priority_:I

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->priority_:I
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;I)I

    .line 4363
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4364
    or-int/lit8 v2, v2, 0x8

    .line 4366
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4367
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4368
    or-int/lit8 v2, v2, 0x10

    .line 4370
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4371
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4372
    or-int/lit8 v2, v2, 0x20

    .line 4374
    :cond_5
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4375
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 4376
    or-int/lit8 v2, v2, 0x40

    .line 4378
    :cond_6
    iget-boolean v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->highConfidence_:Z

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->highConfidence_:Z
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Z)Z

    .line 4379
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 4380
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4381
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4383
    :cond_7
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/util/List;)Ljava/util/List;

    .line 4384
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 4385
    or-int/lit16 v2, v2, 0x80

    .line 4387
    :cond_8
    iget-boolean v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAlways_:Z

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAlways_:Z
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Z)Z

    .line 4388
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;I)I

    .line 4389
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 2

    .prologue
    .line 4332
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

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
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .locals 1

    .prologue
    .line 4336
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4436
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
    .line 4293
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4293
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

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
    .line 4293
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4443
    const/4 v2, 0x0

    .line 4445
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4450
    if-eqz v2, :cond_0

    .line 4451
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4454
    :cond_0
    return-object p0

    .line 4446
    :catch_0
    move-exception v1

    .line 4447
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-object v2, v0

    .line 4448
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4450
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 4451
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 4393
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4432
    :cond_0
    :goto_0
    return-object p0

    .line 4394
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4395
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4397
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasResponseContentEncoding()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4398
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4400
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4401
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setPriority(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4403
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasGoogleSearchRequestProtoData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4404
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getGoogleSearchRequestProtoData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setGoogleSearchRequestProtoData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4406
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasServerHttpUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4407
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4408
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverHttpUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4411
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasServerProtoUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4412
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4413
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->serverProtoUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4416
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasHighConfidence()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4417
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getHighConfidence()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setHighConfidence(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4419
    :cond_8
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 4420
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4421
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4422
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4429
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasSkipWebsearchAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4430
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getSkipWebsearchAlways()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    goto/16 :goto_0

    .line 4424
    :cond_a
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->ensureSkipWebsearchActionIsMutable()V

    .line 4425
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->skipWebsearchAction_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4467
    if-nez p1, :cond_0

    .line 4468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4470
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4471
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 4473
    return-object p0
.end method

.method public setGoogleSearchRequestProtoData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4536
    if-nez p1, :cond_0

    .line 4537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4539
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4540
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    .line 4542
    return-object p0
.end method

.method public setHighConfidence(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4666
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4667
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->highConfidence_:Z

    .line 4669
    return-object p0
.end method

.method public setPriority(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4515
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4516
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->priority_:I

    .line 4518
    return-object p0
.end method

.method public setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4491
    if-nez p1, :cond_0

    .line 4492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4494
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4495
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4497
    return-object p0
.end method

.method public setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4738
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4739
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAlways_:Z

    .line 4741
    return-object p0
.end method
