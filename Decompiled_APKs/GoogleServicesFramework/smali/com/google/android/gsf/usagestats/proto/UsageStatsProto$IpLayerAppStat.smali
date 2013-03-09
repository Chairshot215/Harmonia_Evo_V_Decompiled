.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpLayerAppStat"
.end annotation


# instance fields
.field private applicationTag_:I

.field private cachedSize:I

.field private hasApplicationTag:Z

.field private hasPackageKey:Z

.field private ipLayerAppBucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;",
            ">;"
        }
    .end annotation
.end field

.field private packageKey_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1185
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1190
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->packageKey_:I

    .line 1207
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->applicationTag_:I

    .line 1223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    .line 1280
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    .line 1185
    return-void
.end method


# virtual methods
.method public addIpLayerAppBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 1
    .parameter "value"

    .prologue
    .line 1240
    if-nez p1, :cond_0

    .line 1241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    return-object p0
.end method

.method public getApplicationTag()I
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->applicationTag_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1282
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    if-gez v0, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getSerializedSize()I

    .line 1286
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    return v0
.end method

.method public getIpLayerAppBucketList()Ljava/util/List;
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
    .line 1226
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->ipLayerAppBucket_:Ljava/util/List;

    return-object v0
.end method

.method public getPackageKey()I
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->packageKey_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1290
    const/4 v2, 0x0

    .line 1291
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getPackageKey()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1295
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1296
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getApplicationTag()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 1299
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getIpLayerAppBucketList()Ljava/util/List;

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

    .line 1300
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1303
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    iput v2, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->cachedSize:I

    .line 1304
    return v2
.end method

.method public hasApplicationTag()Z
    .locals 1

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag:Z

    return v0
.end method

.method public hasPackageKey()Z
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey:Z

    return v0
.end method

.method public setApplicationTag(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 1
    .parameter "value"

    .prologue
    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag:Z

    .line 1212
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->applicationTag_:I

    .line 1213
    return-object p0
.end method

.method public setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 1
    .parameter "value"

    .prologue
    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey:Z

    .line 1195
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->packageKey_:I

    .line 1196
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
    .line 1269
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasPackageKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getPackageKey()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->hasApplicationTag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1273
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getApplicationTag()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1275
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->getIpLayerAppBucketList()Ljava/util/List;

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

    .line 1276
    .local v0, element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 1278
    .end local v0           #element:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_2
    return-void
.end method
