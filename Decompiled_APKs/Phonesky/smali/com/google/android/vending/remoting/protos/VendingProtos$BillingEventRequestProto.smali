.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BillingEventRequestProto"
.end annotation


# instance fields
.field private billingParametersId_:Ljava/lang/String;

.field private cachedSize:I

.field private carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

.field private clientMessage_:Ljava/lang/String;

.field private eventType_:I

.field private hasBillingParametersId:Z

.field private hasCarrierInstrument:Z

.field private hasClientMessage:Z

.field private hasEventType:Z

.field private hasResultSuccess:Z

.field private resultSuccess_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18710
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 18719
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->eventType_:I

    .line 18736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 18753
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->resultSuccess_:Z

    .line 18770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->clientMessage_:Ljava/lang/String;

    .line 18787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 18842
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    .line 18710
    return-void
.end method


# virtual methods
.method public getBillingParametersId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18737
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->billingParametersId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 18845
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 18847
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getSerializedSize()I

    .line 18849
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    return v0
.end method

.method public getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    .locals 1

    .prologue
    .line 18789
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    return-object v0
.end method

.method public getClientMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18771
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->clientMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 18721
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->eventType_:I

    return v0
.end method

.method public getResultSuccess()Z
    .locals 1

    .prologue
    .line 18754
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->resultSuccess_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 18854
    const/4 v0, 0x0

    .line 18855
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18856
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getEventType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18859
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18860
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18863
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18864
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getResultSuccess()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18867
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18868
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getClientMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18871
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18872
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18875
    :cond_4
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->cachedSize:I

    .line 18876
    return v0
.end method

.method public hasBillingParametersId()Z
    .locals 1

    .prologue
    .line 18738
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId:Z

    return v0
.end method

.method public hasCarrierInstrument()Z
    .locals 1

    .prologue
    .line 18788
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument:Z

    return v0
.end method

.method public hasClientMessage()Z
    .locals 1

    .prologue
    .line 18772
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage:Z

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 18720
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType:Z

    return v0
.end method

.method public hasResultSuccess()Z
    .locals 1

    .prologue
    .line 18755
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18884
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 18885
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 18889
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18890
    :sswitch_0
    return-object p0

    .line 18895
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setEventType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18899
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18903
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setResultSuccess(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18907
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setClientMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18911
    :sswitch_5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;-><init>()V

    .line 18912
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 18913
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    goto :goto_0

    .line 18885
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 18708
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId:Z

    .line 18741
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 18742
    return-object p0
.end method

.method public setCarrierInstrument(Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18791
    if-nez p1, :cond_0

    .line 18792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18794
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument:Z

    .line 18795
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->carrierInstrument_:Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    .line 18796
    return-object p0
.end method

.method public setClientMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage:Z

    .line 18775
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->clientMessage_:Ljava/lang/String;

    .line 18776
    return-object p0
.end method

.method public setEventType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType:Z

    .line 18724
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->eventType_:I

    .line 18725
    return-object p0
.end method

.method public setResultSuccess(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 18757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess:Z

    .line 18758
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->resultSuccess_:Z

    .line 18759
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
    .line 18825
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18826
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getEventType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 18828
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasBillingParametersId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18829
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18831
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasResultSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18832
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getResultSuccess()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 18834
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasClientMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18835
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getClientMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 18837
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->hasCarrierInstrument()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18838
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;->getCarrierInstrument()Lcom/google/android/vending/remoting/protos/VendingProtos$ExternalCarrierBillingInstrumentProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 18840
    :cond_4
    return-void
.end method
