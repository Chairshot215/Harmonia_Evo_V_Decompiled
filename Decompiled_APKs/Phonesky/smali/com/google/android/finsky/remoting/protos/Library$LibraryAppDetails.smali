.class public final Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Library.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Library;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryAppDetails"
.end annotation


# instance fields
.field private cachedSize:I

.field private certificateHash_:Ljava/lang/String;

.field private hasCertificateHash:Z

.field private hasPostDeliveryRefundWindowMsec:Z

.field private hasRefundTimeoutTimestampMsec:Z

.field private postDeliveryRefundWindowMsec_:J

.field private refundTimeoutTimestampMsec_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 573
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->certificateHash_:Ljava/lang/String;

    .line 595
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec_:J

    .line 612
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec_:J

    .line 652
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    .line 573
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    if-gez v0, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getSerializedSize()I

    .line 659
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    return v0
.end method

.method public getCertificateHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->certificateHash_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostDeliveryRefundWindowMsec()J
    .locals 2

    .prologue
    .line 613
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec_:J

    return-wide v0
.end method

.method public getRefundTimeoutTimestampMsec()J
    .locals 2

    .prologue
    .line 596
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 665
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getCertificateHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getRefundTimeoutTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 677
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->cachedSize:I

    .line 678
    return v0
.end method

.method public hasCertificateHash()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash:Z

    return v0
.end method

.method public hasPostDeliveryRefundWindowMsec()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    return v0
.end method

.method public hasRefundTimeoutTimestampMsec()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 687
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 691
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    :sswitch_0
    return-object p0

    .line 697
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->setCertificateHash(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    goto :goto_0

    .line 701
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    goto :goto_0

    .line 705
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    goto :goto_0

    .line 687
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    move-result-object v0

    return-object v0
.end method

.method public setCertificateHash(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash:Z

    .line 583
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->certificateHash_:Ljava/lang/String;

    .line 584
    return-object p0
.end method

.method public setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec:Z

    .line 617
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->postDeliveryRefundWindowMsec_:J

    .line 618
    return-object p0
.end method

.method public setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    .locals 1
    .parameter "value"

    .prologue
    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec:Z

    .line 600
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->refundTimeoutTimestampMsec_:J

    .line 601
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
    .line 641
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasCertificateHash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getCertificateHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getRefundTimeoutTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 650
    :cond_2
    return-void
.end method
