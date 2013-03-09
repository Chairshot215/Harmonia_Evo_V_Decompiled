.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field private ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

.field private assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

.field private billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

.field private cachedSize:I

.field private checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

.field private checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

.field private commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

.field private contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

.field private getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

.field private getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

.field private getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

.field private getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

.field private getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

.field private getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

.field private hasAckNotificationsRequest:Z

.field private hasAssetRequest:Z

.field private hasBillingEventRequest:Z

.field private hasCheckForNotificationsRequest:Z

.field private hasCheckLicenseRequest:Z

.field private hasCommentsRequest:Z

.field private hasContentSyncRequest:Z

.field private hasGetAddressSnippetRequest:Z

.field private hasGetAssetRequest:Z

.field private hasGetCarrierInfoRequest:Z

.field private hasGetCategoriesRequest:Z

.field private hasGetImageRequest:Z

.field private hasGetMarketMetadataRequest:Z

.field private hasInAppPurchaseInformationRequest:Z

.field private hasInAppRestoreTransactionsRequest:Z

.field private hasModifyCommentRequest:Z

.field private hasPaypalCreateAccountRequest:Z

.field private hasPaypalMassageAddressRequest:Z

.field private hasPaypalPreapprovalCredentialsRequest:Z

.field private hasPaypalPreapprovalDetailsRequest:Z

.field private hasPaypalPreapprovalRequest:Z

.field private hasPurchaseMetadataRequest:Z

.field private hasPurchaseOrderRequest:Z

.field private hasPurchasePostRequest:Z

.field private hasPurchaseProductRequest:Z

.field private hasQuerySuggestionRequest:Z

.field private hasRateCommentRequest:Z

.field private hasReconstructDatabaseRequest:Z

.field private hasRefundRequest:Z

.field private hasRemoveAssetRequest:Z

.field private hasRequestSpecificProperties:Z

.field private hasRestoreApplicationsRequest:Z

.field private hasSubCategoriesRequest:Z

.field private hasUninstallReasonRequest:Z

.field private inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

.field private inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

.field private modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

.field private paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

.field private paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

.field private paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

.field private paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

.field private paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

.field private purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

.field private purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

.field private purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

.field private purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

.field private querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

.field private rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

.field private reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

.field private refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

.field private removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

.field private requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

.field private restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

.field private subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

.field private uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24627
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24632
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 24652
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 24672
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 24692
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 24712
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 24732
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 24752
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 24772
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 24792
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 24812
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 24832
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 24852
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 24872
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 24892
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 24912
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 24932
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 24952
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 24972
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 24992
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 25012
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 25032
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 25052
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 25072
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 25092
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 25112
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 25132
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 25152
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 25172
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 25192
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 25212
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 25232
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 25252
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 25272
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 25292
    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 25531
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    .line 24627
    return-void
.end method


# virtual methods
.method public getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    .locals 1

    .prologue
    .line 25214
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    return-object v0
.end method

.method public getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    .locals 1

    .prologue
    .line 24654
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    return-object v0
.end method

.method public getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    .locals 1

    .prologue
    .line 25054
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 25534
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    if-gez v0, :cond_0

    .line 25536
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getSerializedSize()I

    .line 25538
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    return v0
.end method

.method public getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    .locals 1

    .prologue
    .line 25194
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    return-object v0
.end method

.method public getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    .locals 1

    .prologue
    .line 24914
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    return-object v0
.end method

.method public getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    .locals 1

    .prologue
    .line 24674
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    return-object v0
.end method

.method public getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    .locals 1

    .prologue
    .line 24754
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    return-object v0
.end method

.method public getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .locals 1

    .prologue
    .line 25294
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    return-object v0
.end method

.method public getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    .locals 1

    .prologue
    .line 24774
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    return-object v0
.end method

.method public getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    .locals 1

    .prologue
    .line 24974
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    return-object v0
.end method

.method public getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    .locals 1

    .prologue
    .line 24954
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    return-object v0
.end method

.method public getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    .locals 1

    .prologue
    .line 24794
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    return-object v0
.end method

.method public getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    .locals 1

    .prologue
    .line 24934
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    return-object v0
.end method

