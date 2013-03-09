.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InAppPurchaseInformationRequestProto"
.end annotation


# instance fields
.field private billingApiVersion_:I

.field private cachedSize:I

.field private hasBillingApiVersion:Z

.field private hasNonce:Z

.field private hasSignatureAlgorithm:Z

.field private hasSignatureHash:Z

.field private nonce_:J

.field private notificationId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signatureAlgorithm_:Ljava/lang/String;

.field private signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19615
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 19640
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->nonce_:J

    .line 19656
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->notificationId_:Ljava/util/List;

    .line 19690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureAlgorithm_:Ljava/lang/String;

    .line 19707
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->billingApiVersion_:I

    .line 19758
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->cachedSize:I

    .line 19615
    return-void
.end method


# virtual methods
.method public addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19673
    if-nez p1, :cond_0

    .line 19674
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19676
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->notificationId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->notificationId_:Ljava/util/List;

    .line 19679
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->notificationId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19680
    return-object p0
.end method

.method public getBillingApiVersion()I
    .locals 1

    .prologue
    .line 19708
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->billingApiVersion_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 19761
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 19763
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getSerializedSize()I

    .line 19765
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->cachedSize:I

    return v0
.end method

.method public getNonce()J
    .locals 2

    .prologue
    .line 19641
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->nonce_:J

    return-wide v0
.end method

.method public getNotificationIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19659
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->notificationId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 19770
    const/4 v3, 0x0

    .line 19771
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureHash()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19772
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 19775
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasNonce()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 19776
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getNonce()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 19780
    :cond_1
    const/4 v0, 0x0

    .line 19781
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getNotificationIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19782
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 19785
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 19786
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getNotificationIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 19788
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureAlgorithm()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 19789
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 19792
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasBillingApiVersion()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19793
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getBillingApiVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 19796
    :cond_4
    iput v3, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->cachedSize:I

    .line 19797
    return v3
.end method

.method public getSignatureAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19691
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureAlgorithm_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    .locals 1

    .prologue
    .line 19622
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    return-object v0
.end method

.method public hasBillingApiVersion()Z
    .locals 1

    .prologue
    .line 19709
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasBillingApiVersion:Z

    return v0
.end method

.method public hasNonce()Z
    .locals 1

    .prologue
    .line 19642
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasNonce:Z

    return v0
.end method

.method public hasSignatureAlgorithm()Z
    .locals 1

    .prologue
    .line 19692
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureAlgorithm:Z

    return v0
.end method

.method public hasSignatureHash()Z
    .locals 1

    .prologue
    .line 19621
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureHash:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19805
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 19806
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 19810
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19811
    :sswitch_0
    return-object p0

    .line 19816
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;-><init>()V

    .line 19817
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 19818
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    goto :goto_0

    .line 19822
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    goto :goto_0

    .line 19826
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->addNotificationId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    goto :goto_0

    .line 19830
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    goto :goto_0

    .line 19834
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    goto :goto_0

    .line 19806
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 19613
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasBillingApiVersion:Z

    .line 19712
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->billingApiVersion_:I

    .line 19713
    return-object p0
.end method

.method public setNonce(J)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasNonce:Z

    .line 19645
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->nonce_:J

    .line 19646
    return-object p0
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureAlgorithm:Z

    .line 19695
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureAlgorithm_:Ljava/lang/String;

    .line 19696
    return-object p0
.end method

.method public setSignatureHash(Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 19624
    if-nez p1, :cond_0

    .line 19625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19627
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureHash:Z

    .line 19628
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->signatureHash_:Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    .line 19629
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19741
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureHash()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19742
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getSignatureHash()Lcom/google/android/vending/remoting/protos/VendingProtos$SignatureHashProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 19744
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasNonce()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19745
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getNonce()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 19747
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getNotificationIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19748
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 19750
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasSignatureAlgorithm()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19751
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 19753
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->hasBillingApiVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19754
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;->getBillingApiVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 19756
    :cond_4
    return-void
.end method
