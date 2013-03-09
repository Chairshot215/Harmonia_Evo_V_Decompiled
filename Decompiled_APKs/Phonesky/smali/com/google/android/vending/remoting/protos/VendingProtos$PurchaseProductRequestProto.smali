.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseProductRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasProductId:Z

.field private hasProductType:Z

.field private hasSignatureHash:Z

.field private productId_:Ljava/lang/String;

.field private productType_:I

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9304
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9309
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productType_:I

    .line 9326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productId_:Ljava/lang/String;

    .line 9343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 9391
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    .line 9304
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9394
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 9396
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getSerializedSize()I

    .line 9398
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9327
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productId_:Ljava/lang/String;

    return-object v0
.end method

.method public getProductType()I
    .locals 1

    .prologue
    .line 9311
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9403
    const/4 v0, 0x0

    .line 9404
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9405
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9408
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9409
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9412
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9413
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9416
    :cond_2
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->cachedSize:I

    .line 9417
    return v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1

    .prologue
    .line 9345
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public hasProductId()Z
    .locals 1

    .prologue
    .line 9328
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId:Z

    return v0
.end method

.method public hasProductType()Z
    .locals 1

    .prologue
    .line 9310
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .locals 1

    .prologue
    .line 9344
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9425
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9426
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 9430
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9431
    :sswitch_0
    return-object p0

    .line 9436
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    goto :goto_0

    .line 9440
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->setProductId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    goto :goto_0

    .line 9444
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 9445
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 9446
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    goto :goto_0

    .line 9426
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
    .line 9302
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId:Z

    .line 9331
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productId_:Ljava/lang/String;

    .line 9332
    return-object p0
.end method

.method public setProductType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType:Z

    .line 9314
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->productType_:I

    .line 9315
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 9347
    if-nez p1, :cond_0

    .line 9348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9350
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash:Z

    .line 9351
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 9352
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
    .line 9380
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9381
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 9383
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasProductId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9384
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 9386
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->hasSignatureHash()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9387
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 9389
    :cond_2
    return-void
.end method
