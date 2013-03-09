.class public final Lcom/google/android/finsky/remoting/protos/Response$Payload;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payload"
.end annotation


# instance fields
.field private acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

.field private ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

.field private browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

.field private bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

.field private buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

.field private cachedSize:I

.field private checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

.field private checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

.field private consumePurchaseResponse_:Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

.field private deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

.field private detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

.field private flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

.field private hasAcceptTosResponse:Z

.field private hasAckNotificationResponse:Z

.field private hasBrowseResponse:Z

.field private hasBulkDetailsResponse:Z

.field private hasBuyResponse:Z

.field private hasCheckInstrumentResponse:Z

.field private hasCheckPromoOfferResponse:Z

.field private hasConsumePurchaseResponse:Z

.field private hasDeliveryResponse:Z

.field private hasDetailsResponse:Z

.field private hasFlagContentResponse:Z

.field private hasInitiateAssociationResponse:Z

.field private hasInstrumentSetupInfoResponse:Z

.field private hasLibraryReplicationResponse:Z

.field private hasListResponse:Z

.field private hasLogResponse:Z

.field private hasModifyLibraryResponse:Z

.field private hasPlusOneResponse:Z

.field private hasPlusProfileResponse:Z

.field private hasPurchaseStatusResponse:Z

.field private hasRateSuggestedContentResponse:Z

.field private hasRedeemGiftCardResponse:Z

.field private hasResolveLinkResponse:Z

.field private hasReviewResponse:Z

.field private hasRevokeResponse:Z

.field private hasSearchResponse:Z

.field private hasTocResponse:Z

.field private hasUpdateInstrumentResponse:Z

.field private hasUploadDeviceConfigResponse:Z

.field private hasVerifyAssociationResponse:Z

.field private initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

.field private instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

.field private libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

.field private listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

.field private logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

.field private modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

.field private plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

.field private plusProfileResponse_:Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

.field private purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

.field private rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

.field private redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

.field private resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

.field private reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

.field private revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

.field private searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

.field private tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

.field private updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

.field private uploadDeviceConfigResponse_:Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

.field private verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 251
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 271
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .line 291
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .line 311
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 331
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .line 351
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 371
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 391
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 411
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 431
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    .line 451
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .line 471
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .line 491
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    .line 511
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    .line 531
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    .line 551
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .line 571
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    .line 591
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .line 611
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .line 631
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 651
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    .line 671
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .line 691
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    .line 711
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    .line 731
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    .line 751
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    .line 771
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    .line 791
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->uploadDeviceConfigResponse_:Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    .line 811
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusProfileResponse_:Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    .line 831
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->consumePurchaseResponse_:Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    .line 1042
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 246
    return-void
.end method


# virtual methods
.method public getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    return-object v0
.end method

.method public getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    return-object v0
.end method

.method public getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    return-object v0
.end method

.method public getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    return-object v0
.end method

.method public getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    if-gez v0, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSerializedSize()I

    .line 1049
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    return v0
.end method

.method public getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    return-object v0
.end method

.method public getCheckPromoOfferResponse()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    return-object v0
.end method

.method public getConsumePurchaseResponse()Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->consumePurchaseResponse_:Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    return-object v0
.end method

.method public getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    return-object v0
.end method

.method public getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    return-object v0
.end method

.method public getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    return-object v0
.end method

.method public getInitiateAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    return-object v0
.end method

.method public getInstrumentSetupInfoResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    return-object v0
.end method

.method public getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    return-object v0
.end method

.method public getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    return-object v0
.end method

.method public getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    return-object v0
.end method

.method public getModifyLibraryResponse()Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    return-object v0
.end method

.method public getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    return-object v0
.end method

.method public getPlusProfileResponse()Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusProfileResponse_:Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    return-object v0
.end method

.method public getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    return-object v0
.end method

.method public getRateSuggestedContentResponse()Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    return-object v0
.end method

.method public getRedeemGiftCardResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    return-object v0
.end method