.method public getInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    .locals 1

    .prologue
    .line 25174
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    return-object v0
.end method

.method public getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    .locals 1

    .prologue
    .line 25154
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    return-object v0
.end method

.method public getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    .locals 1

    .prologue
    .line 24694
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    return-object v0
.end method

.method public getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    .locals 1

    .prologue
    .line 25114
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    return-object v0
.end method

.method public getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    .locals 1

    .prologue
    .line 25274
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    .locals 1

    .prologue
    .line 25134
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    .locals 1

    .prologue
    .line 25094
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    return-object v0
.end method

.method public getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    .locals 1

    .prologue
    .line 25074
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    return-object v0
.end method

.method public getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    .locals 1

    .prologue
    .line 24834
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    return-object v0
.end method

.method public getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    .locals 1

    .prologue
    .line 24734
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    return-object v0
.end method

.method public getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    .locals 1

    .prologue
    .line 24714
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    return-object v0
.end method

.method public getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    .locals 1

    .prologue
    .line 25234
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    return-object v0
.end method

.method public getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    .locals 1

    .prologue
    .line 25034
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    return-object v0
.end method

.method public getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    .locals 1

    .prologue
    .line 24894
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    return-object v0
.end method

.method public getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    .locals 1

    .prologue
    .line 25254
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    return-object v0
.end method

.method public getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    .locals 1

    .prologue
    .line 24814
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    return-object v0
.end method

.method public getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    .locals 1

    .prologue
    .line 24994
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    return-object v0
.end method

.method public getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    .locals 1

    .prologue
    .line 24634
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    return-object v0
.end method

.method public getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    .locals 1

    .prologue
    .line 25014
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 25543
    const/4 v0, 0x0

    .line 25544
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25545
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25548
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25549
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25552
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25553
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25556
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25557
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25560
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25561
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25564
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25565
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25568
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 25569
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25572
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25573
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25576
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25577
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25580
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 25581
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25584
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25585
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25588
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 25589
    const/16 v1, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25592
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 25593
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25596
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 25597
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25600
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 25601
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25604
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 25605
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25608
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 25609
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25612
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 25613
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25616
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 25617
    const/16 v1, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25620
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 25621
    const/16 v1, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25624
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 25625
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25628
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 25629
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25632
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 25633
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25636
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 25637
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25640
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 25641
    const/16 v1, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25644
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 25645
    const/16 v1, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25648
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 25649
    const/16 v1, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25652
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 25653
    const/16 v1, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25656
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 25657
    const/16 v1, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25660
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 25661
    const/16 v1, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25664
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 25665
    const/16 v1, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25668
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 25669
    const/16 v1, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25672
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 25673
    const/16 v1, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25676
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 25677
    const/16 v1, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25680
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->cachedSize:I

    .line 25681
    return v0
.end method

.method public getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    .locals 1

    .prologue
    .line 24854
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    return-object v0
.end method

.method public getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    .locals 1

    .prologue
    .line 24874
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    return-object v0
.end method

.method public hasAckNotificationsRequest()Z
    .locals 1

    .prologue
    .line 25213
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest:Z

    return v0
.end method

.method public hasAssetRequest()Z
    .locals 1

    .prologue
    .line 24653
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest:Z

    return v0
.end method

.method public hasBillingEventRequest()Z
    .locals 1

    .prologue
    .line 25053
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest:Z

    return v0
.end method

.method public hasCheckForNotificationsRequest()Z
    .locals 1

    .prologue
    .line 25193
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest:Z

    return v0
.end method

.method public hasCheckLicenseRequest()Z
    .locals 1

    .prologue
    .line 24913
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest:Z

    return v0
.end method

.method public hasCommentsRequest()Z
    .locals 1

    .prologue
    .line 24673
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest:Z

    return v0
.end method

.method public hasContentSyncRequest()Z
    .locals 1

    .prologue
    .line 24753
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest:Z

    return v0
.end method

.method public hasGetAddressSnippetRequest()Z
    .locals 1

    .prologue
    .line 25293
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest:Z

    return v0
.end method

.method public hasGetAssetRequest()Z
    .locals 1

    .prologue
    .line 24773
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest:Z

    return v0
