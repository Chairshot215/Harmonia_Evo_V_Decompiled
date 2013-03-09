.class public final Lcom/google/android/finsky/remoting/protos/Common$Offer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Offer"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutFlowRequired_:Z

.field private convertedPrice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private currencyCode_:Ljava/lang/String;

.field private formattedAmount_:Ljava/lang/String;

.field private formattedDescription_:Ljava/lang/String;

.field private formattedFullAmount_:Ljava/lang/String;

.field private formattedName_:Ljava/lang/String;

.field private fullPriceMicros_:J

.field private hasCheckoutFlowRequired:Z

.field private hasCurrencyCode:Z

.field private hasFormattedAmount:Z

.field private hasFormattedDescription:Z

.field private hasFormattedFullAmount:Z

.field private hasFormattedName:Z

.field private hasFullPriceMicros:Z

.field private hasMicros:Z

.field private hasOfferType:Z

.field private hasOnSaleDate:Z

.field private hasPreorder:Z

.field private hasRentalTerms:Z

.field private hasSubscriptionTerms:Z

.field private micros_:J

.field private offerType_:I

.field private onSaleDate_:J

.field private preorder_:Z

.field private promotionLabel_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

.field private subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 492
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 497
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 548
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedName_:Ljava/lang/String;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedDescription_:Ljava/lang/String;

    .line 582
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 599
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 649
    iput-boolean v3, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 666
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 683
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 703
    iput-object v4, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    .line 723
    iput-boolean v3, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->preorder_:Z

    .line 740
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    .line 756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 492
    return-void
.end method


# virtual methods
.method public addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    return-object p0
.end method

.method public addPromotionLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    if-gez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSerializedSize()I

    .line 873
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    return v0
.end method

.method public getCheckoutFlowRequired()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    return v0
.end method

.method public getConvertedPriceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->convertedPrice_:Ljava/util/List;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedFullAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPriceMicros()J
    .locals 2

    .prologue
    .line 583
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    return-wide v0
.end method

.method public getMicros()J
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    return-wide v0
.end method

.method public getOfferType()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    return v0
.end method

.method public getOnSaleDate()J
    .locals 2

    .prologue
    .line 741
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    return-wide v0
.end method

.method public getPreorder()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->preorder_:Z

    return v0
.end method

.method public getPromotionLabelList()Ljava/util/List;
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
    .line 759
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->promotionLabel_:Ljava/util/List;

    return-object v0
.end method

.method public getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 878
    const/4 v3, 0x0

    .line 879
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 880
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 884
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 887
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 888
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 891
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getConvertedPriceList()Ljava/util/List;

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

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 892
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 895
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 896
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 899
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 900
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 903
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 904
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 907
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 908
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 911
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 912
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 915
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 916
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOnSaleDate()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 920
    :cond_9
    const/4 v0, 0x0

    .line 921
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPromotionLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 922
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 925
    .end local v1           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 926
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPromotionLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 928
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 929
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSubscriptionTerms()Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 932
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 933
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 936
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 937
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 940
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasPreorder()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 941
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPreorder()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 944
    :cond_e
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->cachedSize:I

    .line 945
    return v3
.end method

.method public getSubscriptionTerms()Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    return-object v0
.end method

.method public hasCheckoutFlowRequired()Z
    .locals 1

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    return v0
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    return v0
.end method

.method public hasFormattedAmount()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    return v0
.end method

.method public hasFormattedDescription()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription:Z

    return v0
.end method

.method public hasFormattedFullAmount()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    return v0
.end method

.method public hasFormattedName()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName:Z

    return v0
.end method

.method public hasFullPriceMicros()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    return v0
.end method

.method public hasMicros()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    return v0
.end method

.method public hasOfferType()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    return v0
.end method

.method public hasOnSaleDate()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate:Z

    return v0
.end method

.method public hasPreorder()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasPreorder:Z

    return v0
.end method

.method public hasRentalTerms()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    return v0
.end method

.method public hasSubscriptionTerms()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 954
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 958
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 959
    :sswitch_0
    return-object p0

    .line 964
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 968
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 972
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 976
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 977
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 978
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->addConvertedPrice(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 982
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 986
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 990
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 994
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 998
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;-><init>()V

    .line 999
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1000
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 1004
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setOnSaleDate(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 1008
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->addPromotionLabel(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 1012
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;-><init>()V

    .line 1013
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1014
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setSubscriptionTerms(Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto :goto_0

    .line 1018
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto/16 :goto_0

    .line 1022
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setFormattedDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto/16 :goto_0

    .line 1026
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->setPreorder(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    goto/16 :goto_0

    .line 954
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
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
    .line 489
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutFlowRequired(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired:Z

    .line 654
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->checkoutFlowRequired_:Z

    .line 655
    return-object p0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode:Z

    .line 519
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->currencyCode_:Ljava/lang/String;

    .line 520
    return-object p0
.end method

.method public setFormattedAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount:Z

    .line 536
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedAmount_:Ljava/lang/String;

    .line 537
    return-object p0
.end method

.method public setFormattedDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription:Z

    .line 570
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedDescription_:Ljava/lang/String;

    .line 571
    return-object p0
.end method

.method public setFormattedFullAmount(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount:Z

    .line 604
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedFullAmount_:Ljava/lang/String;

    .line 605
    return-object p0
.end method

.method public setFormattedName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName:Z

    .line 553
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->formattedName_:Ljava/lang/String;

    .line 554
    return-object p0
.end method

.method public setFullPriceMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros:Z

    .line 587
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->fullPriceMicros_:J

    .line 588
    return-object p0
.end method

.method public setMicros(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros:Z

    .line 502
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->micros_:J

    .line 503
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType:Z

    .line 671
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->offerType_:I

    .line 672
    return-object p0
.end method

.method public setOnSaleDate(J)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate:Z

    .line 745
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->onSaleDate_:J

    .line 746
    return-object p0
.end method

.method public setPreorder(Z)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasPreorder:Z

    .line 728
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->preorder_:Z

    .line 729
    return-object p0
.end method

.method public setRentalTerms(Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 688
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 690
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms:Z

    .line 691
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->rentalTerms_:Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    .line 692
    return-object p0
.end method

.method public setSubscriptionTerms(Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1
    .parameter "value"

    .prologue
    .line 707
    if-nez p1, :cond_0

    .line 708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 710
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms:Z

    .line 711
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Common$Offer;->subscriptionTerms_:Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    .line 712
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
    .line 819
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasMicros()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCurrencyCode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 825
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 828
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getConvertedPriceList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 829
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 831
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasCheckoutFlowRequired()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 832
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 834
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFullPriceMicros()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 835
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFullPriceMicros()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 837
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedFullAmount()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 838
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedFullAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 840
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 841
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 843
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasRentalTerms()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 844
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getRentalTerms()Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 846
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOnSaleDate()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 847
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOnSaleDate()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 849
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPromotionLabelList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 850
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 852
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasSubscriptionTerms()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 853
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getSubscriptionTerms()Lcom/google/android/finsky/remoting/protos/Common$SubscriptionTerms;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 855
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedName()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 856
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 858
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedDescription()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 859
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 861
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasPreorder()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 862
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getPreorder()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 864
    :cond_e
    return-void
.end method
