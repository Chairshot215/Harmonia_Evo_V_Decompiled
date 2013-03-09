.class public final Llocation/unified/LocationDescriptorProto$LocationDescriptor;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptor"
.end annotation


# instance fields
.field private cachedSize:I

.field private confidence_:I

.field private featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

.field private hasConfidence:Z

.field private hasFeatureId:Z

.field private hasHistoricalProducer:Z

.field private hasHistoricalRole:Z

.field private hasLanguage:Z

.field private hasLatlng:Z

.field private hasLatlngSpan:Z

.field private hasLoc:Z

.field private hasProducer:Z

.field private hasProvenance:Z

.field private hasRadius:Z

.field private hasRole:Z

.field private hasTimestamp:Z

.field private historicalProducer_:I

.field private historicalRole_:I

.field private language_:Ljava/lang/String;

.field private latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

.field private latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

.field private loc_:Ljava/lang/String;

.field private producer_:I

.field private provenance_:I

.field private radius_:F

.field private role_:I

.field private timestamp_:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 535
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 540
    iput v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 557
    iput v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 574
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 591
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    .line 608
    iput-object v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 628
    iput-object v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 648
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 665
    const/16 v0, 0x64

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 682
    iput-object v3, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 702
    const-string v0, ""

    iput-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    .line 719
    iput v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    .line 736
    iput v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    .line 753
    iput v2, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    .line 832
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    .line 535
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    if-gez v0, :cond_0

    .line 836
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getSerializedSize()I

    .line 838
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    return v0
.end method

.method public getFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getHistoricalProducer()I
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:I

    return v0
.end method

.method public getHistoricalRole()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatlng()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLatlngSpan()Llocation/unified/LocationDescriptorProto$LatLng;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Llocation/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/String;

    return-object v0
.end method

.method public getProducer()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    return v0
.end method

.method public getProvenance()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    return v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRole()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 847
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    const/4 v1, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProducer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    :cond_1
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 852
    const/4 v1, 0x3

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 855
    :cond_2
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 856
    const/4 v1, 0x4

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLoc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 859
    :cond_3
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 860
    const/4 v1, 0x5

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlng()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 863
    :cond_4
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 864
    const/4 v1, 0x6

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlngSpan()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 867
    :cond_5
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 868
    const/4 v1, 0x7

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRadius()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 871
    :cond_6
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 872
    const/16 v1, 0x8

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getConfidence()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 875
    :cond_7
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 876
    const/16 v1, 0x9

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProvenance()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 879
    :cond_8
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 880
    const/16 v1, 0xa

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 883
    :cond_9
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 884
    const/16 v1, 0xb

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 887
    :cond_a
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 888
    const/16 v1, 0xc

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalRole()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 891
    :cond_b
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 892
    const/16 v1, 0xd

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProducer()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 895
    :cond_c
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->cachedSize:I

    .line 896
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 575
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    return-wide v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence:Z

    return v0
.end method

.method public hasFeatureId()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId:Z

    return v0
.end method

.method public hasHistoricalProducer()Z
    .locals 1

    .prologue
    .line 754
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer:Z

    return v0
.end method

.method public hasHistoricalRole()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole:Z

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage:Z

    return v0
.end method

.method public hasLatlng()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng:Z

    return v0
.end method

.method public hasLatlngSpan()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan:Z

    return v0
.end method

.method public hasLoc()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc:Z

    return v0
.end method

.method public hasProducer()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer:Z

    return v0
.end method

.method public hasProvenance()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance:Z

    return v0
.end method

.method public hasRadius()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius:Z

    return v0
.end method

.method public hasRole()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole:Z

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp:Z

    return v0
.end method

.method public setLatlng(Llocation/unified/LocationDescriptorProto$LatLng;)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 615
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng:Z

    .line 616
    iput-object p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Llocation/unified/LocationDescriptorProto$LatLng;

    .line 617
    return-object p0
.end method

.method public setProducer(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer:Z

    .line 562
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->producer_:I

    .line 563
    return-object p0
.end method

.method public setRadius(F)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius:Z

    .line 653
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 654
    return-object p0
.end method

.method public setRole(I)Llocation/unified/LocationDescriptorProto$LocationDescriptor;
    .locals 1
    .parameter "value"

    .prologue
    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole:Z

    .line 545
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->role_:I

    .line 546
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
    .line 791
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRole()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 794
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProducer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    const/4 v0, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProducer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 797
    :cond_1
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    const/4 v0, 0x3

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 800
    :cond_2
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLoc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    const/4 v0, 0x4

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLoc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 803
    :cond_3
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlng()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 804
    const/4 v0, 0x5

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlng()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 806
    :cond_4
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLatlngSpan()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 807
    const/4 v0, 0x6

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLatlngSpan()Llocation/unified/LocationDescriptorProto$LatLng;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 809
    :cond_5
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasRadius()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 810
    const/4 v0, 0x7

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getRadius()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 812
    :cond_6
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 813
    const/16 v0, 0x8

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getConfidence()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 815
    :cond_7
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasProvenance()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 816
    const/16 v0, 0x9

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getProvenance()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 818
    :cond_8
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasFeatureId()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 819
    const/16 v0, 0xa

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getFeatureId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 821
    :cond_9
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 822
    const/16 v0, 0xb

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 824
    :cond_a
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalRole()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 825
    const/16 v0, 0xc

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalRole()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 827
    :cond_b
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->hasHistoricalProducer()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 828
    const/16 v0, 0xd

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationDescriptor;->getHistoricalProducer()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 830
    :cond_c
    return-void
.end method
