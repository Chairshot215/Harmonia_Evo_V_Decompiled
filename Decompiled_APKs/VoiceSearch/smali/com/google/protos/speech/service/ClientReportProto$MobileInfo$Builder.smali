.class public final Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$MobileInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;",
        "Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$MobileInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bandwidth_:F

.field private bitField0_:I

.field private cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

.field private networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

.field private signalStrength_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1622
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1726
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;->SAME:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    .line 1792
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;->WIFI:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1623
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->maybeForceBuilderInitialization()V

    .line 1624
    return-void
.end method

.method static synthetic access$1800()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 1

    .prologue
    .line 1617
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 1

    .prologue
    .line 1629
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1627
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    .locals 2

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    .line 1655
    .local v0, result:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1656
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1658
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    .locals 5

    .prologue
    .line 1662
    new-instance v1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V

    .line 1663
    .local v1, result:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    .line 1664
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1665
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1666
    or-int/lit8 v2, v2, 0x1

    .line 1668
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->access$2002(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    .line 1669
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1670
    or-int/lit8 v2, v2, 0x2

    .line 1672
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->signalStrength_:I

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->signalStrength_:I
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->access$2102(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;I)I

    .line 1673
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1674
    or-int/lit8 v2, v2, 0x4

    .line 1676
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bandwidth_:F

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bandwidth_:F
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->access$2202(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;F)F

    .line 1677
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1678
    or-int/lit8 v2, v2, 0x8

    .line 1680
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    #setter for: Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->access$2302(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1681
    #setter for: Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->access$2402(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;I)I

    .line 1682
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 2

    .prologue
    .line 1646
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

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
    .line 1617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    .locals 1

    .prologue
    .line 1650
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1703
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
    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1617
    check-cast p1, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

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
    .line 1617
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1710
    const/4 v2, 0x0

    .line 1712
    .local v2, parsedMessage:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;
    :try_start_0
    sget-object v3, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    if-eqz v2, :cond_0

    .line 1718
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    .line 1721
    :cond_0
    return-object p0

    .line 1713
    :catch_0
    move-exception v1

    .line 1714
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-object v2, v0

    .line 1715
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1717
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1718
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1686
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1699
    :cond_0
    :goto_0
    return-object p0

    .line 1687
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->hasCellIdStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1688
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getCellIdStatus()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->setCellIdStatus(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    .line 1690
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1691
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getSignalStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->setSignalStrength(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    .line 1693
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->hasBandwidth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1694
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getBandwidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->setBandwidth(F)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    .line 1696
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->hasNetworkType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo;->getNetworkType()Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->setNetworkType(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;

    goto :goto_0
.end method

.method public setBandwidth(F)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1779
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    .line 1780
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bandwidth_:F

    .line 1782
    return-object p0
.end method

.method public setCellIdStatus(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1734
    if-nez p1, :cond_0

    .line 1735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1737
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    .line 1738
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->cellIdStatus_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$CellIdStatus;

    .line 1740
    return-object p0
.end method

.method public setNetworkType(Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1800
    if-nez p1, :cond_0

    .line 1801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1803
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    .line 1804
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->networkType_:Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$NetworkType;

    .line 1806
    return-object p0
.end method

.method public setSignalStrength(I)Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1758
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->bitField0_:I

    .line 1759
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$MobileInfo$Builder;->signalStrength_:I

    .line 1761
    return-object p0
.end method
