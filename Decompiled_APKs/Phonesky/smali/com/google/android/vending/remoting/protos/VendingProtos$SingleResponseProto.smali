.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleResponseProto"
.end annotation


# instance fields
.field private ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

.field private assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

.field private billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

.field private cachedSize:I

.field private checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

.field private checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

.field private commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

.field private contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

.field private getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

.field private getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

.field private getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

.field private getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

.field private getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

.field private getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

.field private getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

.field private hasAckNotificationsResponse:Z

.field private hasAssetsResponse:Z

.field private hasBillingEventResponse:Z

.field private hasCheckForNotificationsResponse:Z

.field private hasCheckLicenseResponse:Z

.field private hasCommentsResponse:Z

.field private hasContentSyncResponse:Z

.field private hasGetAddressSnippetResponse:Z

.field private hasGetAssetResponse:Z

.field private hasGetCarrierInfoResponse:Z

.field private hasGetCategoriesResponse:Z

.field private hasGetImageResponse:Z

.field private hasGetInAppPurchaseInformationResponse:Z

.field private hasGetMarketMetadataResponse:Z

.field private hasInAppRestoreTransactionsResponse:Z

.field private hasModifyCommentResponse:Z

.field private hasPaypalCreateAccountResponse:Z

.field private hasPaypalMassageAddressResponse:Z

.field private hasPaypalPreapprovalCredentialsResponse:Z

.field private hasPaypalPreapprovalDetailsResponse:Z

.field private hasPaypalPreapprovalResponse:Z

.field private hasPurchaseMetadataResponse:Z

.field private hasPurchaseOrderResponse:Z

.field private hasPurchasePostResponse:Z

.field private hasPurchaseProductResponse:Z

.field private hasQuerySuggestionResponse:Z

.field private hasRateCommentResponse:Z

.field private hasReconstructDatabaseResponse:Z

.field private hasRefundResponse:Z

.field private hasResponseProperties:Z

.field private hasRestoreApplicationResponse:Z

.field private hasSubCategoriesResponse:Z

.field private hasUninstallReasonResponse:Z

.field private inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

.field private modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

.field private paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

.field private paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

.field private paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

.field private paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

.field private paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

.field private purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

.field private purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

.field private purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

.field private purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

.field private querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

.field private rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

.field private reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

.field private refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

.field private responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

.field private restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

.field private subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

.field private uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22819
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 22824
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 22844
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 22864
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 22884
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 22904
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 22924
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 22944
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 22964
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 22984
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 23004
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 23024
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 23044
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 23064
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 23084
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 23104
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 23124
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 23144
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 23164
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 23184
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 23204
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 23224
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 23244
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 23264
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 23284
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 23304
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 23324
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 23344
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 23364
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 23384
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 23404
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 23424
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 23444
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 23464
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 23683
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    .line 22819
    return-void
.end method


# virtual methods
.method public getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    .locals 1

    .prologue
    .line 23386
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    return-object v0
.end method

.method public getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1

    .prologue
    .line 22846
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    return-object v0
.end method

.method public getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    .locals 1

    .prologue
    .line 23226
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 23686
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 23688
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getSerializedSize()I

    .line 23690
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    .locals 1

    .prologue
    .line 23366
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    return-object v0
.end method

.method public getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .locals 1

    .prologue
    .line 23106
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    return-object v0
.end method

.method public getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .locals 1

    .prologue
    .line 22866
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    return-object v0
.end method

.method public getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    .locals 1

    .prologue
    .line 22946
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    return-object v0
.end method

.method public getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .locals 1

    .prologue
    .line 23466
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    return-object v0
.end method

.method public getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .locals 1

    .prologue
    .line 22966
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    return-object v0
.end method

.method public getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1

    .prologue
    .line 23166
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    return-object v0
.end method

.method public getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    .locals 1

    .prologue
    .line 23146
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    return-object v0
.end method

.method public getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    .locals 1

    .prologue
    .line 22986
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    return-object v0
.end method

.method public getGetInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .locals 1

    .prologue
    .line 23346
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    return-object v0
.end method

.method public getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1

    .prologue
    .line 23126
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    .locals 1

    .prologue
    .line 23326
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    return-object v0
.end method

