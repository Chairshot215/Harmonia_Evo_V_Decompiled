.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseInfoProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    }
.end annotation


# instance fields
.field private billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

.field private cachedSize:I

.field private cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

.field private eligibleInstrumentTypes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private errorInputFields_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasBillingInstruments:Z

.field private hasCartInfo:Z

.field private hasOrderId:Z

.field private hasRefundPolicy:Z

.field private hasTransactionId:Z

.field private hasUserCanAddGdd:Z

.field private orderId_:Ljava/lang/String;

.field private refundPolicy_:Ljava/lang/String;

.field private transactionId_:Ljava/lang/String;

.field private userCanAddGdd_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 392
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->transactionId_:Ljava/lang/String;

    .line 409
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    .line 429
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    .line 448
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->refundPolicy_:Ljava/lang/String;

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->userCanAddGdd_:Z

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    .line 537
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->orderId_:Ljava/lang/String;

    .line 603
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addEligibleInstrumentTypes(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 2
    .parameter "value"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    return-object p0
.end method

.method public addErrorInputFields(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 2
    .parameter "value"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    return-object p0
.end method

.method public getBillingInstruments()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getSerializedSize()I

    .line 610
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    return v0
.end method

.method public getCartInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    return-object v0
.end method

.method public getEligibleInstrumentTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->eligibleInstrumentTypes_:Ljava/util/List;

    return-object v0
.end method

.method public getErrorInputFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->errorInputFields_:Ljava/util/List;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->orderId_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->refundPolicy_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 615
    const/4 v3, 0x0

    .line 616
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 617
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 621
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getCartInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getBillingInstruments()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 629
    :cond_2
    const/4 v0, 0x0

    .line 630
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getErrorInputFieldsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 631
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 634
    .end local v1           #element:Ljava/lang/Integer;
    :cond_3
    add-int/2addr v3, v0

    .line 635
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getErrorInputFieldsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 637
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 638
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getRefundPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 641
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 642
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getUserCanAddGdd()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 646
    :cond_5
    const/4 v0, 0x0

    .line 647
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getEligibleInstrumentTypesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 648
    .restart local v1       #element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 651
    .end local v1           #element:Ljava/lang/Integer;
    :cond_6
    add-int/2addr v3, v0

    .line 652
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getEligibleInstrumentTypesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 654
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 655
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 658
    :cond_7
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cachedSize:I

    .line 659
    return v3
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCanAddGdd()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->userCanAddGdd_:Z

    return v0
.end method

.method public hasBillingInstruments()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments:Z

    return v0
.end method

.method public hasCartInfo()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo:Z

    return v0
.end method

.method public hasOrderId()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId:Z

    return v0
.end method

.method public hasRefundPolicy()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy:Z

    return v0
.end method

.method public hasTransactionId()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId:Z

    return v0
.end method

.method public hasUserCanAddGdd()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 668
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 672
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 673
    :sswitch_0
    return-object p0

    .line 678
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 682
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;-><init>()V

    .line 683
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 684
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setCartInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 688
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;-><init>()V

    .line 689
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 690
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setBillingInstruments(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 694
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->addErrorInputFields(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 698
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setRefundPolicy(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 702
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setUserCanAddGdd(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 706
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->addEligibleInstrumentTypes(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 710
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->setOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    goto :goto_0

    .line 668
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1b -> :sswitch_3
        0x48 -> :sswitch_4
        0x52 -> :sswitch_5
        0x60 -> :sswitch_6
        0x68 -> :sswitch_7
        0x7a -> :sswitch_8
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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingInstruments(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 436
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments:Z

    .line 437
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->billingInstruments_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    .line 438
    return-object p0
.end method

.method public setCartInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 413
    if-nez p1, :cond_0

    .line 414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 416
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo:Z

    .line 417
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->cartInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    .line 418
    return-object p0
.end method

.method public setOrderId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId:Z

    .line 542
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->orderId_:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public setRefundPolicy(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy:Z

    .line 481
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->refundPolicy_:Ljava/lang/String;

    .line 482
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId:Z

    .line 397
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->transactionId_:Ljava/lang/String;

    .line 398
    return-object p0
.end method

.method public setUserCanAddGdd(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd:Z

    .line 498
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->userCanAddGdd_:Z

    .line 499
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasTransactionId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasCartInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getCartInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseCartInfoProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasBillingInstruments()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getBillingInstruments()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto$BillingInstruments;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 586
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getErrorInputFieldsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 587
    .local v0, element:Ljava/lang/Integer;
    const/16 v2, 0x9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 589
    .end local v0           #element:Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasRefundPolicy()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 590
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getRefundPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 592
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasUserCanAddGdd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 593
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getUserCanAddGdd()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 595
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getEligibleInstrumentTypesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 596
    .restart local v0       #element:Ljava/lang/Integer;
    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_1

    .line 598
    .end local v0           #element:Ljava/lang/Integer;
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->hasOrderId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 599
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 601
    :cond_7
    return-void
.end method
