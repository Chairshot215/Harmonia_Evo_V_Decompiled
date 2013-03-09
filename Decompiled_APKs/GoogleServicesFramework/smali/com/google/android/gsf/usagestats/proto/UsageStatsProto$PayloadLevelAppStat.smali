.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PayloadLevelAppStat"
.end annotation


# instance fields
.field private applicationTag_:I

.field private cachedSize:I

.field private hasApplicationTag:Z

.field private hasPackageKey:Z

.field private packageKey_:I

.field private payloadLevelAppBucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1016
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1021
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->packageKey_:I

    .line 1038
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->applicationTag_:I

    .line 1054
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->payloadLevelAppBucket_:Ljava/util/List;

    .line 1111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    .line 1016
    return-void
.end method


# virtual methods
.method public getApplicationTag()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->applicationTag_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    if-gez v0, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getSerializedSize()I

    .line 1117
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    return v0
.end method

.method public getPackageKey()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->packageKey_:I

    return v0
.end method

.method public getPayloadLevelAppBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->payloadLevelAppBucket_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1121
    const/4 v2, 0x0

    .line 1122
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasPackageKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1123
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPackageKey()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasApplicationTag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1127
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getApplicationTag()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1130
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPayloadLevelAppBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 1131
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1134
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->cachedSize:I

    .line 1135
    return v2
.end method

.method public hasApplicationTag()Z
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasApplicationTag:Z

    return v0
.end method

.method public hasPackageKey()Z
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasPackageKey:Z

    return v0
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
    .line 1100
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasPackageKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPackageKey()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->hasApplicationTag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getApplicationTag()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PayloadLevelAppStat;->getPayloadLevelAppBucketList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 1107
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1109
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    return-void
.end method
