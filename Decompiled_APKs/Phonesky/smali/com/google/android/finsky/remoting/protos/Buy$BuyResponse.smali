.class public final Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuyResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    }
.end annotation


# instance fields
.field private addInstrumentPromptHtml_:Ljava/lang/String;

.field private baseCheckoutUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private challenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

.field private checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

.field private checkoutServiceId_:Ljava/lang/String;

.field private checkoutTokenRequired_:Z

.field private confirmButtonText_:Ljava/lang/String;

.field private continueViaUrl_:Ljava/lang/String;

.field private hasAddInstrumentPromptHtml:Z

.field private hasBaseCheckoutUrl:Z

.field private hasChallenge:Z

.field private hasCheckoutInfo:Z

.field private hasCheckoutServiceId:Z

.field private hasCheckoutTokenRequired:Z

.field private hasConfirmButtonText:Z

.field private hasContinueViaUrl:Z

.field private hasIabPermissionError:Z

.field private hasPurchaseCookie:Z

.field private hasPurchaseResponse:Z

.field private hasPurchaseStatusResponse:Z

.field private hasPurchaseStatusUrl:Z

.field private iabPermissionError_:I

.field private purchaseCookie_:Ljava/lang/String;

.field private purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

.field private purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

.field private purchaseStatusUrl_:Ljava/lang/String;

.field private tosCheckboxHtml_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 294
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1403
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    .line 1423
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 1443
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 1463
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    .line 1480
    iput-boolean v2, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    .line 1497
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    .line 1514
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    .line 1531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    .line 1547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    .line 1581
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->iabPermissionError_:I

    .line 1598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseCookie_:Ljava/lang/String;

    .line 1615
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->challenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    .line 1635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->addInstrumentPromptHtml_:Ljava/lang/String;

    .line 1652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->confirmButtonText_:Ljava/lang/String;

    .line 1748
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    .line 294
    return-void
.end method


# virtual methods
.method public addTosCheckboxHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1564
    if-nez p1, :cond_0

    .line 1565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    .line 1570
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1571
    return-object p0
.end method

.method public getAddInstrumentPromptHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->addInstrumentPromptHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseCheckoutUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1753
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getSerializedSize()I

    .line 1755
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    return v0
.end method

.method public getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->challenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    return-object v0
.end method

.method public getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    return-object v0
.end method

.method public getCheckoutServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 1481
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getConfirmButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->confirmButtonText_:Ljava/lang/String;

    return-object v0
.end method

.method public getContinueViaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIabPermissionError()I
    .locals 1

    .prologue
    .line 1583
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->iabPermissionError_:I

    return v0
.end method

.method public getPurchaseCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    return-object v0
.end method

.method public getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    return-object v0
.end method

.method public getPurchaseStatusUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1760
    const/4 v3, 0x0

    .line 1761
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1762
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1766
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1769
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1770
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1773
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1774
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1777
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1778
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1781
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1782
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1785
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1786
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getBaseCheckoutUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1790
    :cond_6
    const/4 v0, 0x0

    .line 1791
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1792
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1795
    .end local v1           #element:Ljava/lang/String;
    :cond_7
    add-int/2addr v3, v0

    .line 1796
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1798
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1799
    const/16 v4, 0x26

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getIabPermissionError()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1802
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1803
    const/16 v4, 0x27

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1806
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1807
    const/16 v4, 0x2e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1810
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1811
    const/16 v4, 0x31

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1814
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1815
    const/16 v4, 0x32

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getAddInstrumentPromptHtml()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1818
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasConfirmButtonText()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1819
    const/16 v4, 0x33

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getConfirmButtonText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1822
    :cond_d
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->cachedSize:I

    .line 1823
    return v3
.end method

.method public getTosCheckboxHtmlList()Ljava/util/List;
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
    .line 1550
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->tosCheckboxHtml_:Ljava/util/List;

    return-object v0
.end method

.method public hasAddInstrumentPromptHtml()Z
    .locals 1

    .prologue
    .line 1637
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml:Z

    return v0
.end method

.method public hasBaseCheckoutUrl()Z
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    return v0
.end method

.method public hasChallenge()Z
    .locals 1

    .prologue
    .line 1616
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge:Z

    return v0
.end method

.method public hasCheckoutInfo()Z
    .locals 1

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo:Z

    return v0
.end method

.method public hasCheckoutServiceId()Z
    .locals 1

    .prologue
    .line 1499
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    return v0
.end method

.method public hasCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 1482
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasConfirmButtonText()Z
    .locals 1

    .prologue
    .line 1654
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasConfirmButtonText:Z

    return v0
.end method

.method public hasContinueViaUrl()Z
    .locals 1

    .prologue
    .line 1465
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    return v0
.end method

.method public hasIabPermissionError()Z
    .locals 1

    .prologue
    .line 1582
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError:Z

    return v0
