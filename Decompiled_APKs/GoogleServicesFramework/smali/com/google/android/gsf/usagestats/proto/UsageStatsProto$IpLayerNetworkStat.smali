.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpLayerNetworkStat"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasNetworkDetails:Z

.field private hasType:Z

.field private ipLayerAppStat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;",
            ">;"
        }
    .end annotation
.end field

.field private ipLayerNetworkBucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;",
            ">;"
        }
    .end annotation
.end field

.field private networkDetails_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1368
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->networkDetails_:Ljava/lang/String;

    .line 1385
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->type_:I

    .line 1401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    .line 1434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    .line 1497
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    .line 1354
    return-void
.end method


# virtual methods
.method public addIpLayerAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 1
    .parameter "value"

    .prologue
    .line 1451
    if-nez p1, :cond_0

    .line 1452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    return-object p0
.end method

.method public addIpLayerNetworkBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 1
    .parameter "value"

    .prologue
    .line 1418
    if-nez p1, :cond_0

    .line 1419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1499
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    if-gez v0, :cond_0

    .line 1501
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getSerializedSize()I

    .line 1503
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    return v0
.end method

.method public getIpLayerAppStatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerAppStat_:Ljava/util/List;

    return-object v0
.end method

.method public getIpLayerNetworkBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->ipLayerNetworkBucket_:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->networkDetails_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1507
    const/4 v2, 0x0

    .line 1508
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasNetworkDetails()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1509
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getNetworkDetails()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1512
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1513
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1516
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerNetworkBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 1517
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1520
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerAppStatList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 1521
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 1524
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :cond_3
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->cachedSize:I

    .line 1525
    return v2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1387
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->type_:I

    return v0
.end method

.method public hasNetworkDetails()Z
    .locals 1

    .prologue
    .line 1370
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasNetworkDetails:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType:Z

    return v0
.end method

.method public setType(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 1
    .parameter "value"

    .prologue
    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType:Z

    .line 1390
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->type_:I

    .line 1391
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasNetworkDetails()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getNetworkDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1486
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1487
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1489
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerNetworkBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 1490
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1492
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->getIpLayerAppStatList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 1493
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 1495
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :cond_3
    return-void
.end method
