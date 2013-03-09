.class public final Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CsdClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/verifier/protos/CsdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientDownloadResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private hasMoreInfo:Z

.field private hasToken:Z

.field private hasVerdict:Z

.field private moreInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

.field private token_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private verdict_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1491
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1627
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->verdict_:I

    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->moreInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    .line 1664
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->token_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1705
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->cachedSize:I

    .line 1491
    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1769
    new-instance v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;

    invoke-direct {v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;

    check-cast v0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;

    return-object v0
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1708
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1710
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getSerializedSize()I

    .line 1712
    :cond_0
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->cachedSize:I

    return v0
.end method

.method public getMoreInfo()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->moreInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1717
    const/4 v0, 0x0

    .line 1718
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasVerdict()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getVerdict()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1722
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasMoreInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1723
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getMoreInfo()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1726
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1727
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1730
    :cond_2
    iput v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->cachedSize:I

    .line 1731
    return v0
.end method

.method public getToken()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->token_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getVerdict()I
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->verdict_:I

    return v0
.end method

.method public hasMoreInfo()Z
    .locals 1

    .prologue
    .line 1645
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasMoreInfo:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 1666
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasToken:Z

    return v0
.end method

.method public hasVerdict()Z
    .locals 1

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasVerdict:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1739
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1740
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1744
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    :sswitch_0
    return-object p0

    .line 1750
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->setVerdict(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;

    goto :goto_0

    .line 1754
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    invoke-direct {v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;-><init>()V

    .line 1755
    .local v1, value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1756
    invoke-virtual {p0, v1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->setMoreInfo(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;

    goto :goto_0

    .line 1760
    .end local v1           #value:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->setToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;

    goto :goto_0

    .line 1740
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 1488
    invoke-virtual {p0, p1}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public setMoreInfo(Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1648
    if-nez p1, :cond_0

    .line 1649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1651
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasMoreInfo:Z

    .line 1652
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->moreInfo_:Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    .line 1653
    return-object p0
.end method

.method public setToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasToken:Z

    .line 1669
    iput-object p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->token_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1670
    return-object p0
.end method

.method public setVerdict(I)Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasVerdict:Z

    .line 1632
    iput p1, p0, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->verdict_:I

    .line 1633
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
    .line 1694
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasVerdict()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getVerdict()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1697
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasMoreInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getMoreInfo()Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse$MoreInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1700
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1701
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/verifier/protos/CsdClient$ClientDownloadResponse;->getToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1703
    :cond_2
    return-void
.end method