.end method

.method public hasGetCarrierInfoRequest()Z
    .locals 1

    .prologue
    .line 24973
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest:Z

    return v0
.end method

.method public hasGetCategoriesRequest()Z
    .locals 1

    .prologue
    .line 24953
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest:Z

    return v0
.end method

.method public hasGetImageRequest()Z
    .locals 1

    .prologue
    .line 24793
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest:Z

    return v0
.end method

.method public hasGetMarketMetadataRequest()Z
    .locals 1

    .prologue
    .line 24933
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest:Z

    return v0
.end method

.method public hasInAppPurchaseInformationRequest()Z
    .locals 1

    .prologue
    .line 25173
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest:Z

    return v0
.end method

.method public hasInAppRestoreTransactionsRequest()Z
    .locals 1

    .prologue
    .line 25153
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest:Z

    return v0
.end method

.method public hasModifyCommentRequest()Z
    .locals 1

    .prologue
    .line 24693
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest:Z

    return v0
.end method

.method public hasPaypalCreateAccountRequest()Z
    .locals 1

    .prologue
    .line 25113
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest:Z

    return v0
.end method

.method public hasPaypalMassageAddressRequest()Z
    .locals 1

    .prologue
    .line 25273
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalCredentialsRequest()Z
    .locals 1

    .prologue
    .line 25133
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalDetailsRequest()Z
    .locals 1

    .prologue
    .line 25093
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest:Z

    return v0
.end method

.method public hasPaypalPreapprovalRequest()Z
    .locals 1

    .prologue
    .line 25073
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest:Z

    return v0
.end method

.method public hasPurchaseMetadataRequest()Z
    .locals 1

    .prologue
    .line 24833
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest:Z

    return v0
.end method

.method public hasPurchaseOrderRequest()Z
    .locals 1

    .prologue
    .line 24733
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest:Z

    return v0
.end method

.method public hasPurchasePostRequest()Z
    .locals 1

    .prologue
    .line 24713
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest:Z

    return v0
.end method

.method public hasPurchaseProductRequest()Z
    .locals 1

    .prologue
    .line 25233
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest:Z

    return v0
.end method

.method public hasQuerySuggestionRequest()Z
    .locals 1

    .prologue
    .line 25033
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest:Z

    return v0
.end method

.method public hasRateCommentRequest()Z
    .locals 1

    .prologue
    .line 24893
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest:Z

    return v0
.end method

.method public hasReconstructDatabaseRequest()Z
    .locals 1

    .prologue
    .line 25253
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest:Z

    return v0
.end method

.method public hasRefundRequest()Z
    .locals 1

    .prologue
    .line 24813
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest:Z

    return v0
.end method

.method public hasRemoveAssetRequest()Z
    .locals 1

    .prologue
    .line 24993
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest:Z

    return v0
.end method

.method public hasRequestSpecificProperties()Z
    .locals 1

    .prologue
    .line 24633
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties:Z

    return v0
.end method

.method public hasRestoreApplicationsRequest()Z
    .locals 1

    .prologue
    .line 25013
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest:Z

    return v0
.end method

.method public hasSubCategoriesRequest()Z
    .locals 1

    .prologue
    .line 24853
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest:Z

    return v0
.end method

