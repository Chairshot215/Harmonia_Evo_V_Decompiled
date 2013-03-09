.class public final Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "UsageStatsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/usagestats/proto/UsageStatsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatCounters"
.end annotation


# instance fields
.field private cachedSize:I

.field private counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

.field private direction_:I

.field private fgBg_:I

.field private hasCounterData:Z

.field private hasDirection:Z

.field private hasFgBg:Z

.field private hasNetworkProto:Z

.field private networkProto_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 424
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 443
    iput v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->networkProto_:I

    .line 460
    iput v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->direction_:I

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 497
    iput v1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->fgBg_:I

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    .line 424
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    if-gez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getSerializedSize()I

    .line 546
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    return v0
.end method

.method public getCounterData()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->direction_:I

    return v0
.end method

.method public getFgBg()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->fgBg_:I

    return v0
.end method

.method public getNetworkProto()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->networkProto_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getNetworkProto()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getDirection()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getCounterData()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getFgBg()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_3
    iput v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->cachedSize:I

    .line 568
    return v0
.end method

.method public hasCounterData()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData:Z

    return v0
.end method

.method public hasDirection()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection:Z

    return v0
.end method

.method public hasFgBg()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg:Z

    return v0
.end method

.method public hasNetworkProto()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto:Z

    return v0
.end method

.method public setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .parameter "value"

    .prologue
    .line 481
    if-nez p1, :cond_0

    .line 482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 484
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData:Z

    .line 485
    iput-object p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->counterData_:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 486
    return-object p0
.end method

.method public setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .parameter "value"

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection:Z

    .line 465
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->direction_:I

    .line 466
    return-object p0
.end method

.method public setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .parameter "value"

    .prologue
    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg:Z

    .line 502
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->fgBg_:I

    .line 503
    return-object p0
.end method

.method public setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .locals 1
    .parameter "value"

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto:Z

    .line 448
    iput p1, p0, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->networkProto_:I

    .line 449
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasNetworkProto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getNetworkProto()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasDirection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getDirection()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasCounterData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 533
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getCounterData()Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->hasFgBg()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->getFgBg()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 538
    :cond_3
    return-void
.end method
