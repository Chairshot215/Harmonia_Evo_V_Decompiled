.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchasePostRequestProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    }
.end annotation


# instance fields
.field private assetId_:Ljava/lang/String;

.field private billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

.field private cachedSize:I

.field private cbInstrumentKey_:Ljava/lang/String;

.field private gaiaAuthToken_:Ljava/lang/String;

.field private hasAssetId:Z

.field private hasBillingInstrumentInfo:Z

.field private hasCbInstrumentKey:Z

.field private hasGaiaAuthToken:Z

.field private hasPaypalAuthConfirmed:Z

.field private hasProductType:Z

.field private hasSignatureHash:Z

.field private hasTosAccepted:Z

.field private hasTransactionId:Z

.field private paypalAuthConfirmed_:Z

.field private productType_:I

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

.field private tosAccepted_:Z

.field private transactionId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 7043
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 7272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->assetId_:Ljava/lang/String;

    .line 7289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->transactionId_:Ljava/lang/String;

    .line 7306
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cbInstrumentKey_:Ljava/lang/String;

    .line 7323
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    .line 7343
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->tosAccepted_:Z

    .line 7360
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->paypalAuthConfirmed_:Z

    .line 7377
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->productType_:I

    .line 7394
    iput-object v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 7469
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    .line 7043
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7273
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->assetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingInstrumentInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    .locals 1

    .prologue
    .line 7325
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7472
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 7474
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getSerializedSize()I

    .line 7476
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    return v0
.end method

.method public getCbInstrumentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7307
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cbInstrumentKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getGaiaAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7256
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getPaypalAuthConfirmed()Z
    .locals 1

    .prologue
    .line 7361
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->paypalAuthConfirmed_:Z

    return v0
.end method

.method public getProductType()I
    .locals 1

    .prologue
    .line 7379
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->productType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7481
    const/4 v0, 0x0

    .line 7482
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7483
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7486
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7487
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7490
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7491
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7494
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7495
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getBillingInstrumentInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7498
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7499
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTosAccepted()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7502
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7503
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getCbInstrumentKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7506
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7507
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getPaypalAuthConfirmed()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7510
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7511
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7514
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7515
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7518
    :cond_8
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cachedSize:I

    .line 7519
    return v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1

    .prologue
    .line 7396
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public getTosAccepted()Z
    .locals 1

    .prologue
    .line 7344
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->tosAccepted_:Z

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7290
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAssetId()Z
    .locals 1

    .prologue
    .line 7274
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId:Z

    return v0
.end method

.method public hasBillingInstrumentInfo()Z
    .locals 1

    .prologue
    .line 7324
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo:Z

    return v0
.end method

.method public hasCbInstrumentKey()Z
    .locals 1

    .prologue
    .line 7308
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey:Z

    return v0
.end method

.method public hasGaiaAuthToken()Z
    .locals 1

    .prologue
    .line 7257
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken:Z

    return v0
.end method

.method public hasPaypalAuthConfirmed()Z
    .locals 1

    .prologue
    .line 7362
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed:Z

    return v0
.end method

.method public hasProductType()Z
    .locals 1

    .prologue
    .line 7378
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .locals 1

    .prologue
    .line 7395
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public hasTosAccepted()Z
    .locals 1

    .prologue
    .line 7345
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted:Z

    return v0
.end method

.method public hasTransactionId()Z
    .locals 1

    .prologue
    .line 7291
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7527
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7528
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7532
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7533
    :sswitch_0
    return-object p0

    .line 7538
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7542
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7546
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7550
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;-><init>()V

    .line 7551
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 7552
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setBillingInstrumentInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7556
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7560
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setCbInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7564
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setPaypalAuthConfirmed(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7568
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7572
    :sswitch_9
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 7573
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7574
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    goto :goto_0

    .line 7528
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x23 -> :sswitch_4
        0x38 -> :sswitch_5
        0x42 -> :sswitch_6
        0x58 -> :sswitch_7
        0x60 -> :sswitch_8
        0x6a -> :sswitch_9
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
    .line 7041
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId:Z

    .line 7277
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->assetId_:Ljava/lang/String;

    .line 7278
    return-object p0
.end method

.method public setBillingInstrumentInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7327
    if-nez p1, :cond_0

    .line 7328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo:Z

    .line 7331
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->billingInstrumentInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    .line 7332
    return-object p0
.end method

.method public setCbInstrumentKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey:Z

    .line 7311
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->cbInstrumentKey_:Ljava/lang/String;

    .line 7312
    return-object p0
.end method

.method public setGaiaAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken:Z

    .line 7260
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->gaiaAuthToken_:Ljava/lang/String;

    .line 7261
    return-object p0
.end method

.method public setPaypalAuthConfirmed(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed:Z

    .line 7365
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->paypalAuthConfirmed_:Z

    .line 7366
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType:Z

    .line 7382
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->productType_:I

    .line 7383
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7398
    if-nez p1, :cond_0

    .line 7399
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7401
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash:Z

    .line 7402
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 7403
    return-object p0
.end method

.method public setTosAccepted(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted:Z

    .line 7348
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->tosAccepted_:Z

    .line 7349
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 7293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId:Z

    .line 7294
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->transactionId_:Ljava/lang/String;

    .line 7295
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
    .line 7440
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasGaiaAuthToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7441
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getGaiaAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7443
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasAssetId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7444
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7446
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTransactionId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7447
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7449
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasBillingInstrumentInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7450
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getBillingInstrumentInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto$BillingInstrumentInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7452
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasTosAccepted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7453
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getTosAccepted()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7455
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasCbInstrumentKey()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7456
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getCbInstrumentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 7458
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasPaypalAuthConfirmed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7459
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getPaypalAuthConfirmed()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 7461
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7462
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7464
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->hasSignatureHash()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7465
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7467
    :cond_8
    return-void
.end method
