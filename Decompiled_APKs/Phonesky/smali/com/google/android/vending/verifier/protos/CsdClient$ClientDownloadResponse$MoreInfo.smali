.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoreInfo"
.end annotation


# instance fields
.field private cachedSize:I

.field private description_:Ljava/lang/String;

.field private hasDescription:Z

.field private hasUrl:Z

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1501
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1506
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->description_:Ljava/lang/String;

    .line 1523
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->url_:Ljava/lang/String;

    .line 1559
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->cachedSize:I

    .line 1501
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1562
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->getSerializedSize()I

    .line 1566
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1573
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1576
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1577
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1580
    :cond_1
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->cachedSize:I

    .line 1581
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasDescription:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1525
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1589
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1590
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1594
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1595
    :sswitch_0
    return-object p0

    .line 1600
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->setDescription(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    goto :goto_0

    .line 1604
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    goto :goto_0

    .line 1590
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 1498
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasDescription:Z

    .line 1511
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->description_:Ljava/lang/String;

    .line 1512
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasUrl:Z

    .line 1528
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->url_:Ljava/lang/String;

    .line 1529
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
    .line 1551
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1552
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1554
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1555
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1557
    :cond_1
    return-void
.end method
