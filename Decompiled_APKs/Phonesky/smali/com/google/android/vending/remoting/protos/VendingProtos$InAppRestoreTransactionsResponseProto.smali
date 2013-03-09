.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppRestoreTransactionsResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPurchaseResult:Z

.field private hasSignedResponse:Z

.field private purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

.field private signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19477
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19482
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    .line 19502
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 19544
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->cachedSize:I

    .line 19477
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 19547
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 19549
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getSerializedSize()I

    .line 19551
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->cachedSize:I

    return v0
.end method

.method public getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .locals 1

    .prologue
    .line 19504
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 19556
    const/4 v0, 0x0

    .line 19557
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasSignedResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19558
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19561
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasPurchaseResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19562
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19565
    :cond_1
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->cachedSize:I

    .line 19566
    return v0
.end method

.method public getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    .locals 1

    .prologue
    .line 19484
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    return-object v0
.end method

.method public hasPurchaseResult()Z
    .locals 1

    .prologue
    .line 19503
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasPurchaseResult:Z

    return v0
.end method

.method public hasSignedResponse()Z
    .locals 1

    .prologue
    .line 19483
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasSignedResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19574
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19575
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 19579
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19580
    :sswitch_0
    return-object p0

    .line 19585
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;-><init>()V

    .line 19586
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 19587
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->setSignedResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    goto :goto_0

    .line 19591
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;-><init>()V

    .line 19592
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 19593
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    goto :goto_0

    .line 19575
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
    .line 19475
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19506
    if-nez p1, :cond_0

    .line 19507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19509
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasPurchaseResult:Z

    .line 19510
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 19511
    return-object p0
.end method

.method public setSignedResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19486
    if-nez p1, :cond_0

    .line 19487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19489
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasSignedResponse:Z

    .line 19490
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->signedResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    .line 19491
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
    .line 19536
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasSignedResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19537
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getSignedResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$SignedDataProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 19539
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->hasPurchaseResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19540
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 19542
    :cond_1
    return-void
.end method
