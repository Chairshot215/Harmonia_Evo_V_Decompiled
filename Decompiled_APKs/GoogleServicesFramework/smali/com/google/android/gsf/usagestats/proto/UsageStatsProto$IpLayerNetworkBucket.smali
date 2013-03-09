.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpLayerNetworkBucket"
.end annotation


# instance fields
.field private bucketDurationMsec_:J

.field private bucketStartMsec_:J

.field private cachedSize:I

.field private hasBucketDurationMsec:Z

.field private hasBucketStartMsec:Z

.field private hasNetworkActiveDuration:Z

.field private networkActiveDuration_:J

.field private statCounters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 819
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 824
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketStartMsec_:J

    .line 841
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketDurationMsec_:J

    .line 857
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    .line 891
    iput-wide v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->networkActiveDuration_:J

    .line 934
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    .line 819
    return-void
.end method


# virtual methods
.method public addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 874
    if-nez p1, :cond_0

    .line 875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    return-object p0
.end method

.method public getBucketDurationMsec()J
    .locals 2

    .prologue
    .line 842
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketDurationMsec_:J

    return-wide v0
.end method

.method public getBucketStartMsec()J
    .locals 2

    .prologue
    .line 825
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketStartMsec_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    if-gez v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getSerializedSize()I

    .line 940
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    return v0
.end method

.method public getNetworkActiveDuration()J
    .locals 2

    .prologue
    .line 892
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->networkActiveDuration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 944
    const/4 v2, 0x0

    .line 945
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketStartMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketDurationMsec()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getStatCountersList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 954
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 957
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 958
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getNetworkActiveDuration()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 961
    :cond_3
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->cachedSize:I

    .line 962
    return v2
.end method

.method public getStatCountersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->statCounters_:Ljava/util/List;

    return-object v0
.end method

.method public hasBucketDurationMsec()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec:Z

    return v0
.end method

.method public hasBucketStartMsec()Z
    .locals 1

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec:Z

    return v0
.end method

.method public hasNetworkActiveDuration()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration:Z

    return v0
.end method

.method public setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec:Z

    .line 846
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketDurationMsec_:J

    .line 847
    return-object p0
.end method

.method public setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec:Z

    .line 829
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->bucketStartMsec_:J

    .line 830
    return-object p0
.end method

.method public setNetworkActiveDuration(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .locals 1
    .parameter "value"

    .prologue
    .line 895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration:Z

    .line 896
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->networkActiveDuration_:J

    .line 897
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
    .line 920
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketStartMsec()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketStartMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasBucketDurationMsec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 924
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getBucketDurationMsec()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 926
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getStatCountersList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 927
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 929
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->hasNetworkActiveDuration()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 930
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->getNetworkActiveDuration()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 932
    :cond_3
    return-void
.end method