.method public getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    return-object v0
.end method

.method public getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    return-object v0
.end method

.method public getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    return-object v0
.end method

.method public getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1055
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1056
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1059
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1063
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1064
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1067
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1068
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1071
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1072
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1075
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1076
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1079
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1080
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1083
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1084
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1087
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1088
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1091
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1092
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1095
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1096
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1100
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1104
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1108
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1112
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInitiateAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1115
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1116
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getVerifyAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1120
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1123
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1124
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1127
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1128
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1132
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1135
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1136
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1139
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1140
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1143
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1144
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRateSuggestedContentResponse()Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1147
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1148
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckPromoOfferResponse()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1152
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInstrumentSetupInfoResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1155
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1156
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRedeemGiftCardResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1159
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1160
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getModifyLibraryResponse()Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1163
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUploadDeviceConfigResponse()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1164
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUploadDeviceConfigResponse()Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1167
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusProfileResponse()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1168
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusProfileResponse()Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1171
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasConsumePurchaseResponse()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1172
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getConsumePurchaseResponse()Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1175
    :cond_1d
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->cachedSize:I

    .line 1176
    return v0
.end method

.method public getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    return-object v0
.end method

.method public getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    return-object v0
.end method

.method public getUploadDeviceConfigResponse()Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->uploadDeviceConfigResponse_:Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    return-object v0
.end method

.method public getVerifyAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    return-object v0
.end method

.method public hasAcceptTosResponse()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse:Z

    return v0
.end method

.method public hasAckNotificationResponse()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse:Z

    return v0
.end method

.method public hasBrowseResponse()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    return v0
.end method

.method public hasBulkDetailsResponse()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse:Z

    return v0
.end method

.method public hasBuyResponse()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    return v0
.end method

.method public hasCheckInstrumentResponse()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse:Z

    return v0
.end method

.method public hasCheckPromoOfferResponse()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse:Z

    return v0
.end method

.method public hasConsumePurchaseResponse()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasConsumePurchaseResponse:Z

    return v0
.end method

.method public hasDeliveryResponse()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse:Z

    return v0
.end method

.method public hasDetailsResponse()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    return v0
.end method

.method public hasFlagContentResponse()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse:Z

    return v0
.end method

.method public hasInitiateAssociationResponse()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse:Z

    return v0
.end method

.method public hasInstrumentSetupInfoResponse()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse:Z

    return v0
.end method

.method public hasLibraryReplicationResponse()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse:Z

    return v0
.end method

.method public hasListResponse()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    return v0
.end method

.method public hasLogResponse()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse:Z

    return v0
.end method

.method public hasModifyLibraryResponse()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse:Z

    return v0
.end method

.method public hasPlusOneResponse()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse:Z

    return v0
.end method

.method public hasPlusProfileResponse()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusProfileResponse:Z

    return v0
.end method

.method public hasPurchaseStatusResponse()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    return v0
.end method

.method public hasRateSuggestedContentResponse()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse:Z

    return v0
.end method

.method public hasRedeemGiftCardResponse()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse:Z

    return v0
.end method

.method public hasResolveLinkResponse()Z
    .locals 1

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse:Z

    return v0
.end method

.method public hasReviewResponse()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    return v0
.end method

.method public hasRevokeResponse()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse:Z

    return v0
.end method

.method public hasSearchResponse()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    return v0
.end method

.method public hasTocResponse()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    return v0
.end method

.method public hasUpdateInstrumentResponse()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse:Z

    return v0
.end method

.method public hasUploadDeviceConfigResponse()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUploadDeviceConfigResponse:Z

    return v0
.end method