.method public getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    .locals 1

    .prologue
    .line 22886
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    return-object v0
.end method

.method public getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .locals 1

    .prologue
    .line 23286
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    return-object v0
.end method

.method public getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    .locals 1

    .prologue
    .line 23446
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .locals 1

    .prologue
    .line 23306
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    .locals 1

    .prologue
    .line 23266
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    .locals 1

    .prologue
    .line 23246
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    return-object v0
.end method

.method public getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    .locals 1

    .prologue
    .line 23026
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    return-object v0
.end method

.method public getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .locals 1

    .prologue
    .line 22926
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    return-object v0
.end method

.method public getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1

    .prologue
    .line 22906
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    return-object v0
.end method

.method public getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .locals 1

    .prologue
    .line 23406
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    return-object v0
.end method

.method public getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .locals 1

    .prologue
    .line 23206
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    return-object v0
.end method

.method public getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    .locals 1

    .prologue
    .line 23086
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    return-object v0
.end method

.method public getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    .locals 1

    .prologue
    .line 23426
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    return-object v0
.end method

.method public getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .locals 1

    .prologue
    .line 23006
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    return-object v0
.end method

.method public getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .locals 1

    .prologue
    .line 22826
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    .locals 1

    .prologue
    .line 23186
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 23695
    const/4 v0, 0x0

    .line 23696
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23697
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23700
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23701
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23704
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 23705
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23708
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23709
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23712
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 23713
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23716
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23717
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23720
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23721
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23724
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23725
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23728
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 23729
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23732
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23733
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23736
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 23737
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23740
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 23741
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23744
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23745
    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23748
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23749
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23752
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 23753
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23756
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 23757
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23760
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 23761
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23764
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 23765
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23768
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 23769
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23772
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 23773
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23776
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 23777
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23780
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 23781
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23784
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 23785
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23788
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 23789
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23792
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 23793
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23796
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 23797
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23800
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 23801
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23804
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 23805
    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23808
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 23809
    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23812
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 23813
    const/16 v1, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23816
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 23817
    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23820
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 23821
    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23824
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 23825
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23828
    :cond_20
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->cachedSize:I

    .line 23829
    return v0
.end method

.method public getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .locals 1

    .prologue
    .line 23046
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    return-object v0
.end method

.method public getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    .locals 1

    .prologue
    .line 23066
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    return-object v0
.end method

.method public hasAckNotificationsResponse()Z
    .locals 1

    .prologue
    .line 23385
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse:Z

    return v0
.end method

.method public hasAssetsResponse()Z
    .locals 1

    .prologue
    .line 22845
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse:Z

    return v0
.end method

.method public hasBillingEventResponse()Z
    .locals 1

    .prologue
    .line 23225
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse:Z

    return v0
.end method

.method public hasCheckForNotificationsResponse()Z
    .locals 1

    .prologue
    .line 23365
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse:Z

    return v0
.end method

.method public hasCheckLicenseResponse()Z
    .locals 1

    .prologue
    .line 23105
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse:Z

    return v0
.end method

.method public hasCommentsResponse()Z
    .locals 1

    .prologue
    .line 22865
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse:Z

    return v0
.end method

.method public hasContentSyncResponse()Z
    .locals 1

    .prologue
    .line 22945
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse:Z

    return v0
.end method

.method public hasGetAddressSnippetResponse()Z
    .locals 1

    .prologue
    .line 23465
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse:Z

    return v0
.end method

.method public hasGetAssetResponse()Z
    .locals 1

    .prologue
    .line 22965
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse:Z

    return v0
.end method

.method public hasGetCarrierInfoResponse()Z
    .locals 1

    .prologue
    .line 23165
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse:Z

    return v0
.end method

.method public hasGetCategoriesResponse()Z
    .locals 1

    .prologue
    .line 23145
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse:Z

    return v0
.end method

.method public hasGetImageResponse()Z
    .locals 1

    .prologue
    .line 22985
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse:Z

    return v0
.end method

.method public hasGetInAppPurchaseInformationResponse()Z
    .locals 1

    .prologue
    .line 23345
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse:Z

    return v0
.end method

.method public hasGetMarketMetadataResponse()Z
    .locals 1

    .prologue
    .line 23125
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsResponse()Z
    .locals 1

    .prologue
    .line 23325
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse:Z

    return v0
