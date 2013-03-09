.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseOrderRequestProto"
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private billingInstrumentId_:Ljava/lang/String;

.field private billingInstrumentType_:I

.field private billingParametersId_:Ljava/lang/String;

.field private cachedSize:I

.field private carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

.field private developerPayload_:Ljava/lang/String;

.field private existingOrderId_:Ljava/lang/String;

.field private gaiaAuthToken_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasBillingInstrumentId:Z

.field private hasBillingInstrumentType:Z

.field private hasBillingParametersId:Z

.field private hasCarrierBillingCredentials:Z

.field private hasDeveloperPayload:Z

.field private hasExistingOrderId:Z

.field private hasGaiaAuthToken:Z

.field private hasPaypalCredentials:Z

.field private hasProductType:Z

.field private hasRiskHeaderInfo:Z

.field private hasSignatureHash:Z

.field private hasTosAccepted:Z

.field private hasTransactionId:Z

.field private paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

.field private productType_:I

.field private riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

.field private tosAccepted_:Z

.field private transactionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8591
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 8613
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->assetId_:Ljava/lang/String;

    .line 8630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->transactionId_:Ljava/lang/String;

    .line 8647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentId_:Ljava/lang/String;

    .line 8664
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentType_:I

    .line 8681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 8698
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    .line 8718
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    .line 8738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->existingOrderId_:Ljava/lang/String;

    .line 8755
    iput-boolean v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->tosAccepted_:Z

    .line 8772
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    .line 8792
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->productType_:I

    .line 8809
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 8829
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->developerPayload_:Ljava/lang/String;

    .line 8928
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    .line 8591
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8614
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8648
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingInstrumentType()I
    .locals 1

    .prologue
    .line 8666
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentType_:I

    return v0
.end method

.method public getBillingParametersId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8682
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingParametersId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8931
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 8933
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getSerializedSize()I

    .line 8935
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    return v0
.end method

.method public getCarrierBillingCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    .locals 1

    .prologue
    .line 8700
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8830
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->developerPayload_:Ljava/lang/String;

    return-object v0
.end method

.method public getExistingOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8739
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->existingOrderId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8597
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    .locals 1

    .prologue
    .line 8720
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    return-object v0
.end method

.method public getProductType()I
    .locals 1

    .prologue
    .line 8794
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->productType_:I

    return v0
.end method

.method public getRiskHeaderInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    .locals 1

    .prologue
    .line 8774
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8940
    const/4 v0, 0x0

    .line 8941
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8942
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8945
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8946
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8949
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8950
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8953
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8954
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8957
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8958
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTosAccepted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8961
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8962
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getCarrierBillingCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8965
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8966
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getExistingOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8969
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8970
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8973
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8974
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8977
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8978
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getPaypalCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8981
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8982
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getRiskHeaderInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8985
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 8986
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8989
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8990
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8993
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8994
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8997
    :cond_d
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->cachedSize:I

    .line 8998
    return v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1

    .prologue
    .line 8811
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public getTosAccepted()Z
    .locals 1

    .prologue
    .line 8756
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->tosAccepted_:Z

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8631
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 8615
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasBillingInstrumentId()Z
    .locals 1

    .prologue
    .line 8649
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId:Z

    return v0
.end method

.method public hasBillingInstrumentType()Z
    .locals 1

    .prologue
    .line 8665
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType:Z

    return v0
.end method

.method public hasBillingParametersId()Z
    .locals 1

    .prologue
    .line 8683
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId:Z

    return v0
.end method

.method public hasCarrierBillingCredentials()Z
    .locals 1

    .prologue
    .line 8699
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials:Z

    return v0
.end method

.method public hasDeveloperPayload()Z
    .locals 1

    .prologue
    .line 8831
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload:Z

    return v0
.end method

.method public hasExistingOrderId()Z
    .locals 1

    .prologue
    .line 8740
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId:Z

    return v0
.end method

.method public hasGaiaAuthToken()Z
    .locals 1

    .prologue
    .line 8598
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken:Z

    return v0
.end method

