.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;",
        ">;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1662
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->name_:Ljava/lang/Object;

    .line 1813
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->value_:Ljava/lang/Object;

    .line 1663
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->maybeForceBuilderInitialization()V

    .line 1664
    return-void
.end method

.method static synthetic access$1400()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1657
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1

    .prologue
    .line 1669
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1667
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 2

    .prologue
    .line 1690
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    .line 1691
    .local v0, result:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1692
    invoke-static {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1694
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 5

    .prologue
    .line 1698
    new-instance v1, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V

    .line 1699
    .local v1, result:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    .line 1700
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1701
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1702
    or-int/lit8 v2, v2, 0x1

    .line 1704
    :cond_0
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->access$1602(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1706
    or-int/lit8 v2, v2, 0x2

    .line 1708
    :cond_1
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->access$1702(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    #setter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->access$1802(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;I)I

    .line 1710
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 2

    .prologue
    .line 1682
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

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
    .line 1657
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1657
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1

    .prologue
    .line 1686
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1762
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 1815
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1729
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1737
    :cond_0
    :goto_0
    return v0

    .line 1733
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
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
    .line 1657
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1657
    check-cast p1, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

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
    .line 1657
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1744
    const/4 v2, 0x0

    .line 1746
    .local v2, parsedMessage:Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    :try_start_0
    sget-object v3, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    if-eqz v2, :cond_0

    .line 1752
    invoke-virtual {p0, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    .line 1755
    :cond_0
    return-object p0

    .line 1747
    :catch_0
    move-exception v1

    .line 1748
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-object v2, v0

    .line 1749
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1751
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1752
    invoke-virtual {p0, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1714
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-object p0

    .line 1715
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1716
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    .line 1717
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->access$1600(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->name_:Ljava/lang/Object;

    .line 1720
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    .line 1722
    #getter for: Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->value_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->access$1700(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->value_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1787
    if-nez p1, :cond_0

    .line 1788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1790
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    .line 1791
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->name_:Ljava/lang/Object;

    .line 1793
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1840
    if-nez p1, :cond_0

    .line 1841
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1843
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->bitField0_:I

    .line 1844
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->value_:Ljava/lang/Object;

    .line 1846
    return-object p0
.end method