.end method

.method public hasModifyCommentResponse()Z
    .locals 1

    .prologue
    .line 22885
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse:Z

    return v0
.end method

.method public hasPaypalCreateAccountResponse()Z
    .locals 1

    .prologue
    .line 23285
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse:Z

    return v0
.end method

.method public hasPaypalMassageAddressResponse()Z
    .locals 1

    .prologue
    .line 23445
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsResponse()Z
    .locals 1

    .prologue
    .line 23305
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsResponse()Z
    .locals 1

    .prologue
    .line 23265
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalResponse()Z
    .locals 1

    .prologue
    .line 23245
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse:Z

    return v0
.end method

.method public hasPurchaseMetadataResponse()Z
    .locals 1

    .prologue
    .line 23025
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse:Z

    return v0
.end method

.method public hasPurchaseOrderResponse()Z
    .locals 1

    .prologue
    .line 22925
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse:Z

    return v0
.end method

.method public hasPurchasePostResponse()Z
    .locals 1

    .prologue
    .line 22905
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse:Z

    return v0
.end method

.method public hasPurchaseProductResponse()Z
    .locals 1

    .prologue
    .line 23405
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse:Z

    return v0
.end method

.method public hasQuerySuggestionResponse()Z
    .locals 1

    .prologue
    .line 23205
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse:Z

    return v0
.end method

.method public hasRateCommentResponse()Z
    .locals 1

    .prologue
    .line 23085
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse:Z

    return v0
.end method

.method public hasReconstructDatabaseResponse()Z
    .locals 1

    .prologue
    .line 23425
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse:Z

    return v0
.end method

.method public hasRefundResponse()Z
    .locals 1

    .prologue
    .line 23005
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse:Z

    return v0
.end method

.method public hasResponseProperties()Z
    .locals 1

    .prologue
    .line 22825
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties:Z

    return v0
.end method

.method public hasRestoreApplicationResponse()Z
    .locals 1

    .prologue
    .line 23185
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse:Z

    return v0
.end method

.method public hasSubCategoriesResponse()Z
    .locals 1

    .prologue
    .line 23045
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse:Z

    return v0
.end method

.method public hasUninstallReasonResponse()Z
    .locals 1

    .prologue
    .line 23065
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23837
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 23838
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 23842
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23843
    :sswitch_0
    return-object p0

    .line 23848
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;-><init>()V

    .line 23849
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23850
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23854
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;-><init>()V

    .line 23855
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23856
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23860
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;-><init>()V

    .line 23861
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23862
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23866
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;-><init>()V

    .line 23867
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23868
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23872
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    :sswitch_5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;-><init>()V

    .line 23873
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23874
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23878
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    :sswitch_6
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;-><init>()V

    .line 23879
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23880
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23884
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    :sswitch_7
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;-><init>()V

    .line 23885
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23886
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23890
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    :sswitch_8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;-><init>()V

    .line 23891
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23892
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23896
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    :sswitch_9
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;-><init>()V

    .line 23897
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23898
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto :goto_0

    .line 23902
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    :sswitch_a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;-><init>()V

    .line 23903
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23904
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23908
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    :sswitch_b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;-><init>()V

    .line 23909
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23910
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23914
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    :sswitch_c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;-><init>()V

    .line 23915
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23916
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23920
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    :sswitch_d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;-><init>()V

    .line 23921
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23922
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23926
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;-><init>()V

    .line 23927
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23928
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23932
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    :sswitch_f
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;-><init>()V

    .line 23933
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23934
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23938
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    :sswitch_10
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;-><init>()V

    .line 23939
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23940
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23944
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    :sswitch_11
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;-><init>()V

    .line 23945
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23946
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23950
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    :sswitch_12
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;-><init>()V

    .line 23951
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23952
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23956
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    :sswitch_13
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;-><init>()V

    .line 23957
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23958
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23962
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    :sswitch_14
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;-><init>()V

    .line 23963
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23964
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23968
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    :sswitch_15
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;-><init>()V

    .line 23969
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23970
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23974
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;-><init>()V

    .line 23975
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23976
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23980
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    :sswitch_17
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;-><init>()V

    .line 23981
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23982
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23986
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    :sswitch_18
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;-><init>()V

    .line 23987
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23988
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23992
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    :sswitch_19
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;-><init>()V

    .line 23993
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 23994
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23998
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;-><init>()V

    .line 23999
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24000
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 24004
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    :sswitch_1b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;-><init>()V

    .line 24005
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24006
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 24010
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    :sswitch_1c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;-><init>()V

    .line 24011
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24012
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 24016
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    :sswitch_1d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;-><init>()V

    .line 24017
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24018
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 24022
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    :sswitch_1e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;-><init>()V

    .line 24023
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24024
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 24028
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    :sswitch_1f
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;-><init>()V

    .line 24029
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24030
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 24034
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    :sswitch_20
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;-><init>()V

    .line 24035
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24036
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 24040
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    :sswitch_21
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;-><init>()V

    .line 24041
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 24042
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    goto/16 :goto_0

    .line 23838
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x5a -> :sswitch_a
        0x62 -> :sswitch_b
        0x6a -> :sswitch_c
        0x7a -> :sswitch_d
        0x82 -> :sswitch_e
        0x8a -> :sswitch_f
        0x92 -> :sswitch_10
        0xa2 -> :sswitch_11
        0xaa -> :sswitch_12
        0xba -> :sswitch_13
        0xc2 -> :sswitch_14
        0xca -> :sswitch_15
        0xd2 -> :sswitch_16
        0xda -> :sswitch_17
        0xe2 -> :sswitch_18
        0xea -> :sswitch_19
        0xf2 -> :sswitch_1a
        0xfa -> :sswitch_1b
        0x102 -> :sswitch_1c
        0x10a -> :sswitch_1d
        0x112 -> :sswitch_1e
        0x11a -> :sswitch_1f
        0x122 -> :sswitch_20
        0x12a -> :sswitch_21
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
    .line 22817
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23388
    if-nez p1, :cond_0

    .line 23389
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23391
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse:Z

    .line 23392
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 23393
    return-object p0
