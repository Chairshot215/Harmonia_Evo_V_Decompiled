.class public final Llocation/unified/LocationDescriptorProto$FeatureIdProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private cellId_:J

.field private fprint_:J

.field private hasCellId:Z

.field private hasFprint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 414
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 419
    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 436
    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 471
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    .line 414
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getSerializedSize()I

    .line 477
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    return v0
.end method

.method public getCellId()J
    .locals 2

    .prologue
    .line 420
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 437
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getCellId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    const/4 v1, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getFprint()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    .line 491
    return v0
.end method

.method public hasCellId()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId:Z

    return v0
.end method

.method public hasFprint()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint:Z

    return v0
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
    .line 463
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getCellId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 466
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    const/4 v0, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getFprint()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 469
    :cond_1
    return-void
.end method
