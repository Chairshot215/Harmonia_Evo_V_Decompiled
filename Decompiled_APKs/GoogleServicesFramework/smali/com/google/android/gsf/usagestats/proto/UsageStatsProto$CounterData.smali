.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CounterData"
.end annotation


# instance fields
.field private bytes_:J

.field private cachedSize:I

.field private hasBytes:Z

.field private hasPackets:Z

.field private packets_:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 303
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 308
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->bytes_:J

    .line 325
    iput-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->packets_:J

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    .line 303
    return-void
.end method


# virtual methods
.method public getBytes()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->bytes_:J

    return-wide v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    if-gez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getSerializedSize()I

    .line 366
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    return v0
.end method

.method public getPackets()J
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->packets_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getBytes()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getPackets()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_1
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->cachedSize:I

    .line 380
    return v0
.end method

.method public hasBytes()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes:Z

    return v0
.end method

.method public hasPackets()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets:Z

    return v0
.end method

.method public setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .locals 1
    .parameter "value"

    .prologue
    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes:Z

    .line 313
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->bytes_:J

    .line 314
    return-object p0
.end method

.method public setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .locals 1
    .parameter "value"

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets:Z

    .line 330
    iput-wide p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->packets_:J

    .line 331
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasBytes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getBytes()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->hasPackets()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->getPackets()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 358
    :cond_1
    return-void
.end method
