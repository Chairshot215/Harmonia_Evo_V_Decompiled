.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private gmmServerResponse_:Lcom/google/protobuf/ByteString;

.field private query_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10488
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->query_:Ljava/lang/Object;

    .line 10642
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    .line 10666
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 10489
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 10490
    return-void
.end method

.method static synthetic access$12200()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .locals 1

    .prologue
    .line 10483
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .locals 1

    .prologue
    .line 10495
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10493
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10483
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .locals 2

    .prologue
    .line 10518
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    .line 10519
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10520
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10522
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10483
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .locals 5

    .prologue
    .line 10526
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 10527
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

    .line 10528
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10529
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10530
    or-int/lit8 v2, v2, 0x1

    .line 10532
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->access$12402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10533
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 10534
    or-int/lit8 v2, v2, 0x2

    .line 10536
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponse_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->access$12502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 10537
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 10538
    or-int/lit8 v2, v2, 0x4

    .line 10540
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->access$12602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 10541
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->access$12702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;I)I

    .line 10542
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10483
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10483
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .locals 2

    .prologue
    .line 10510
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

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
    .line 10483
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10483
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10483
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .locals 1

    .prologue
    .line 10514
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public hasQuery()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10591
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

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
    .line 10562
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->hasQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10564
    const/4 v0, 0x0

    .line 10566
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
    .line 10483
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10483
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

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
    .line 10483
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10573
    const/4 v2, 0x0

    .line 10575
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    :try_start_0
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10580
    if-eqz v2, :cond_0

    .line 10581
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    .line 10584
    :cond_0
    return-object p0

    .line 10576
    :catch_0
    move-exception v1

    .line 10577
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-object v2, v0

    .line 10578
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10580
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 10581
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 10546
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10558
    :cond_0
    :goto_0
    return-object p0

    .line 10547
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10548
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

    .line 10549
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->access$12400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->query_:Ljava/lang/Object;

    .line 10552
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->hasGmmServerResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10553
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getGmmServerResponse()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->setGmmServerResponse(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    .line 10555
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->hasGmmServerResponseEncoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10556
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getGmmServerResponseEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->setGmmServerResponseEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    goto :goto_0
.end method

.method public setGmmServerResponse(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10650
    if-nez p1, :cond_0

    .line 10651
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10653
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

    .line 10654
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    .line 10656
    return-object p0
.end method

.method public setGmmServerResponseEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10674
    if-nez p1, :cond_0

    .line 10675
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10677
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->bitField0_:I

    .line 10678
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 10680
    return-object p0
.end method
