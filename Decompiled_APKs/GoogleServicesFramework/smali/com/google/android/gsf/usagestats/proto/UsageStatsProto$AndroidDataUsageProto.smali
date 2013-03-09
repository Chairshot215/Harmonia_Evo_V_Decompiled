.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidDataUsageProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private currentReportMsec_:J

.field private hasCurrentReportMsec:Z

.field private hasVersion:Z

.field private ipLayerNetworkStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;",
            ">;"
        }
    .end annotation
.end field

.field private keyToPackageNameMapping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;",
            ">;"
        }
    .end annotation
.end field

.field private payloadLevelAppStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1581
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1586
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->version_:I

    .line 1603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->currentReportMsec_:J

    .line 1619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    .line 1652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->payloadLevelAppStat_:Ljava/util/List;

    .line 1685
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    .line 1759
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    .line 1581
    return-void
.end method


# virtual methods
.method public addIpLayerNetworkStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1702
    if-nez p1, :cond_0

    .line 1703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1705
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1709
    return-object p0
.end method

.method public addKeyToPackageNameMapping(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1636
    if-nez p1, :cond_0

    .line 1637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    .line 1642
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1643
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 1763
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getSerializedSize()I

    .line 1765
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    return v0
.end method

.method public getCurrentReportMsec()J
    .locals 2

    .prologue
    .line 1604
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->currentReportMsec_:J

    return-wide v0
.end method

.method public getIpLayerNetworkStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->ipLayerNetworkStat_:Ljava/util/List;

    return-object v0
.end method

.method public getKeyToPackageNameMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->keyToPackageNameMapping_:Ljava/util/List;

    return-object v0
.end method

.method public getPayloadLevelAppStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->payloadLevelAppStat_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1769
    const/4 v2, 0x0

    .line 1770
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1771
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1774
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1775
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getCurrentReportMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1778
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getKeyToPackageNameMappingList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 1779
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1782
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getPayloadLevelAppStatList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    .line 1783
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1786
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getIpLayerNetworkStatList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 1787
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 1790
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    :cond_4
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->cachedSize:I

    .line 1791
    return v2
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1587
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->version_:I

    return v0
.end method

.method public hasCurrentReportMsec()Z
    .locals 1

    .prologue
    .line 1605
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1588
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion:Z

    return v0
.end method

.method public setCurrentReportMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec:Z

    .line 1608
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->currentReportMsec_:J

    .line 1609
    return-object p0
.end method

.method public setVersion(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 1590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion:Z

    .line 1591
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->version_:I

    .line 1592
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1743
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1745
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->hasCurrentReportMsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1746
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getCurrentReportMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1748
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getKeyToPackageNameMappingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 1749
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1751
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getPayloadLevelAppStatList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;

    .line 1752
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1754
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->getIpLayerNetworkStatList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 1755
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 1757
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    :cond_4
    return-void
.end method
