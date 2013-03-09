.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private httpHeader_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private pageHtml_:Ljava/lang/Object;

.field private query_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15307
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 15444
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->query_:Ljava/lang/Object;

    .line 15497
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 15550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->pageHtml_:Ljava/lang/Object;

    .line 15603
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 15627
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    .line 15308
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 15309
    return-void
.end method

.method static synthetic access$17800()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 1

    .prologue
    .line 15302
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 1

    .prologue
    .line 15314
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private ensureHttpHeaderIsMutable()V
    .locals 2

    .prologue
    .line 15630
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 15631
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    .line 15632
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    .line 15634
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 15312
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 2

    .prologue
    .line 15341
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    .line 15342
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 15343
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 15345
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 5

    .prologue
    .line 15349
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 15350
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    .line 15351
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 15352
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 15353
    or-int/lit8 v2, v2, 0x1

    .line 15355
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15356
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 15357
    or-int/lit8 v2, v2, 0x2

    .line 15359
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15360
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 15361
    or-int/lit8 v2, v2, 0x4

    .line 15363
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->pageHtml_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15364
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 15365
    or-int/lit8 v2, v2, 0x8

    .line 15367
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 15368
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 15369
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    .line 15370
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    .line 15372
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;Ljava/util/List;)Ljava/util/List;

    .line 15373
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;I)I

    .line 15374
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 15302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 15302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 2

    .prologue
    .line 15333
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

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
    .line 15302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 15302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 15302
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    .locals 1

    .prologue
    .line 15337
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeader(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;
    .locals 1
    .parameter "index"

    .prologue
    .line 15643
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    return-object v0
.end method

.method public getHttpHeaderCount()I
    .locals 1

    .prologue
    .line 15640
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15446
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 15411
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->hasQuery()Z

    move-result v2

    if-nez v2, :cond_1

    .line 15421
    :cond_0
    :goto_0
    return v1

    .line 15415
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->getHttpHeaderCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 15416
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->getHttpHeader(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GenericAttribute;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15415
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15421
    :cond_2
    const/4 v1, 0x1

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
    .line 15302
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15302
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

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
    .line 15302
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15428
    const/4 v2, 0x0

    .line 15430
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15435
    if-eqz v2, :cond_0

    .line 15436
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    .line 15439
    :cond_0
    return-object p0

    .line 15431
    :catch_0
    move-exception v1

    .line 15432
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-object v2, v0

    .line 15433
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15435
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 15436
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 15378
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 15407
    :cond_0
    :goto_0
    return-object p0

    .line 15379
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15380
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    .line 15381
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->query_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->query_:Ljava/lang/Object;

    .line 15384
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15385
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    .line 15386
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->url_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 15389
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->hasPageHtml()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15390
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    .line 15391
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->pageHtml_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->pageHtml_:Ljava/lang/Object;

    .line 15394
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->hasPageHtmlEncoding()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15395
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->getPageHtmlEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->setPageHtmlEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;

    .line 15397
    :cond_5
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15398
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15399
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    .line 15400
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    goto :goto_0

    .line 15402
    :cond_6
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->ensureHttpHeaderIsMutable()V

    .line 15403
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->httpHeader_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->httpHeader_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;->access$18400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setPageHtmlEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15611
    if-nez p1, :cond_0

    .line 15612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15614
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->bitField0_:I

    .line 15615
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchResponseItem$Builder;->pageHtmlEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 15617
    return-object p0
.end method
