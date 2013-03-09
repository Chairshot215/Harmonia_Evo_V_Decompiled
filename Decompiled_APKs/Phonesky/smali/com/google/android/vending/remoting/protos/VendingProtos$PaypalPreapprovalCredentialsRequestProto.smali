.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalPreapprovalCredentialsRequestProto"
.end annotation


# instance fields
.field private billingInstrumentId_:Ljava/lang/String;

.field private cachedSize:I

.field private gaiaAuthToken_:Ljava/lang/String;

.field private hasBillingInstrumentId:Z

.field private hasGaiaAuthToken:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10358
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 10380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->billingInstrumentId_:Ljava/lang/String;

    .line 10418
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->cachedSize:I

    .line 10358
    return-void
.end method


# virtual methods
.method public getBillingInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10381
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->billingInstrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10421
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 10423
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->getSerializedSize()I

    .line 10425
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->cachedSize:I

    return v0
.end method

.method public getGaiaAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10364
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10430
    const/4 v0, 0x0

    .line 10431
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasGaiaAuthToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10432
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10435
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasBillingInstrumentId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10436
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10439
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->cachedSize:I

    .line 10440
    return v0
.end method

.method public hasBillingInstrumentId()Z
    .locals 1

    .prologue
    .line 10382
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasBillingInstrumentId:Z

    return v0
.end method

.method public hasGaiaAuthToken()Z
    .locals 1

    .prologue
    .line 10365
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasGaiaAuthToken:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10448
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10449
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10453
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10454
    :sswitch_0
    return-object p0

    .line 10459
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    goto :goto_0

    .line 10463
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    goto :goto_0

    .line 10449
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
    .line 10356
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasBillingInstrumentId:Z

    .line 10385
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->billingInstrumentId_:Ljava/lang/String;

    .line 10386
    return-object p0
.end method

.method public setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 10367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasGaiaAuthToken:Z

    .line 10368
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 10369
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
    .line 10410
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasGaiaAuthToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10411
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10413
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->hasBillingInstrumentId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10414
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10416
    :cond_1
    return-void
.end method
