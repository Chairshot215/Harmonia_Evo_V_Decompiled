.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
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

.field private hasGetMarketMetadataResponse:Z

.field private hasInAppPurchaseInformationResponse:Z

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

.field private inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

.field private inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

.field private modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

.field private paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

.field private paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

.field private paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

.field private paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

.field private paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

.field private prefetchedBundle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;",
            ">;"
        }
    .end annotation
.end field

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

    .line 26075
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 26080
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 26100
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 26120
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 26140
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 26160
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 26180
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 26200
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 26220
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 26240
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 26260
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 26280
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 26300
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 26320
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 26340
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 26360
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 26380
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 26400
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 26420
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 26440
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 26460
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 26480
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 26500
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 26520
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 26540
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 26560
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 26580
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 26600
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 26620
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 26640
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 26660
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 26680
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 26700
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 26720
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 26739
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    .line 26979
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    .line 26075
    return-void
.end method


# virtual methods
.method public addPrefetchedBundle(Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26756
    if-nez p1, :cond_0

    .line 26757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26759
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    .line 26762
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26763
    return-object p0
.end method

.method public getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    .locals 1

    .prologue
    .line 26642
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    return-object v0
.end method

.method public getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    .locals 1

    .prologue
    .line 26102
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    return-object v0
.end method

.method public getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    .locals 1

    .prologue
    .line 26482
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 26982
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    if-gez v0, :cond_0

    .line 26984
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getSerializedSize()I

    .line 26986
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    .locals 1

    .prologue
    .line 26622
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    return-object v0
.end method

.method public getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    .locals 1

    .prologue
    .line 26362
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    return-object v0
.end method

.method public getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    .locals 1

    .prologue
    .line 26122
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    return-object v0
.end method

.method public getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    .locals 1

    .prologue
    .line 26202
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    return-object v0
.end method

.method public getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .locals 1

    .prologue
    .line 26722
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    return-object v0
.end method

.method public getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    .locals 1

    .prologue
    .line 26222
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    return-object v0
.end method

.method public getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    .locals 1

    .prologue
    .line 26422
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    return-object v0
.end method

.method public getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    .locals 1

    .prologue
    .line 26402
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    return-object v0
.end method

.method public getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    .locals 1

    .prologue
    .line 26242
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    return-object v0
.end method

.method public getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .locals 1

    .prologue
    .line 26382
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    return-object v0
.end method

.method public getInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    .locals 1

    .prologue
    .line 26602
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    .locals 1

    .prologue
    .line 26582
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    return-object v0
.end method

.method public getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    .locals 1

    .prologue
    .line 26142
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    return-object v0
.end method

.method public getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    .locals 1

    .prologue
    .line 26542
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    return-object v0
.end method

.method public getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    .locals 1

    .prologue
    .line 26702
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    .locals 1

    .prologue
    .line 26562
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    .locals 1

    .prologue
    .line 26522
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    return-object v0
.end method

.method public getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    .locals 1

    .prologue
    .line 26502
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    return-object v0
.end method

.method public getPrefetchedBundleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26742
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->prefetchedBundle_:Ljava/util/List;

    return-object v0
.end method

.method public getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    .locals 1

    .prologue
    .line 26282
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    return-object v0
.end method

.method public getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    .locals 1

    .prologue
    .line 26182
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    return-object v0
.end method

.method public getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .locals 1

    .prologue
    .line 26162
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    return-object v0
.end method

.method public getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    .locals 1

    .prologue
    .line 26662
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    return-object v0
.end method

.method public getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    .locals 1

    .prologue
    .line 26462
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    return-object v0
.end method

.method public getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    .locals 1

    .prologue
    .line 26342
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    return-object v0
.end method

.method public getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    .locals 1

    .prologue
    .line 26682
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    return-object v0
.end method

.method public getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    .locals 1

    .prologue
    .line 26262
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    return-object v0
.end method

.method public getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    .locals 1

    .prologue
    .line 26082
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    .locals 1

    .prologue
    .line 26442
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 26991
    const/4 v2, 0x0

    .line 26992
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26993
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 26996
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26997
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27000
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27001
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27004
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 27005
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27008
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27009
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27012
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 27013
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27016
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 27017
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27020
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 27021
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27024
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 27025
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27028
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 27029
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27032
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 27033
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27036
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 27037
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27040
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 27041
    const/16 v3, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27044
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 27045
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27048
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 27049
    const/16 v3, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27052
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 27053
    const/16 v3, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27056
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPrefetchedBundleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    .line 27057
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    const/16 v3, 0x13

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 27060
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 27061
    const/16 v3, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27064
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 27065
    const/16 v3, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27068
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 27069
    const/16 v3, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27072
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 27073
    const/16 v3, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27076
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 27077
    const/16 v3, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27080
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 27081
    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27084
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 27085
    const/16 v3, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27088
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27089
    const/16 v3, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27092
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 27093
    const/16 v3, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27096
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 27097
    const/16 v3, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27100
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 27101
    const/16 v3, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27104
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 27105
    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27108
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 27109
    const/16 v3, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27112
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 27113
    const/16 v3, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27116
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 27117
    const/16 v3, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27120
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 27121
    const/16 v3, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27124
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 27125
    const/16 v3, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 27128
    :cond_21
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->cachedSize:I

    .line 27129
    return v2
.end method

.method public getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    .locals 1

    .prologue
    .line 26302
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    return-object v0
.end method

.method public getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    .locals 1

    .prologue
    .line 26322
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    return-object v0
.end method

.method public hasAckNotificationsResponse()Z
    .locals 1

    .prologue
    .line 26641
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse:Z

    return v0
.end method

.method public hasAssetsResponse()Z
    .locals 1

    .prologue
    .line 26101
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse:Z

    return v0
.end method

.method public hasBillingEventResponse()Z
    .locals 1

    .prologue
    .line 26481
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse:Z

    return v0
.end method

.method public hasCheckForNotificationsResponse()Z
    .locals 1

    .prologue
    .line 26621
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse:Z

    return v0
.end method

.method public hasCheckLicenseResponse()Z
    .locals 1

    .prologue
    .line 26361
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse:Z

    return v0
.end method

.method public hasCommentsResponse()Z
    .locals 1

    .prologue
    .line 26121
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse:Z

    return v0
.end method

.method public hasContentSyncResponse()Z
    .locals 1

    .prologue
    .line 26201
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse:Z

    return v0
.end method

.method public hasGetAddressSnippetResponse()Z
    .locals 1

    .prologue
    .line 26721
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse:Z

    return v0
.end method

.method public hasGetAssetResponse()Z
    .locals 1

    .prologue
    .line 26221
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse:Z

    return v0
.end method

.method public hasGetCarrierInfoResponse()Z
    .locals 1

    .prologue
    .line 26421
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse:Z

    return v0
.end method

.method public hasGetCategoriesResponse()Z
    .locals 1

    .prologue
    .line 26401
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse:Z

    return v0
.end method

.method public hasGetImageResponse()Z
    .locals 1

    .prologue
    .line 26241
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse:Z

    return v0
.end method

.method public hasGetMarketMetadataResponse()Z
    .locals 1

    .prologue
    .line 26381
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse:Z

    return v0
.end method

.method public hasInAppPurchaseInformationResponse()Z
    .locals 1

    .prologue
    .line 26601
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsResponse()Z
    .locals 1

    .prologue
    .line 26581
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse:Z

    return v0
.end method

.method public hasModifyCommentResponse()Z
    .locals 1

    .prologue
    .line 26141
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse:Z

    return v0
.end method

.method public hasPaypalCreateAccountResponse()Z
    .locals 1

    .prologue
    .line 26541
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse:Z

    return v0
.end method

.method public hasPaypalMassageAddressResponse()Z
    .locals 1

    .prologue
    .line 26701
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsResponse()Z
    .locals 1

    .prologue
    .line 26561
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsResponse()Z
    .locals 1

    .prologue
    .line 26521
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse:Z

    return v0
.end method

.method public hasPaypalPreapprovalResponse()Z
    .locals 1

    .prologue
    .line 26501
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse:Z

    return v0
.end method

.method public hasPurchaseMetadataResponse()Z
    .locals 1

    .prologue
    .line 26281
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse:Z

    return v0
.end method

.method public hasPurchaseOrderResponse()Z
    .locals 1

    .prologue
    .line 26181
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse:Z

    return v0
.end method

.method public hasPurchasePostResponse()Z
    .locals 1

    .prologue
    .line 26161
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse:Z

    return v0
.end method

.method public hasPurchaseProductResponse()Z
    .locals 1

    .prologue
    .line 26661
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse:Z

    return v0
.end method

.method public hasQuerySuggestionResponse()Z
    .locals 1

    .prologue
    .line 26461
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse:Z

    return v0
.end method

.method public hasRateCommentResponse()Z
    .locals 1

    .prologue
    .line 26341
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse:Z

    return v0
.end method

.method public hasReconstructDatabaseResponse()Z
    .locals 1

    .prologue
    .line 26681
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse:Z

    return v0
.end method

.method public hasRefundResponse()Z
    .locals 1

    .prologue
    .line 26261
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse:Z

    return v0
.end method

.method public hasResponseProperties()Z
    .locals 1

    .prologue
    .line 26081
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties:Z

    return v0
.end method

.method public hasRestoreApplicationResponse()Z
    .locals 1

    .prologue
    .line 26441
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse:Z

    return v0
.end method

.method public hasSubCategoriesResponse()Z
    .locals 1

    .prologue
    .line 26301
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse:Z

    return v0
.end method

.method public hasUninstallReasonResponse()Z
    .locals 1

    .prologue
    .line 26321
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 27138
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 27142
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27143
    :sswitch_0
    return-object p0

    .line 27148
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;-><init>()V

    .line 27149
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27150
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27154
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;-><init>()V

    .line 27155
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27156
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27160
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;-><init>()V

    .line 27161
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27162
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27166
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;-><init>()V

    .line 27167
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27168
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27172
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;
    :sswitch_5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;-><init>()V

    .line 27173
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27174
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27178
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    :sswitch_6
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;-><init>()V

    .line 27179
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27180
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27184
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;
    :sswitch_7
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;-><init>()V

    .line 27185
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27186
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27190
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;
    :sswitch_8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;-><init>()V

    .line 27191
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27192
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27196
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;
    :sswitch_9
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;-><init>()V

    .line 27197
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27198
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto :goto_0

    .line 27202
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;
    :sswitch_a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;-><init>()V

    .line 27203
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27204
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27208
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;
    :sswitch_b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;-><init>()V

    .line 27209
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27210
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27214
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;
    :sswitch_c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;-><init>()V

    .line 27215
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27216
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27220
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;
    :sswitch_d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;-><init>()V

    .line 27221
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27222
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27226
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;-><init>()V

    .line 27227
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27228
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27232
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;
    :sswitch_f
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;-><init>()V

    .line 27233
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27234
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27238
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;
    :sswitch_10
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;-><init>()V

    .line 27239
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27240
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27244
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    :sswitch_11
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;-><init>()V

    .line 27245
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27246
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->addPrefetchedBundle(Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27250
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    :sswitch_12
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;-><init>()V

    .line 27251
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27252
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27256
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;
    :sswitch_13
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;-><init>()V

    .line 27257
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27258
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27262
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;
    :sswitch_14
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;-><init>()V

    .line 27263
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27264
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27268
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;
    :sswitch_15
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;-><init>()V

    .line 27269
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27270
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27274
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;-><init>()V

    .line 27275
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27276
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27280
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;
    :sswitch_17
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;-><init>()V

    .line 27281
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27282
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27286
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;
    :sswitch_18
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;-><init>()V

    .line 27287
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27288
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27292
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;
    :sswitch_19
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;-><init>()V

    .line 27293
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27294
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27298
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;-><init>()V

    .line 27299
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27300
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27304
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;
    :sswitch_1b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;-><init>()V

    .line 27305
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27306
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27310
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;
    :sswitch_1c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;-><init>()V

    .line 27311
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27312
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27316
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;
    :sswitch_1d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;-><init>()V

    .line 27317
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27318
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27322
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;
    :sswitch_1e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;-><init>()V

    .line 27323
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27324
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27328
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;
    :sswitch_1f
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;-><init>()V

    .line 27329
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27330
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27334
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;
    :sswitch_20
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;-><init>()V

    .line 27335
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27336
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27340
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;
    :sswitch_21
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;-><init>()V

    .line 27341
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27342
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27346
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;
    :sswitch_22
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;-><init>()V

    .line 27347
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 27348
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    goto/16 :goto_0

    .line 27138
    nop

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
        0x9a -> :sswitch_11
        0xa2 -> :sswitch_12
        0xaa -> :sswitch_13
        0xba -> :sswitch_14
        0xc2 -> :sswitch_15
        0xca -> :sswitch_16
        0xd2 -> :sswitch_17
        0xda -> :sswitch_18
        0xe2 -> :sswitch_19
        0xea -> :sswitch_1a
        0xf2 -> :sswitch_1b
        0xfa -> :sswitch_1c
        0x102 -> :sswitch_1d
        0x10a -> :sswitch_1e
        0x112 -> :sswitch_1f
        0x11a -> :sswitch_20
        0x122 -> :sswitch_21
        0x12a -> :sswitch_22
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
    .line 26073
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26644
    if-nez p1, :cond_0

    .line 26645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26647
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse:Z

    .line 26648
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->ackNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    .line 26649
    return-object p0
.end method

.method public setAssetsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26104
    if-nez p1, :cond_0

    .line 26105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse:Z

    .line 26108
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->assetsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    .line 26109
    return-object p0
.end method

.method public setBillingEventResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26484
    if-nez p1, :cond_0

    .line 26485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26487
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse:Z

    .line 26488
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->billingEventResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    .line 26489
    return-object p0
.end method

.method public setCheckForNotificationsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26624
    if-nez p1, :cond_0

    .line 26625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26627
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse:Z

    .line 26628
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkForNotificationsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    .line 26629
    return-object p0
.end method

.method public setCheckLicenseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26364
    if-nez p1, :cond_0

    .line 26365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26367
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse:Z

    .line 26368
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->checkLicenseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    .line 26369
    return-object p0
.end method

.method public setCommentsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26124
    if-nez p1, :cond_0

    .line 26125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse:Z

    .line 26128
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->commentsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    .line 26129
    return-object p0
.end method

.method public setContentSyncResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26204
    if-nez p1, :cond_0

    .line 26205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26207
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse:Z

    .line 26208
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->contentSyncResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    .line 26209
    return-object p0
.end method

.method public setGetAddressSnippetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26724
    if-nez p1, :cond_0

    .line 26725
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26727
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse:Z

    .line 26728
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAddressSnippetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    .line 26729
    return-object p0
.end method

.method public setGetAssetResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26224
    if-nez p1, :cond_0

    .line 26225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26227
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse:Z

    .line 26228
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    .line 26229
    return-object p0
.end method

.method public setGetCarrierInfoResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26424
    if-nez p1, :cond_0

    .line 26425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26427
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse:Z

    .line 26428
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCarrierInfoResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    .line 26429
    return-object p0
.end method

.method public setGetCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26404
    if-nez p1, :cond_0

    .line 26405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26407
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse:Z

    .line 26408
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    .line 26409
    return-object p0
.end method

.method public setGetImageResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26244
    if-nez p1, :cond_0

    .line 26245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse:Z

    .line 26248
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getImageResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    .line 26249
    return-object p0
.end method

.method public setGetMarketMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26384
    if-nez p1, :cond_0

    .line 26385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26387
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse:Z

    .line 26388
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getMarketMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    .line 26389
    return-object p0
.end method

.method public setInAppPurchaseInformationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26604
    if-nez p1, :cond_0

    .line 26605
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26607
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse:Z

    .line 26608
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppPurchaseInformationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    .line 26609
    return-object p0
.end method

.method public setInAppRestoreTransactionsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26584
    if-nez p1, :cond_0

    .line 26585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26587
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse:Z

    .line 26588
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->inAppRestoreTransactionsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    .line 26589
    return-object p0
.end method

.method public setModifyCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26144
    if-nez p1, :cond_0

    .line 26145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse:Z

    .line 26148
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->modifyCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .line 26149
    return-object p0
.end method

.method public setPaypalCreateAccountResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26544
    if-nez p1, :cond_0

    .line 26545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26547
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse:Z

    .line 26548
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalCreateAccountResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    .line 26549
    return-object p0
.end method

.method public setPaypalMassageAddressResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26704
    if-nez p1, :cond_0

    .line 26705
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26707
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse:Z

    .line 26708
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalMassageAddressResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    .line 26709
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26564
    if-nez p1, :cond_0

    .line 26565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26567
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse:Z

    .line 26568
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalCredentialsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    .line 26569
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26524
    if-nez p1, :cond_0

    .line 26525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26527
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse:Z

    .line 26528
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalDetailsResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    .line 26529
    return-object p0
.end method

.method public setPaypalPreapprovalResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26504
    if-nez p1, :cond_0

    .line 26505
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26507
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse:Z

    .line 26508
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->paypalPreapprovalResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    .line 26509
    return-object p0
.end method

.method public setPurchaseMetadataResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26284
    if-nez p1, :cond_0

    .line 26285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26287
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse:Z

    .line 26288
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseMetadataResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    .line 26289
    return-object p0
.end method

.method public setPurchaseOrderResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26184
    if-nez p1, :cond_0

    .line 26185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26187
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse:Z

    .line 26188
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseOrderResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    .line 26189
    return-object p0
.end method

.method public setPurchasePostResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26164
    if-nez p1, :cond_0

    .line 26165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26167
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse:Z

    .line 26168
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchasePostResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    .line 26169
    return-object p0
.end method

.method public setPurchaseProductResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26664
    if-nez p1, :cond_0

    .line 26665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26667
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse:Z

    .line 26668
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->purchaseProductResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    .line 26669
    return-object p0
.end method

.method public setQuerySuggestionResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26464
    if-nez p1, :cond_0

    .line 26465
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26467
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse:Z

    .line 26468
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->querySuggestionResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    .line 26469
    return-object p0
.end method

.method public setRateCommentResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26344
    if-nez p1, :cond_0

    .line 26345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26347
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse:Z

    .line 26348
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->rateCommentResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    .line 26349
    return-object p0
.end method

.method public setReconstructDatabaseResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26684
    if-nez p1, :cond_0

    .line 26685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26687
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse:Z

    .line 26688
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->reconstructDatabaseResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    .line 26689
    return-object p0
.end method

.method public setRefundResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26264
    if-nez p1, :cond_0

    .line 26265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26267
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse:Z

    .line 26268
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->refundResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    .line 26269
    return-object p0
.end method

.method public setResponseProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26084
    if-nez p1, :cond_0

    .line 26085
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26087
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties:Z

    .line 26088
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->responseProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    .line 26089
    return-object p0
.end method

.method public setRestoreApplicationResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26444
    if-nez p1, :cond_0

    .line 26445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26447
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse:Z

    .line 26448
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->restoreApplicationResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    .line 26449
    return-object p0
.end method

.method public setSubCategoriesResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26304
    if-nez p1, :cond_0

    .line 26305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26307
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse:Z

    .line 26308
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->subCategoriesResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    .line 26309
    return-object p0
.end method

.method public setUninstallReasonResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;
    .locals 1
    .parameter "value"

    .prologue
    .line 26324
    if-nez p1, :cond_0

    .line 26325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26327
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse:Z

    .line 26328
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->uninstallReasonResponse_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    .line 26329
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
    .line 26875
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasResponseProperties()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26876
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26878
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAssetsResponse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26879
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAssetsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26881
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCommentsResponse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26882
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCommentsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26884
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasModifyCommentResponse()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26885
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getModifyCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26887
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchasePostResponse()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26888
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchasePostResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26890
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseOrderResponse()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 26891
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseOrderResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26893
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasContentSyncResponse()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 26894
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getContentSyncResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26896
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAssetResponse()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26897
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAssetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26899
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetImageResponse()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 26900
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetImageResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26902
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRefundResponse()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 26903
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRefundResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26905
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseMetadataResponse()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 26906
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26908
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasSubCategoriesResponse()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 26909
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getSubCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26911
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasUninstallReasonResponse()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 26912
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getUninstallReasonResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26914
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRateCommentResponse()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 26915
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRateCommentResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26917
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckLicenseResponse()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 26918
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckLicenseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26920
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetMarketMetadataResponse()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 26921
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetMarketMetadataResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26923
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPrefetchedBundleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;

    .line 26924
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 26926
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$PrefetchedBundleProto;
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCategoriesResponse()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 26927
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCategoriesResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26929
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetCarrierInfoResponse()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 26930
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetCarrierInfoResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26932
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasRestoreApplicationResponse()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 26933
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getRestoreApplicationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26935
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasQuerySuggestionResponse()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 26936
    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getQuerySuggestionResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26938
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasBillingEventResponse()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 26939
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getBillingEventResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26941
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalResponse()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 26942
    const/16 v2, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26944
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalDetailsResponse()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 26945
    const/16 v2, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalDetailsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26947
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalCreateAccountResponse()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 26948
    const/16 v2, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalCreateAccountResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26950
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalPreapprovalCredentialsResponse()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 26951
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalPreapprovalCredentialsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26953
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppRestoreTransactionsResponse()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 26954
    const/16 v2, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppRestoreTransactionsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26956
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasInAppPurchaseInformationResponse()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 26957
    const/16 v2, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getInAppPurchaseInformationResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26959
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasCheckForNotificationsResponse()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 26960
    const/16 v2, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getCheckForNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26962
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasAckNotificationsResponse()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 26963
    const/16 v2, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getAckNotificationsResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26965
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPurchaseProductResponse()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 26966
    const/16 v2, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPurchaseProductResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26968
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasReconstructDatabaseResponse()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 26969
    const/16 v2, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getReconstructDatabaseResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26971
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasPaypalMassageAddressResponse()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 26972
    const/16 v2, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getPaypalMassageAddressResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26974
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->hasGetAddressSnippetResponse()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 26975
    const/16 v2, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getGetAddressSnippetResponse()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 26977
    :cond_21
    return-void
.end method