.method public hasUninstallReasonRequest()Z
    .locals 1

    .prologue
    .line 24873
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25689
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 25690
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 25694
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 25695
    :sswitch_0
    return-object p0

    .line 25700
    :sswitch_1
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;-><init>()V

    .line 25701
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25702
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25706
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;
    :sswitch_2
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;-><init>()V

    .line 25707
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25708
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25712
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;
    :sswitch_3
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;-><init>()V

    .line 25713
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25714
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25718
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;
    :sswitch_4
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    .line 25719
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25720
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25724
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;
    :sswitch_5
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;-><init>()V

    .line 25725
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25726
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25730
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;
    :sswitch_6
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;-><init>()V

    .line 25731
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25732
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25736
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;
    :sswitch_7
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;-><init>()V

    .line 25737
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25738
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25742
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;
    :sswitch_8
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;-><init>()V

    .line 25743
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25744
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25748
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;
    :sswitch_9
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;-><init>()V

    .line 25749
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25750
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto :goto_0

    .line 25754
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;
    :sswitch_a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;-><init>()V

    .line 25755
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25756
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25760
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;
    :sswitch_b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    .line 25761
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25762
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25766
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;
    :sswitch_c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;-><init>()V

    .line 25767
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25768
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25772
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;
    :sswitch_d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;-><init>()V

    .line 25773
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25774
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25778
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;-><init>()V

    .line 25779
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25780
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25784
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;
    :sswitch_f
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;-><init>()V

    .line 25785
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25786
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25790
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;
    :sswitch_10
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;-><init>()V

    .line 25791
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25792
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25796
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;
    :sswitch_11
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;-><init>()V

    .line 25797
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25798
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25802
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;
    :sswitch_12
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;-><init>()V

    .line 25803
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25804
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25808
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;
    :sswitch_13
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;-><init>()V

    .line 25809
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25810
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25814
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;
    :sswitch_14
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;-><init>()V

    .line 25815
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25816
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25820
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;
    :sswitch_15
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;-><init>()V

    .line 25821
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25822
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25826
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;-><init>()V

    .line 25827
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25828
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25832
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;
    :sswitch_17
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;-><init>()V

    .line 25833
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25834
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25838
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;
    :sswitch_18
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;-><init>()V

    .line 25839
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25840
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25844
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;
    :sswitch_19
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;-><init>()V

    .line 25845
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25846
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25850
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;
    :sswitch_1a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;-><init>()V

    .line 25851
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25852
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25856
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;
    :sswitch_1b
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;-><init>()V

    .line 25857
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25858
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25862
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;
    :sswitch_1c
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;-><init>()V

    .line 25863
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25864
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25868
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;
    :sswitch_1d
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    .line 25869
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25870
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25874
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;
    :sswitch_1e
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;-><init>()V

    .line 25875
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25876
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25880
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;
    :sswitch_1f
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;-><init>()V

    .line 25881
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25882
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25886
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;
    :sswitch_20
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;-><init>()V

    .line 25887
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25888
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25892
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;
    :sswitch_21
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;-><init>()V

    .line 25893
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25894
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25898
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;
    :sswitch_22
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;-><init>()V

    .line 25899
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 25900
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    goto/16 :goto_0

    .line 25690
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
        0x5a -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x82 -> :sswitch_d
        0x8a -> :sswitch_e
        0x92 -> :sswitch_f
        0x9a -> :sswitch_10
        0xaa -> :sswitch_11
        0xb2 -> :sswitch_12
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
        0x132 -> :sswitch_22
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
    .line 24625
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    move-result-object v0

    return-object v0
.end method

.method public setAckNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25216
    if-nez p1, :cond_0

    .line 25217
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25219
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest:Z

    .line 25220
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->ackNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    .line 25221
    return-object p0
.end method

.method public setAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24656
    if-nez p1, :cond_0

    .line 24657
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24659
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest:Z

    .line 24660
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->assetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    .line 24661
    return-object p0
.end method

.method public setBillingEventRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25056
    if-nez p1, :cond_0

    .line 25057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25059
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest:Z

    .line 25060
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->billingEventRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    .line 25061
    return-object p0
.end method

.method public setCheckForNotificationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25196
    if-nez p1, :cond_0

    .line 25197
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25199
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest:Z

    .line 25200
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkForNotificationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    .line 25201
    return-object p0
.end method

.method public setCheckLicenseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24916
    if-nez p1, :cond_0

    .line 24917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24919
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest:Z

    .line 24920
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->checkLicenseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    .line 24921
    return-object p0
.end method

.method public setCommentsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24676
    if-nez p1, :cond_0

    .line 24677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24679
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest:Z

    .line 24680
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->commentsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    .line 24681
    return-object p0
.end method

.method public setContentSyncRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24756
    if-nez p1, :cond_0

    .line 24757
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24759
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest:Z

    .line 24760
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->contentSyncRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    .line 24761
    return-object p0
.end method

.method public setGetAddressSnippetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25296
    if-nez p1, :cond_0

    .line 25297
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest:Z

    .line 25300
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAddressSnippetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    .line 25301
    return-object p0
