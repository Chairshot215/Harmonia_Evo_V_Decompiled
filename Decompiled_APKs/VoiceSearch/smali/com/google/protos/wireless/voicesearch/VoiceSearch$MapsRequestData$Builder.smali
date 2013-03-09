.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

.field private gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

.field private gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private mapsServerUrl_:Ljava/lang/Object;

.field private userAgent_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8537
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mapsServerUrl_:Ljava/lang/Object;

    .line 8590
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    .line 8614
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 8638
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->userAgent_:Ljava/lang/Object;

    .line 8691
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8405
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->maybeForceBuilderInitialization()V

    .line 8406
    return-void
.end method

.method static synthetic access$9500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8399
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1

    .prologue
    .line 8411
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8409
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8399
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 2

    .prologue
    .line 8438
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    .line 8439
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8440
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 8442
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8399
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 5

    .prologue
    .line 8446
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 8447
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    .line 8448
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 8449
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 8450
    or-int/lit8 v2, v2, 0x1

    .line 8452
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mapsServerUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$9702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8453
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 8454
    or-int/lit8 v2, v2, 0x2

    .line 8456
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$9802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 8457
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 8458
    or-int/lit8 v2, v2, 0x4

    .line 8460
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$9902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 8461
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 8462
    or-int/lit8 v2, v2, 0x8

    .line 8464
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->userAgent_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$10002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8465
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 8466
    or-int/lit8 v2, v2, 0x10

    .line 8468
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$10102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8469
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$10202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;I)I

    .line 8470
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8399
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8399
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 2

    .prologue
    .line 8430
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

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
    .line 8399
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8399
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8399
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1

    .prologue
    .line 8434
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public hasGmmBinaryHeader()Z
    .locals 2

    .prologue
    .line 8592
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

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

.method public hasGmmSearchRequestProto()Z
    .locals 2

    .prologue
    .line 8616
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMapsServerUrl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8539
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAgent()Z
    .locals 2

    .prologue
    .line 8640
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

    .line 8498
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->hasMapsServerUrl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8514
    :cond_0
    :goto_0
    return v0

    .line 8502
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->hasGmmBinaryHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8506
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->hasGmmSearchRequestProto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8510
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->hasUserAgent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8514
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
    .line 8399
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8399
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

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
    .line 8399
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8521
    const/4 v2, 0x0

    .line 8523
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8528
    if-eqz v2, :cond_0

    .line 8529
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    .line 8532
    :cond_0
    return-object p0

    .line 8524
    :catch_0
    move-exception v1

    .line 8525
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-object v2, v0

    .line 8526
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8528
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 8529
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8474
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 8494
    :cond_0
    :goto_0
    return-object p0

    .line 8475
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasMapsServerUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8476
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    .line 8477
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$9700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mapsServerUrl_:Ljava/lang/Object;

    .line 8480
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmBinaryHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8481
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getGmmBinaryHeader()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->setGmmBinaryHeader(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    .line 8483
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmSearchRequestProto()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8484
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getGmmSearchRequestProto()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->setGmmSearchRequestProto(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    .line 8486
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasUserAgent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8487
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    .line 8488
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->access$10000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->userAgent_:Ljava/lang/Object;

    .line 8491
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmServerResponseEncoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8492
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getGmmServerResponseEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->setGmmServerResponseEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    goto :goto_0
.end method

.method public setGmmBinaryHeader(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8598
    if-nez p1, :cond_0

    .line 8599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8601
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    .line 8602
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    .line 8604
    return-object p0
.end method

.method public setGmmSearchRequestProto(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8622
    if-nez p1, :cond_0

    .line 8623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8625
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    .line 8626
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 8628
    return-object p0
.end method

.method public setGmmServerResponseEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 8699
    if-nez p1, :cond_0

    .line 8700
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8702
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->bitField0_:I

    .line 8703
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8705
    return-object p0
.end method
