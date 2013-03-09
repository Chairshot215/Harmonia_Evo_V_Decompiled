.class public final Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OwnershipInfo"
.end annotation


# instance fields
.field private autoRenewing_:Z

.field private cachedSize:I

.field private developerPurchaseInfo_:Lcom/google/android/finsky/remoting/protos/Common$SignedData;

.field private hasAutoRenewing:Z

.field private hasDeveloperPurchaseInfo:Z

.field private hasHidden:Z

.field private hasInitiationTimestampMsec:Z

.field private hasPostDeliveryRefundWindowMsec:Z

.field private hasPreordered:Z

.field private hasRefundTimeoutTimestampMsec:Z

.field private hasValidUntilTimestampMsec:Z

.field private hidden_:Z

.field private initiationTimestampMsec_:J

.field private postDeliveryRefundWindowMsec_:J

.field private preordered_:Z

.field private refundTimeoutTimestampMsec_:J

.field private validUntilTimestampMsec_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 2493
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2498
    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->initiationTimestampMsec_:J

    .line 2515
    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->validUntilTimestampMsec_:J

    .line 2532
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->autoRenewing_:Z

    .line 2549
    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->refundTimeoutTimestampMsec_:J

    .line 2566
    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->postDeliveryRefundWindowMsec_:J

    .line 2583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->developerPurchaseInfo_:Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    .line 2603
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->preordered_:Z

    .line 2620
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hidden_:Z

    .line 2683
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    .line 2493
    return-void
.end method


# virtual methods
.method public getAutoRenewing()Z
    .locals 1

    .prologue
    .line 2533
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->autoRenewing_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2686
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2688
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getSerializedSize()I

    .line 2690
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    return v0
.end method

.method public getDeveloperPurchaseInfo()Lcom/google/android/finsky/remoting/protos/Common$SignedData;
    .locals 1

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->developerPurchaseInfo_:Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    return-object v0
.end method

.method public getHidden()Z
    .locals 1

    .prologue
    .line 2621
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hidden_:Z

    return v0
.end method

.method public getInitiationTimestampMsec()J
    .locals 2

    .prologue
    .line 2499
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->initiationTimestampMsec_:J

    return-wide v0
.end method

.method public getPostDeliveryRefundWindowMsec()J
    .locals 2

    .prologue
    .line 2567
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->postDeliveryRefundWindowMsec_:J

    return-wide v0
.end method

.method public getPreordered()Z
    .locals 1

    .prologue
    .line 2604
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->preordered_:Z

    return v0
.end method

.method public getRefundTimeoutTimestampMsec()J
    .locals 2

    .prologue
    .line 2550
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->refundTimeoutTimestampMsec_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2695
    const/4 v0, 0x0

    .line 2696
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2697
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getInitiationTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2700
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2701
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getValidUntilTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2704
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2705
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getAutoRenewing()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2708
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2709
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getRefundTimeoutTimestampMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2712
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2713
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2716
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasDeveloperPurchaseInfo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2717
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getDeveloperPurchaseInfo()Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2720
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPreordered()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2721
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getPreordered()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2724
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasHidden()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2725
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getHidden()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2728
    :cond_7
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->cachedSize:I

    .line 2729
    return v0
.end method

.method public getValidUntilTimestampMsec()J
    .locals 2

    .prologue
    .line 2516
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->validUntilTimestampMsec_:J

    return-wide v0
.end method

.method public hasAutoRenewing()Z
    .locals 1

    .prologue
    .line 2534
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing:Z

    return v0
.end method

.method public hasDeveloperPurchaseInfo()Z
    .locals 1

    .prologue
    .line 2584
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasDeveloperPurchaseInfo:Z

    return v0
.end method

.method public hasHidden()Z
    .locals 1

    .prologue
    .line 2622
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasHidden:Z

    return v0
.end method

.method public hasInitiationTimestampMsec()Z
    .locals 1

    .prologue
    .line 2500
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec:Z

    return v0
.end method

.method public hasPostDeliveryRefundWindowMsec()Z
    .locals 1

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    return v0
.end method

.method public hasPreordered()Z
    .locals 1

    .prologue
    .line 2605
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPreordered:Z

    return v0
.end method

.method public hasRefundTimeoutTimestampMsec()Z
    .locals 1

    .prologue
    .line 2551
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    return v0
.end method

.method public hasValidUntilTimestampMsec()Z
    .locals 1

    .prologue
    .line 2517
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2737
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2738
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2742
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2743
    :sswitch_0
    return-object p0

    .line 2748
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2752
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2756
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2760
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2764
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2768
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$SignedData;-><init>()V

    .line 2769
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$SignedData;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2770
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setDeveloperPurchaseInfo(Lcom/google/android/finsky/remoting/protos/Common$SignedData;)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2774
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$SignedData;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setPreordered(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2778
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->setHidden(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    goto :goto_0

    .line 2738
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
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
    .line 2490
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRenewing(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing:Z

    .line 2537
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->autoRenewing_:Z

    .line 2538
    return-object p0
.end method

.method public setDeveloperPurchaseInfo(Lcom/google/android/finsky/remoting/protos/Common$SignedData;)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2587
    if-nez p1, :cond_0

    .line 2588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2590
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasDeveloperPurchaseInfo:Z

    .line 2591
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->developerPurchaseInfo_:Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    .line 2592
    return-object p0
.end method

.method public setHidden(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2624
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasHidden:Z

    .line 2625
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hidden_:Z

    .line 2626
    return-object p0
.end method

.method public setInitiationTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec:Z

    .line 2503
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->initiationTimestampMsec_:J

    .line 2504
    return-object p0
.end method

.method public setPostDeliveryRefundWindowMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec:Z

    .line 2571
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->postDeliveryRefundWindowMsec_:J

    .line 2572
    return-object p0
.end method

.method public setPreordered(Z)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPreordered:Z

    .line 2608
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->preordered_:Z

    .line 2609
    return-object p0
.end method

.method public setRefundTimeoutTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec:Z

    .line 2554
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->refundTimeoutTimestampMsec_:J

    .line 2555
    return-object p0
.end method

.method public setValidUntilTimestampMsec(J)Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 2519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec:Z

    .line 2520
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->validUntilTimestampMsec_:J

    .line 2521
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
    .line 2657
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasInitiationTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2658
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getInitiationTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2660
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasValidUntilTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2661
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getValidUntilTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2663
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasAutoRenewing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2664
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getAutoRenewing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2666
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasRefundTimeoutTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2667
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getRefundTimeoutTimestampMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2669
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPostDeliveryRefundWindowMsec()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2670
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 2672
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasDeveloperPurchaseInfo()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2673
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getDeveloperPurchaseInfo()Lcom/google/android/finsky/remoting/protos/Common$SignedData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2675
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasPreordered()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2676
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getPreordered()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2678
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->hasHidden()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2679
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$OwnershipInfo;->getHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2681
    :cond_7
    return-void
.end method