.end method

.method public setGetAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24776
    if-nez p1, :cond_0

    .line 24777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24779
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest:Z

    .line 24780
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    .line 24781
    return-object p0
.end method

.method public setGetCarrierInfoRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24976
    if-nez p1, :cond_0

    .line 24977
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24979
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest:Z

    .line 24980
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCarrierInfoRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    .line 24981
    return-object p0
.end method

.method public setGetCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24956
    if-nez p1, :cond_0

    .line 24957
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24959
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest:Z

    .line 24960
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    .line 24961
    return-object p0
.end method

.method public setGetImageRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24796
    if-nez p1, :cond_0

    .line 24797
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24799
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest:Z

    .line 24800
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getImageRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    .line 24801
    return-object p0
.end method

.method public setGetMarketMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24936
    if-nez p1, :cond_0

    .line 24937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24939
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest:Z

    .line 24940
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getMarketMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    .line 24941
    return-object p0
.end method

.method public setInAppPurchaseInformationRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25176
    if-nez p1, :cond_0

    .line 25177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest:Z

    .line 25180
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppPurchaseInformationRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    .line 25181
    return-object p0
.end method

.method public setInAppRestoreTransactionsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25156
    if-nez p1, :cond_0

    .line 25157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest:Z

    .line 25160
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->inAppRestoreTransactionsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    .line 25161
    return-object p0
.end method

.method public setModifyCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24696
    if-nez p1, :cond_0

    .line 24697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24699
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest:Z

    .line 24700
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->modifyCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 24701
    return-object p0
.end method

.method public setPaypalCreateAccountRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25116
    if-nez p1, :cond_0

    .line 25117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest:Z

    .line 25120
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalCreateAccountRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    .line 25121
    return-object p0
.end method

.method public setPaypalMassageAddressRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25276
    if-nez p1, :cond_0

    .line 25277
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest:Z

    .line 25280
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalMassageAddressRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    .line 25281
    return-object p0
.end method

.method public setPaypalPreapprovalCredentialsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25136
    if-nez p1, :cond_0

    .line 25137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest:Z

    .line 25140
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalCredentialsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    .line 25141
    return-object p0
.end method

.method public setPaypalPreapprovalDetailsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25096
    if-nez p1, :cond_0

    .line 25097
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25099
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest:Z

    .line 25100
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalDetailsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    .line 25101
    return-object p0
.end method

.method public setPaypalPreapprovalRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25076
    if-nez p1, :cond_0

    .line 25077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25079
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest:Z

    .line 25080
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->paypalPreapprovalRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    .line 25081
    return-object p0
.end method

.method public setPurchaseMetadataRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24836
    if-nez p1, :cond_0

    .line 24837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24839
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest:Z

    .line 24840
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseMetadataRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    .line 24841
    return-object p0
.end method

.method public setPurchaseOrderRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24736
    if-nez p1, :cond_0

    .line 24737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24739
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest:Z

    .line 24740
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseOrderRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    .line 24741
    return-object p0
.end method

.method public setPurchasePostRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24716
    if-nez p1, :cond_0

    .line 24717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24719
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest:Z

    .line 24720
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchasePostRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    .line 24721
    return-object p0
.end method

.method public setPurchaseProductRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25236
    if-nez p1, :cond_0

    .line 25237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25239
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest:Z

    .line 25240
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->purchaseProductRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    .line 25241
    return-object p0
.end method

.method public setQuerySuggestionRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25036
    if-nez p1, :cond_0

    .line 25037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25039
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest:Z

    .line 25040
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->querySuggestionRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    .line 25041
    return-object p0
.end method

.method public setRateCommentRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24896
    if-nez p1, :cond_0

    .line 24897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24899
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest:Z

    .line 24900
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->rateCommentRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    .line 24901
    return-object p0
.end method

.method public setReconstructDatabaseRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25256
    if-nez p1, :cond_0

    .line 25257
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25259
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest:Z

    .line 25260
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->reconstructDatabaseRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    .line 25261
    return-object p0
.end method

.method public setRefundRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24816
    if-nez p1, :cond_0

    .line 24817
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24819
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest:Z

    .line 24820
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->refundRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    .line 24821
    return-object p0
