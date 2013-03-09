.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingInstrumentInfo"
.end annotation


# instance fields
.field private billingInstrumentId_:Ljava/lang/String;

.field private cachedSize:I

.field private carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

.field private creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

.field private hasBillingInstrumentId:Z

.field private hasCarrierInstrument:Z

.field private hasCreditCard:Z

.field private hasPaypalInstrument:Z

.field private paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7047
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7052
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->billingInstrumentId_:Ljava/lang/String;

    .line 7069
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    .line 7089
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 7109
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    .line 7165
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    .line 7047
    return-void
.end method


# virtual methods
.method public getBillingInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7053
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->billingInstrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7168
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 7170
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getSerializedSize()I

    .line 7172
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    return v0
.end method

.method public getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .locals 1

    .prologue
    .line 7091
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    return-object v0
.end method

.method public getCreditCard()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    .locals 1

    .prologue
    .line 7071
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    return-object v0
.end method

.method public getPaypalInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    .locals 1

    .prologue
    .line 7111
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7177
    const/4 v0, 0x0

    .line 7178
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7179
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7182
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7183
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCreditCard()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7186
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7187
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7190
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7191
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getPaypalInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7194
    :cond_3
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->cachedSize:I

    .line 7195
    return v0
.end method

.method public hasBillingInstrumentId()Z
    .locals 1

    .prologue
    .line 7054
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId:Z

    return v0
.end method

.method public hasCarrierInstrument()Z
    .locals 1

    .prologue
    .line 7090
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument:Z

    return v0
.end method

.method public hasCreditCard()Z
    .locals 1

    .prologue
    .line 7070
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard:Z

    return v0
.end method

.method public hasPaypalInstrument()Z
    .locals 1

    .prologue
    .line 7110
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7203
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7204
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7208
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7209
    :sswitch_0
    return-object p0

    .line 7214
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7218
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;-><init>()V

    .line 7219
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7220
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setCreditCard(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7224
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;-><init>()V

    .line 7225
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7226
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7230
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;-><init>()V

    .line 7231
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7232
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->setPaypalInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    goto :goto_0

    .line 7204
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x32 -> :sswitch_2
        0x4a -> :sswitch_3
        0x52 -> :sswitch_4
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
    .line 7045
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    move-result-object v0

    return-object v0
.end method

.method public setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 7056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId:Z

    .line 7057
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->billingInstrumentId_:Ljava/lang/String;

    .line 7058
    return-object p0
.end method

.method public setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 7093
    if-nez p1, :cond_0

    .line 7094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7096
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument:Z

    .line 7097
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 7098
    return-object p0
.end method

.method public setCreditCard(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 7073
    if-nez p1, :cond_0

    .line 7074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7076
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard:Z

    .line 7077
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->creditCard_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    .line 7078
    return-object p0
.end method

.method public setPaypalInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 7113
    if-nez p1, :cond_0

    .line 7114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument:Z

    .line 7117
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->paypalInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    .line 7118
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
    .line 7151
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasBillingInstrumentId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7152
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7154
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCreditCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7155
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCreditCard()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCreditCard;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7157
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasCarrierInstrument()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7158
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7160
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->hasPaypalInstrument()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7161
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;->getPaypalInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalPaypalInstrumentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7163
    :cond_3
    return-void
.end method
