.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseCartInfoProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private footerMessage_:Ljava/lang/String;

.field private hasFooterMessage:Z

.field private hasItemPrice:Z

.field private hasPriceCurrency:Z

.field private hasPriceMicros:Z

.field private hasTaxExclusive:Z

.field private hasTaxInclusive:Z

.field private hasTaxMessage:Z

.field private hasTotal:Z

.field private itemPrice_:Ljava/lang/String;

.field private priceCurrency_:Ljava/lang/String;

.field private priceMicros_:J

.field private taxExclusive_:Ljava/lang/String;

.field private taxInclusive_:Ljava/lang/String;

.field private taxMessage_:Ljava/lang/String;

.field private total_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7733
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->itemPrice_:Ljava/lang/String;

    .line 7755
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxInclusive_:Ljava/lang/String;

    .line 7772
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxExclusive_:Ljava/lang/String;

    .line 7789
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->total_:Ljava/lang/String;

    .line 7806
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxMessage_:Ljava/lang/String;

    .line 7823
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->footerMessage_:Ljava/lang/String;

    .line 7840
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceCurrency_:Ljava/lang/String;

    .line 7857
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceMicros_:J

    .line 7921
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    .line 7733
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7924
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 7926
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getSerializedSize()I

    .line 7928
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    return v0
.end method

.method public getFooterMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7824
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->footerMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7739
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->itemPrice_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7841
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceCurrency_:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .locals 2

    .prologue
    .line 7858
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceMicros_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 7933
    const/4 v0, 0x0

    .line 7934
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7935
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getItemPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7938
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7939
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxInclusive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7942
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7943
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxExclusive()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7946
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7947
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTotal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7950
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7951
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7954
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7955
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getFooterMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7958
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7959
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7962
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7963
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceMicros()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7966
    :cond_7
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->cachedSize:I

    .line 7967
    return v0
.end method

.method public getTaxExclusive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7773
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxExclusive_:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxInclusive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7756
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxInclusive_:Ljava/lang/String;

    return-object v0
.end method

.method public getTaxMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7807
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7790
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->total_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFooterMessage()Z
    .locals 1

    .prologue
    .line 7825
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage:Z

    return v0
.end method

.method public hasItemPrice()Z
    .locals 1

    .prologue
    .line 7740
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice:Z

    return v0
.end method

.method public hasPriceCurrency()Z
    .locals 1

    .prologue
    .line 7842
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency:Z

    return v0
.end method

.method public hasPriceMicros()Z
    .locals 1

    .prologue
    .line 7859
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros:Z

    return v0
.end method

.method public hasTaxExclusive()Z
    .locals 1

    .prologue
    .line 7774
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive:Z

    return v0
.end method

.method public hasTaxInclusive()Z
    .locals 1

    .prologue
    .line 7757
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive:Z

    return v0
.end method

.method public hasTaxMessage()Z
    .locals 1

    .prologue
    .line 7808
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage:Z

    return v0
.end method

.method public hasTotal()Z
    .locals 1

    .prologue
    .line 7791
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7975
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7976
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7980
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7981
    :sswitch_0
    return-object p0

    .line 7986
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setItemPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7990
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTaxInclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7994
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTaxExclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7998
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTotal(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 8002
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setTaxMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 8006
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setFooterMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 8010
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 8014
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    goto :goto_0

    .line 7976
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 7731
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setFooterMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage:Z

    .line 7828
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->footerMessage_:Ljava/lang/String;

    .line 7829
    return-object p0
.end method

.method public setItemPrice(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice:Z

    .line 7743
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->itemPrice_:Ljava/lang/String;

    .line 7744
    return-object p0
.end method

.method public setPriceCurrency(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency:Z

    .line 7845
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceCurrency_:Ljava/lang/String;

    .line 7846
    return-object p0
.end method

.method public setPriceMicros(J)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7861
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros:Z

    .line 7862
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->priceMicros_:J

    .line 7863
    return-object p0
.end method

.method public setTaxExclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive:Z

    .line 7777
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxExclusive_:Ljava/lang/String;

    .line 7778
    return-object p0
.end method

.method public setTaxInclusive(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive:Z

    .line 7760
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxInclusive_:Ljava/lang/String;

    .line 7761
    return-object p0
.end method

.method public setTaxMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage:Z

    .line 7811
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->taxMessage_:Ljava/lang/String;

    .line 7812
    return-object p0
.end method

.method public setTotal(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal:Z

    .line 7794
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->total_:Ljava/lang/String;

    .line 7795
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
    .line 7895
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasItemPrice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7896
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getItemPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7898
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxInclusive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7899
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxInclusive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7901
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxExclusive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7902
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxExclusive()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7904
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTotal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7905
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7907
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasTaxMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7908
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getTaxMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7910
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasFooterMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7911
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getFooterMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7913
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceCurrency()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7914
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7916
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->hasPriceMicros()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7917
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;->getPriceMicros()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 7919
    :cond_7
    return-void
.end method