.end method

.method public setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22848
    if-nez p1, :cond_0

    .line 22849
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22851
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse:Z

    .line 22852
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 22853
    return-object p0
.end method

.method public setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23228
    if-nez p1, :cond_0

    .line 23229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23231
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse:Z

    .line 23232
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 23233
    return-object p0
.end method

.method public setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23368
    if-nez p1, :cond_0

    .line 23369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23371
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse:Z

    .line 23372
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 23373
    return-object p0
.end method

.method public setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23108
    if-nez p1, :cond_0

    .line 23109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23111
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse:Z

    .line 23112
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 23113
    return-object p0
.end method

.method public setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22868
    if-nez p1, :cond_0

    .line 22869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22871
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse:Z

    .line 22872
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 22873
    return-object p0
.end method

.method public setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22948
    if-nez p1, :cond_0

    .line 22949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22951
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse:Z

    .line 22952
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 22953
    return-object p0
.end method

.method public setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23468
    if-nez p1, :cond_0

    .line 23469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23471
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse:Z

    .line 23472
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 23473
    return-object p0
.end method

.method public setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22968
    if-nez p1, :cond_0

    .line 22969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22971
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse:Z

    .line 22972
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 22973
    return-object p0
.end method

.method public setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23168
    if-nez p1, :cond_0

    .line 23169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23171
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse:Z

    .line 23172
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 23173
    return-object p0
.end method

.method public setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23148
    if-nez p1, :cond_0

    .line 23149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23151
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse:Z

    .line 23152
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 23153
    return-object p0
.end method

.method public setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22988
    if-nez p1, :cond_0

    .line 22989
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22991
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse:Z

    .line 22992
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 22993
    return-object p0
.end method

.method public setGetInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23348
    if-nez p1, :cond_0

    .line 23349
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23351
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse:Z

    .line 23352
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 23353
    return-object p0
.end method

.method public setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23128
    if-nez p1, :cond_0

    .line 23129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23131
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse:Z

    .line 23132
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 23133
    return-object p0
.end method

.method public setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23328
    if-nez p1, :cond_0

    .line 23329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23331
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse:Z

    .line 23332
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 23333
    return-object p0
.end method

.method public setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22888
    if-nez p1, :cond_0

    .line 22889
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22891
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse:Z

    .line 22892
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 22893
    return-object p0
.end method

