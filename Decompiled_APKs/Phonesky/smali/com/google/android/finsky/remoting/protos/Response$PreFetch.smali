.class public final Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreFetch"
.end annotation


# instance fields
.field private cachedSize:I

.field private etag_:Ljava/lang/String;

.field private hasEtag:Z

.field private hasResponse:Z

.field private hasSoftTtl:Z

.field private hasTtl:Z

.field private hasUrl:Z

.field private response_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private softTtl_:J

.field private ttl_:J

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1549
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->url_:Ljava/lang/String;

    .line 1571
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->response_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->etag_:Ljava/lang/String;

    .line 1605
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->ttl_:J

    .line 1622
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->softTtl_:J

    .line 1670
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    .line 1549
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1673
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    if-gez v0, :cond_0

    .line 1675
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSerializedSize()I

    .line 1677
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->etag_:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->response_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1682
    const/4 v0, 0x0

    .line 1683
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1684
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1687
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1688
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1691
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1692
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1695
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1696
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getTtl()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1700
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSoftTtl()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->cachedSize:I

    .line 1704
    return v0
.end method

.method public getSoftTtl()J
    .locals 2

    .prologue
    .line 1623
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->softTtl_:J

    return-wide v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 1606
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->ttl_:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasEtag()Z
    .locals 1

    .prologue
    .line 1590
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 1573
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse:Z

    return v0
.end method

.method public hasSoftTtl()Z
    .locals 1

    .prologue
    .line 1624
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl:Z

    return v0
.end method

.method public hasTtl()Z
    .locals 1

    .prologue
    .line 1607
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1556
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1713
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1717
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1718
    :sswitch_0
    return-object p0

    .line 1723
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1727
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1731
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setEtag(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1735
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1739
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->setSoftTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    goto :goto_0

    .line 1713
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 1546
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    move-result-object v0

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 1592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag:Z

    .line 1593
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->etag_:Ljava/lang/String;

    .line 1594
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 1575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse:Z

    .line 1576
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->response_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1577
    return-object p0
.end method

.method public setSoftTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 1626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl:Z

    .line 1627
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->softTtl_:J

    .line 1628
    return-object p0
.end method

.method public setTtl(J)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 1609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl:Z

    .line 1610
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->ttl_:J

    .line 1611
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 1558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl:Z

    .line 1559
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->url_:Ljava/lang/String;

    .line 1560
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
    .line 1653
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1656
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1657
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1659
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasEtag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1660
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1662
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasTtl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1663
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getTtl()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1665
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->hasSoftTtl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1666
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSoftTtl()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1668
    :cond_4
    return-void
.end method