.method public hasPaypalCredentials()Z
    .locals 1

    .prologue
    .line 8719
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials:Z

    return v0
.end method

.method public hasProductType()Z
    .locals 1

    .prologue
    .line 8793
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasRiskHeaderInfo()Z
    .locals 1

    .prologue
    .line 8773
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .locals 1

    .prologue
    .line 8810
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public hasTosAccepted()Z
    .locals 1

    .prologue
    .line 8757
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted:Z

    return v0
.end method

.method public hasTransactionId()Z
    .locals 1

    .prologue
    .line 8632
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9006
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9007
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9011
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9012
    :sswitch_0
    return-object p0

    .line 9017
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9021
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9025
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9029
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9033
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9037
    :sswitch_6
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;-><init>()V

    .line 9038
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9039
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setCarrierBillingCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9043
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setExistingOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9047
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9051
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9055
    :sswitch_a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;-><init>()V

    .line 9056
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9057
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setPaypalCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9061
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    :sswitch_b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;-><init>()V

    .line 9062
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9063
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setRiskHeaderInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9067
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto :goto_0

    .line 9071
    :sswitch_d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 9072
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9073
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto/16 :goto_0

    .line 9077
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->setDeveloperPayload(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    goto/16 :goto_0

    .line 9007
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
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
    .line 8589
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId:Z

    .line 8618
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->assetId_:Ljava/lang/String;

    .line 8619
    return-object p0
.end method

.method public setBillingInstrumentId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId:Z

    .line 8652
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentId_:Ljava/lang/String;

    .line 8653
    return-object p0
.end method

.method public setBillingInstrumentType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType:Z

    .line 8669
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingInstrumentType_:I

    .line 8670
    return-object p0
.end method

.method public setBillingParametersId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId:Z

    .line 8686
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->billingParametersId_:Ljava/lang/String;

    .line 8687
    return-object p0
.end method

.method public setCarrierBillingCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8702
    if-nez p1, :cond_0

    .line 8703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8705
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials:Z

    .line 8706
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->carrierBillingCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    .line 8707
    return-object p0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload:Z

    .line 8834
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->developerPayload_:Ljava/lang/String;

    .line 8835
    return-object p0
.end method

.method public setExistingOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId:Z

    .line 8743
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->existingOrderId_:Ljava/lang/String;

    .line 8744
    return-object p0
.end method

.method public setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken:Z

    .line 8601
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 8602
    return-object p0
.end method

.method public setPaypalCredentials(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8722
    if-nez p1, :cond_0

    .line 8723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8725
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials:Z

    .line 8726
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->paypalCredentials_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    .line 8727
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType:Z

    .line 8797
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->productType_:I

    .line 8798
    return-object p0
.end method

.method public setRiskHeaderInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8776
    if-nez p1, :cond_0

    .line 8777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8779
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo:Z

    .line 8780
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->riskHeaderInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    .line 8781
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8813
    if-nez p1, :cond_0

    .line 8814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8816
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash:Z

    .line 8817
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 8818
    return-object p0
.end method

.method public setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted:Z

    .line 8760
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->tosAccepted_:Z

    .line 8761
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 8634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId:Z

    .line 8635
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->transactionId_:Ljava/lang/String;

    .line 8636
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
    .line 8884
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasGaiaAuthToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8885
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8887
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8888
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8890
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTransactionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8891
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8893
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8894
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8896
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8897
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getTosAccepted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 8899
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasCarrierBillingCredentials()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8900
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getCarrierBillingCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8902
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasExistingOrderId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8903
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getExistingOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8905
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingInstrumentType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8906
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingInstrumentType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8908
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasBillingParametersId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8909
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getBillingParametersId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8911
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasPaypalCredentials()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8912
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getPaypalCredentials()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8914
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasRiskHeaderInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8915
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getRiskHeaderInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$RiskHeaderInfoProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8917
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8918
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8920
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasSignatureHash()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8921
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8923
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->hasDeveloperPayload()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8924
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8926
    :cond_d
    return-void
.end method