.end method

.method public hasPurchaseCookie()Z
    .locals 1

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    return v0
.end method

.method public hasPurchaseResponse()Z
    .locals 1

    .prologue
    .line 1404
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse:Z

    return v0
.end method

.method public hasPurchaseStatusResponse()Z
    .locals 1

    .prologue
    .line 1424
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse:Z

    return v0
.end method

.method public hasPurchaseStatusUrl()Z
    .locals 1

    .prologue
    .line 1533
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1831
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1832
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1836
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1837
    :sswitch_0
    return-object p0

    .line 1842
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;-><init>()V

    .line 1843
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1844
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1848
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;-><init>()V

    .line 1849
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 1850
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutInfo(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1854
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setContinueViaUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1858
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseStatusUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1862
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutServiceId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1866
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1870
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setBaseCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1874
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->addTosCheckboxHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1878
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setIabPermissionError(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1882
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;-><init>()V

    .line 1883
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1884
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1888
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setPurchaseCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1892
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;-><init>()V

    .line 1893
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1894
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto :goto_0

    .line 1898
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setAddInstrumentPromptHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto/16 :goto_0

    .line 1902
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->setConfirmButtonText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    goto/16 :goto_0

    .line 1832
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
        0x42 -> :sswitch_3
        0x4a -> :sswitch_4
        0x62 -> :sswitch_5
        0x68 -> :sswitch_6
        0x72 -> :sswitch_7
        0x12a -> :sswitch_8
        0x130 -> :sswitch_9
        0x13a -> :sswitch_a
        0x172 -> :sswitch_b
        0x18a -> :sswitch_c
        0x192 -> :sswitch_d
        0x19a -> :sswitch_e
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
    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAddInstrumentPromptHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1639
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml:Z

    .line 1640
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->addInstrumentPromptHtml_:Ljava/lang/String;

    .line 1641
    return-object p0
.end method

.method public setBaseCheckoutUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl:Z

    .line 1519
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->baseCheckoutUrl_:Ljava/lang/String;

    .line 1520
    return-object p0
.end method

.method public setChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1619
    if-nez p1, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1622
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge:Z

    .line 1623
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->challenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    .line 1624
    return-object p0
.end method

.method public setCheckoutInfo(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1447
    if-nez p1, :cond_0

    .line 1448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1450
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo:Z

    .line 1451
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutInfo_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    .line 1452
    return-object p0
.end method

.method public setCheckoutServiceId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId:Z

    .line 1502
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutServiceId_:Ljava/lang/String;

    .line 1503
    return-object p0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired:Z

    .line 1485
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->checkoutTokenRequired_:Z

    .line 1486
    return-object p0
.end method

.method public setConfirmButtonText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasConfirmButtonText:Z

    .line 1657
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->confirmButtonText_:Ljava/lang/String;

    .line 1658
    return-object p0
.end method

.method public setContinueViaUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl:Z

    .line 1468
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->continueViaUrl_:Ljava/lang/String;

    .line 1469
    return-object p0
.end method

.method public setIabPermissionError(I)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError:Z

    .line 1586
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->iabPermissionError_:I

    .line 1587
    return-object p0
.end method

.method public setPurchaseCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie:Z

    .line 1603
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseCookie_:Ljava/lang/String;

    .line 1604
    return-object p0
.end method

.method public setPurchaseResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1407
    if-nez p1, :cond_0

    .line 1408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1410
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse:Z

    .line 1411
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    .line 1412
    return-object p0
.end method

.method public setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1427
    if-nez p1, :cond_0

    .line 1428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1430
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse:Z

    .line 1431
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 1432
    return-object p0
.end method

.method public setPurchaseStatusUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl:Z

    .line 1536
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->purchaseStatusUrl_:Ljava/lang/String;

    .line 1537
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
    .line 1704
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseResponse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1705
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseNotificationResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1707
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1710
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1711
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1713
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1714
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1716
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutServiceId()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1717
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1719
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1720
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1722
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasBaseCheckoutUrl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1723
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getBaseCheckoutUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1725
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getTosCheckboxHtmlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1726
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x25

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1728
    .end local v0           #element:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasIabPermissionError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1729
    const/16 v2, 0x26

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getIabPermissionError()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1731
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseStatusResponse()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1732
    const/16 v2, 0x27

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1734
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasPurchaseCookie()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1735
    const/16 v2, 0x2e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getPurchaseCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1737
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasChallenge()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1738
    const/16 v2, 0x31

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$Challenge;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1740
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasAddInstrumentPromptHtml()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1741
    const/16 v2, 0x32

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getAddInstrumentPromptHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1743
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasConfirmButtonText()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1744
    const/16 v2, 0x33

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getConfirmButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1746
    :cond_d
    return-void
.end method