.method public setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23288
    if-nez p1, :cond_0

    .line 23289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23291
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse:Z

    .line 23292
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 23293
    return-object p0
.end method

.method public setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23448
    if-nez p1, :cond_0

    .line 23449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23451
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse:Z

    .line 23452
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 23453
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23308
    if-nez p1, :cond_0

    .line 23309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse:Z

    .line 23312
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 23313
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23268
    if-nez p1, :cond_0

    .line 23269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23271
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse:Z

    .line 23272
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 23273
    return-object p0
.end method

.method public setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23248
    if-nez p1, :cond_0

    .line 23249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23251
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse:Z

    .line 23252
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 23253
    return-object p0
.end method

.method public setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23028
    if-nez p1, :cond_0

    .line 23029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23031
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse:Z

    .line 23032
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 23033
    return-object p0
.end method

.method public setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22928
    if-nez p1, :cond_0

    .line 22929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22931
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse:Z

    .line 22932
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 22933
    return-object p0
.end method

.method public setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22908
    if-nez p1, :cond_0

    .line 22909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22911
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse:Z

    .line 22912
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 22913
    return-object p0
.end method

.method public setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23408
    if-nez p1, :cond_0

    .line 23409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23411
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse:Z

    .line 23412
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 23413
    return-object p0
.end method

.method public setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23208
    if-nez p1, :cond_0

    .line 23209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23211
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse:Z

    .line 23212
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 23213
    return-object p0
.end method

.method public setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23088
    if-nez p1, :cond_0

    .line 23089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23091
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse:Z

    .line 23092
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 23093
    return-object p0
.end method

.method public setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23428
    if-nez p1, :cond_0

    .line 23429
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23431
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse:Z

    .line 23432
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 23433
    return-object p0
.end method

.method public setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23008
    if-nez p1, :cond_0

    .line 23009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23011
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse:Z

    .line 23012
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 23013
    return-object p0
.end method

.method public setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 22828
    if-nez p1, :cond_0

    .line 22829
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22831
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties:Z

    .line 22832
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 22833
    return-object p0
.end method

.method public setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23188
    if-nez p1, :cond_0

    .line 23189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23191
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse:Z

    .line 23192
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 23193
    return-object p0
.end method

.method public setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23048
    if-nez p1, :cond_0

    .line 23049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23051
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse:Z

    .line 23052
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 23053
    return-object p0
.end method

.method public setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 23068
    if-nez p1, :cond_0

    .line 23069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23071
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse:Z

    .line 23072
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 23073
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
    .line 23582
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasResponseProperties()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23583
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23585
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAssetsResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23586
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23588
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCommentsResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23589
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23591
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasModifyCommentResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23592
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23594
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchasePostResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23595
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23597
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseOrderResponse()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23598
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23600
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasContentSyncResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23601
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23603
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAssetResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23604
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23606
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetImageResponse()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23607
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23609
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRefundResponse()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23610
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23612
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseMetadataResponse()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23613
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23615
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasSubCategoriesResponse()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23616
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23618
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasUninstallReasonResponse()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 23619
    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23621
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRateCommentResponse()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 23622
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23624
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckLicenseResponse()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23625
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23627
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetMarketMetadataResponse()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 23628
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23630
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCategoriesResponse()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 23631
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23633
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetCarrierInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 23634
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23636
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasRestoreApplicationResponse()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 23637
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23639
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasQuerySuggestionResponse()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 23640
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23642
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasBillingEventResponse()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 23643
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23645
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalResponse()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 23646
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23648
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 23649
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23651
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalCreateAccountResponse()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 23652
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23654
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 23655
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23657
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasInAppRestoreTransactionsResponse()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 23658
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23660
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetInAppPurchaseInformationResponse()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 23661
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23663
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasCheckForNotificationsResponse()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 23664
    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23666
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasAckNotificationsResponse()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 23667
    const/16 v0, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23669
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPurchaseProductResponse()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 23670
    const/16 v0, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23672
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasReconstructDatabaseResponse()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 23673
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23675
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasPaypalMassageAddressResponse()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 23676
    const/16 v0, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23678
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->hasGetAddressSnippetResponse()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 23679
    const/16 v0, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$SingleResponseProto;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 23681
    :cond_20
    return-void
.end method