.end method

.method public setRemoveAssetRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24996
    if-nez p1, :cond_0

    .line 24997
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24999
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest:Z

    .line 25000
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->removeAssetRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    .line 25001
    return-object p0
.end method

.method public setRequestSpecificProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24636
    if-nez p1, :cond_0

    .line 24637
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24639
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties:Z

    .line 24640
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->requestSpecificProperties_:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    .line 24641
    return-object p0
.end method

.method public setRestoreApplicationsRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 25016
    if-nez p1, :cond_0

    .line 25017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25019
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest:Z

    .line 25020
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->restoreApplicationsRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    .line 25021
    return-object p0
.end method

.method public setSubCategoriesRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24856
    if-nez p1, :cond_0

    .line 24857
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24859
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest:Z

    .line 24860
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->subCategoriesRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    .line 24861
    return-object p0
.end method

.method public setUninstallReasonRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;
    .locals 1
    .parameter "value"

    .prologue
    .line 24876
    if-nez p1, :cond_0

    .line 24877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24879
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest:Z

    .line 24880
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->uninstallReasonRequest_:Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    .line 24881
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
    .line 25427
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRequestSpecificProperties()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25428
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRequestSpecificProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$RequestSpecificPropertiesProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25430
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25431
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AssetsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25433
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCommentsRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25434
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCommentsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CommentsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25436
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasModifyCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25437
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getModifyCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25439
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchasePostRequest()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25440
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchasePostRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25442
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseOrderRequest()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25443
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseOrderRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseOrderRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25445
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasContentSyncRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25446
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getContentSyncRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25448
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25449
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25451
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetImageRequest()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25452
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetImageRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetImageRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25454
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRefundRequest()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25455
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRefundRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RefundRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25457
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25458
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25460
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasSubCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25461
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getSubCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetSubCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25463
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasUninstallReasonRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25464
    const/16 v0, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getUninstallReasonRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$UninstallReasonRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25466
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRateCommentRequest()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25467
    const/16 v0, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRateCommentRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RateCommentRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25469
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckLicenseRequest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 25470
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckLicenseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25472
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetMarketMetadataRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 25473
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetMarketMetadataRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25475
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCategoriesRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 25476
    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCategoriesRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCategoriesRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25478
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetCarrierInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 25479
    const/16 v0, 0x16

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetCarrierInfoRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetCarrierInfoRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25481
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRemoveAssetRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 25482
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRemoveAssetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RemoveAssetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25484
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasRestoreApplicationsRequest()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 25485
    const/16 v0, 0x18

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getRestoreApplicationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25487
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasQuerySuggestionRequest()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25488
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getQuerySuggestionRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$QuerySuggestionRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25490
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasBillingEventRequest()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 25491
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getBillingEventRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25493
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalRequest()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 25494
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25496
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalDetailsRequest()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 25497
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalDetailsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalDetailsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25499
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalCreateAccountRequest()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 25500
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalCreateAccountRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCreateAccountRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25502
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalPreapprovalCredentialsRequest()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 25503
    const/16 v0, 0x1e

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalPreapprovalCredentialsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalPreapprovalCredentialsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25505
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppRestoreTransactionsRequest()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 25506
    const/16 v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppRestoreTransactionsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25508
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasInAppPurchaseInformationRequest()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 25509
    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getInAppPurchaseInformationRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25511
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasCheckForNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 25512
    const/16 v0, 0x21

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getCheckForNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25514
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasAckNotificationsRequest()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 25515
    const/16 v0, 0x22

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getAckNotificationsRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25517
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPurchaseProductRequest()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 25518
    const/16 v0, 0x23

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPurchaseProductRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseProductRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25520
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasReconstructDatabaseRequest()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 25521
    const/16 v0, 0x24

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getReconstructDatabaseRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$ReconstructDatabaseRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25523
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasPaypalMassageAddressRequest()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 25524
    const/16 v0, 0x25

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getPaypalMassageAddressRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalMassageAddressRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25526
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->hasGetAddressSnippetRequest()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 25527
    const/16 v0, 0x26

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;->getGetAddressSnippetRequest()Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 25529
    :cond_21
    return-void
.end method
