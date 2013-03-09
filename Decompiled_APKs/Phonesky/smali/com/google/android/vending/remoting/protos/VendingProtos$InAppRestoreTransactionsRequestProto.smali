.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppRestoreTransactionsRequestProto"
.end annotation


# instance fields
.field private billingApiVersion_:I

.field private cachedSize:I

.field private hasBillingApiVersion:Z

.field private hasNonce:Z

.field private hasSignatureAlgorithm:Z

.field private hasSignatureHash:Z

.field private nonce_:J

.field private signatureAlgorithm_:Ljava/lang/String;

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19286
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 19311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->nonce_:J

    .line 19328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureAlgorithm_:Ljava/lang/String;

    .line 19345
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->billingApiVersion_:I

    .line 19392
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->cachedSize:I

    .line 19286
    return-void
.end method


# virtual methods
.method public getBillingApiVersion()I
    .locals 1

    .prologue
    .line 19346
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->billingApiVersion_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 19395
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 19397
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getSerializedSize()I

    .line 19399
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->cachedSize:I

    return v0
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 19312
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->nonce_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 19404
    const/4 v0, 0x0

    .line 19405
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureHash()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19406
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19409
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasNonce()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19410
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getNonce()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19413
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureAlgorithm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19414
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19417
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasBillingApiVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19418
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getBillingApiVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19421
    :cond_3
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->cachedSize:I

    .line 19422
    return v0
.end method

.method public getSignatureAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19329
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureAlgorithm_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1

    .prologue
    .line 19293
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public hasBillingApiVersion()Z
    .locals 1

    .prologue
    .line 19347
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasBillingApiVersion:Z

    return v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 19313
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasNonce:Z

    return v0
.end method

.method public hasSignatureAlgorithm()Z
    .locals 1

    .prologue
    .line 19330
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureAlgorithm:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .locals 1

    .prologue
    .line 19292
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19430
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19431
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 19435
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19436
    :sswitch_0
    return-object p0

    .line 19441
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 19442
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 19443
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    goto :goto_0

    .line 19447
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    goto :goto_0

    .line 19451
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    goto :goto_0

    .line 19455
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    goto :goto_0

    .line 19431
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 19284
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasBillingApiVersion:Z

    .line 19350
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->billingApiVersion_:I

    .line 19351
    return-object p0
.end method

.method public setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasNonce:Z

    .line 19316
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->nonce_:J

    .line 19317
    return-object p0
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureAlgorithm:Z

    .line 19333
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureAlgorithm_:Ljava/lang/String;

    .line 19334
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19295
    if-nez p1, :cond_0

    .line 19296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureHash:Z

    .line 19299
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 19300
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
    .line 19378
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureHash()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19379
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 19381
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasNonce()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19382
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getNonce()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 19384
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasSignatureAlgorithm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19385
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19387
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->hasBillingApiVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19388
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;->getBillingApiVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 19390
    :cond_3
    return-void
.end method