.method public hasVerifyAssociationResponse()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1185
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1189
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1190
    :sswitch_0
    return-object p0

    .line 1195
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;-><init>()V

    .line 1196
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1197
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1201
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;-><init>()V

    .line 1202
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1203
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1207
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;-><init>()V

    .line 1208
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1209
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setReviewResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1213
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;-><init>()V

    .line 1214
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1215
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1219
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
    :sswitch_5
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;-><init>()V

    .line 1220
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1221
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setSearchResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1225
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;-><init>()V

    .line 1226
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1227
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1231
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    :sswitch_7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;-><init>()V

    .line 1232
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1233
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1237
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;
    :sswitch_8
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;-><init>()V

    .line 1238
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1239
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1243
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    :sswitch_9
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;-><init>()V

    .line 1244
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1245
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto :goto_0

    .line 1249
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;
    :sswitch_a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Log$LogResponse;-><init>()V

    .line 1250
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1251
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setLogResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1255
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;
    :sswitch_b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;-><init>()V

    .line 1256
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1257
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setCheckInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1261
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;
    :sswitch_c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;-><init>()V

    .line 1262
    .local v1, value:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1263
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPlusOneResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1267
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;
    :sswitch_d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;-><init>()V

    .line 1268
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1269
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setFlagContentResponse(Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1273
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;-><init>()V

    .line 1274
    .local v1, value:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1275
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setAckNotificationResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1279
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;
    :sswitch_f
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;-><init>()V

    .line 1280
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1281
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setInitiateAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1285
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    :sswitch_10
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;-><init>()V

    .line 1286
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1287
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setVerifyAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1291
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;
    :sswitch_11
    new-instance v1, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;-><init>()V

    .line 1292
    .local v1, value:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1293
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setLibraryReplicationResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1297
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;
    :sswitch_12
    new-instance v1, Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/RevokeResponse;-><init>()V

    .line 1298
    .local v1, value:Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1299
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRevokeResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1303
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/RevokeResponse;
    :sswitch_13
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;-><init>()V

    .line 1304
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1305
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setBulkDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1309
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;
    :sswitch_14
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;-><init>()V

    .line 1310
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1311
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setResolveLinkResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1315
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    :sswitch_15
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;-><init>()V

    .line 1316
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1317
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setDeliveryResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1321
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;
    :sswitch_16
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;-><init>()V

    .line 1322
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1323
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setAcceptTosResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1327
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;
    :sswitch_17
    new-instance v1, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;-><init>()V

    .line 1328
    .local v1, value:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1329
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRateSuggestedContentResponse(Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1333
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;
    :sswitch_18
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;-><init>()V

    .line 1334
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1335
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setCheckPromoOfferResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1339
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    :sswitch_19
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;-><init>()V

    .line 1340
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1341
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setInstrumentSetupInfoResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1345
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;-><init>()V

    .line 1346
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1347
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setRedeemGiftCardResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1351
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    :sswitch_1b
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;-><init>()V

    .line 1352
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1353
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setModifyLibraryResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1357
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;
    :sswitch_1c
    new-instance v1, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;-><init>()V

    .line 1358
    .local v1, value:Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1359
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setUploadDeviceConfigResponse(Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1363
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;
    :sswitch_1d
    new-instance v1, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;-><init>()V

    .line 1364
    .local v1, value:Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1365
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setPlusProfileResponse(Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1369
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;-><init>()V

    .line 1370
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1371
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->setConsumePurchaseResponse(Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    goto/16 :goto_0

    .line 1185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
        0xd2 -> :sswitch_1a
        0xda -> :sswitch_1b
        0xe2 -> :sswitch_1c
        0xea -> :sswitch_1d
        0xf2 -> :sswitch_1e
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
    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptTosResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 678
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse:Z

    .line 679
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->acceptTosResponse_:Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .line 680
    return-object p0
.end method

.method public setAckNotificationResponse(Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 515
    if-nez p1, :cond_0

    .line 516
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 518
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse:Z

    .line 519
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->ackNotificationResponse_:Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    .line 520
    return-object p0
.end method

.method public setBrowseResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 378
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse:Z

    .line 379
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->browseResponse_:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 380
    return-object p0
.end method

.method public setBulkDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 618
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse:Z

    .line 619
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->bulkDetailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    .line 620
    return-object p0
.end method

.method public setBuyResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 318
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse:Z

    .line 319
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->buyResponse_:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .line 320
    return-object p0
.end method

.method public setCheckInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 455
    if-nez p1, :cond_0

    .line 456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 458
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse:Z

    .line 459
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    .line 460
    return-object p0
.end method

.method public setCheckPromoOfferResponse(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 718
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse:Z

    .line 719
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->checkPromoOfferResponse_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    .line 720
    return-object p0
.end method

.method public setConsumePurchaseResponse(Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 838
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasConsumePurchaseResponse:Z

    .line 839
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->consumePurchaseResponse_:Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    .line 840
    return-object p0
.end method

.method public setDeliveryResponse(Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 658
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse:Z

    .line 659
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->deliveryResponse_:Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    .line 660
    return-object p0
.end method

.method public setDetailsResponse(Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 278
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse:Z

    .line 279
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->detailsResponse_:Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    .line 280
    return-object p0
.end method

.method public setFlagContentResponse(Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 498
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse:Z

    .line 499
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->flagContentResponse_:Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    .line 500
    return-object p0
.end method

.method public setInitiateAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 538
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse:Z

    .line 539
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->initiateAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    .line 540
    return-object p0
.end method

.method public setInstrumentSetupInfoResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 735
    if-nez p1, :cond_0

    .line 736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 738
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse:Z

    .line 739
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->instrumentSetupInfoResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    .line 740
    return-object p0
.end method

.method public setLibraryReplicationResponse(Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 578
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse:Z

    .line 579
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->libraryReplicationResponse_:Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    .line 580
    return-object p0
.end method

.method public setListResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse:Z

    .line 259
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->listResponse_:Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .line 260
    return-object p0
.end method

.method public setLogResponse(Lcom/google/android/finsky/remoting/protos/Log$LogResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 438
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse:Z

    .line 439
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->logResponse_:Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    .line 440
    return-object p0
.end method

.method public setModifyLibraryResponse(Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 775
    if-nez p1, :cond_0

    .line 776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 778
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse:Z

    .line 779
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->modifyLibraryResponse_:Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    .line 780
    return-object p0
.end method

.method public setPlusOneResponse(Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 478
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse:Z

    .line 479
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusOneResponse_:Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    .line 480
    return-object p0
.end method

.method public setPlusProfileResponse(Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 815
    if-nez p1, :cond_0

    .line 816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 818
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusProfileResponse:Z

    .line 819
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->plusProfileResponse_:Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    .line 820
    return-object p0
.end method

.method public setPurchaseStatusResponse(Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 395
    if-nez p1, :cond_0

    .line 396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 398
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse:Z

    .line 399
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->purchaseStatusResponse_:Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    .line 400
    return-object p0
.end method

.method public setRateSuggestedContentResponse(Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 695
    if-nez p1, :cond_0

    .line 696
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 698
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse:Z

    .line 699
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->rateSuggestedContentResponse_:Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    .line 700
    return-object p0
.end method

.method public setRedeemGiftCardResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 755
    if-nez p1, :cond_0

    .line 756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 758
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse:Z

    .line 759
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->redeemGiftCardResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    .line 760
    return-object p0
.end method

.method public setResolveLinkResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse:Z

    .line 639
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->resolveLinkResponse_:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 640
    return-object p0
.end method

.method public setReviewResponse(Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse:Z

    .line 299
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->reviewResponse_:Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    .line 300
    return-object p0
.end method

.method public setRevokeResponse(Lcom/google/android/finsky/remoting/protos/RevokeResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 595
    if-nez p1, :cond_0

    .line 596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 598
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse:Z

    .line 599
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->revokeResponse_:Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    .line 600
    return-object p0
.end method

.method public setSearchResponse(Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse:Z

    .line 339
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->searchResponse_:Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    .line 340
    return-object p0
.end method

.method public setTocResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 358
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse:Z

    .line 359
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->tocResponse_:Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .line 360
    return-object p0
.end method

.method public setUpdateInstrumentResponse(Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 418
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse:Z

    .line 419
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->updateInstrumentResponse_:Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    .line 420
    return-object p0
.end method

.method public setUploadDeviceConfigResponse(Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 795
    if-nez p1, :cond_0

    .line 796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 798
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUploadDeviceConfigResponse:Z

    .line 799
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->uploadDeviceConfigResponse_:Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    .line 800
    return-object p0
.end method

.method public setVerifyAssociationResponse(Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;)Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1
    .parameter "value"

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 558
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse:Z

    .line 559
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$Payload;->verifyAssociationResponse_:Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    .line 560
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
    .line 950
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasListResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getListResponse()Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$DetailsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 956
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasReviewResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getReviewResponse()Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 959
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBuyResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 960
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBuyResponse()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 962
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 963
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getSearchResponse()Lcom/google/android/finsky/remoting/protos/Search$SearchResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 965
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasTocResponse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 966
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getTocResponse()Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 968
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBrowseResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 969
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBrowseResponse()Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 971
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPurchaseStatusResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 972
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPurchaseStatusResponse()Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 974
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUpdateInstrumentResponse()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 975
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUpdateInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$UpdateInstrumentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 977
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLogResponse()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 978
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLogResponse()Lcom/google/android/finsky/remoting/protos/Log$LogResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 980
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckInstrumentResponse()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 981
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckInstrumentResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$CheckInstrumentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 983
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusOneResponse()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 984
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusOneResponse()Lcom/google/android/finsky/remoting/protos/PlusOne$PlusOneResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 986
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasFlagContentResponse()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 987
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getFlagContentResponse()Lcom/google/android/finsky/remoting/protos/ContentFlagging$FlagContentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 989
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAckNotificationResponse()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 990
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAckNotificationResponse()Lcom/google/android/finsky/remoting/protos/AckNotification$AckNotificationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 992
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInitiateAssociationResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 993
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInitiateAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 995
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasVerifyAssociationResponse()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 996
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getVerifyAssociationResponse()Lcom/google/android/finsky/remoting/protos/CarrierBilling$VerifyAssociationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 998
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasLibraryReplicationResponse()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 999
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getLibraryReplicationResponse()Lcom/google/android/finsky/remoting/protos/LibraryReplication$LibraryReplicationResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1001
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRevokeResponse()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1002
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRevokeResponse()Lcom/google/android/finsky/remoting/protos/RevokeResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1004
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasBulkDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1005
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getBulkDetailsResponse()Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1007
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasResolveLinkResponse()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1008
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getResolveLinkResponse()Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1010
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasDeliveryResponse()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1011
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getDeliveryResponse()Lcom/google/android/finsky/remoting/protos/Delivery$DeliveryResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1013
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasAcceptTosResponse()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1014
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getAcceptTosResponse()Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1016
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRateSuggestedContentResponse()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1017
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRateSuggestedContentResponse()Lcom/google/android/finsky/remoting/protos/RateSuggestedContentResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1019
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasCheckPromoOfferResponse()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1020
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getCheckPromoOfferResponse()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1022
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasInstrumentSetupInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1023
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getInstrumentSetupInfoResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1025
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasRedeemGiftCardResponse()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1026
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getRedeemGiftCardResponse()Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1028
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasModifyLibraryResponse()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1029
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getModifyLibraryResponse()Lcom/google/android/finsky/remoting/protos/ModifyLibrary$ModifyLibraryResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1031
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasUploadDeviceConfigResponse()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1032
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getUploadDeviceConfigResponse()Lcom/google/android/finsky/remoting/protos/UploadDeviceConfig$UploadDeviceConfigResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1034
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasPlusProfileResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1035
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getPlusProfileResponse()Lcom/google/android/finsky/remoting/protos/PlusProfile$PlusProfileResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1037
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->hasConsumePurchaseResponse()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1038
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$Payload;->getConsumePurchaseResponse()Lcom/google/android/finsky/remoting/protos/ConsumePurchaseResponse;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1040
    :cond_1d
    return-void
.end method
