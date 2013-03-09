.class public Lcom/google/android/vending/remoting/api/VendingApi;
.super Ljava/lang/Object;
.source "VendingApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;
    }
.end annotation


# instance fields
.field private final mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/vending/remoting/api/VendingApiContext;)V
    .locals 0
    .parameter "requestQueue"
    .parameter "apiContext"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 67
    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    .line 68
    return-void
.end method


# virtual methods
.method public ackNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$AckNotificationsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    .line 186
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 187
    return-void
.end method

.method public checkForPendingNotifications(Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter

    .prologue
    .line 159
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;-><init>()V

    .line 160
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckForNotificationsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    new-instance v4, Lcom/google/android/vending/remoting/api/VendingApi$1;

    invoke-direct {v4, p0}, Lcom/google/android/vending/remoting/api/VendingApi$1;-><init>(Lcom/google/android/vending/remoting/api/VendingApi;)V

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 170
    return-void
.end method

.method public checkLicense(Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$CheckLicenseResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 122
    return-void
.end method

.method public flagAsset(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;-><init>()V

    .line 84
    invoke-virtual {v2, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setAssetId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 85
    invoke-virtual {v2, p2}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagType(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 86
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {v2, p3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;->setFlagMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    .line 89
    :cond_0
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 93
    return-void
.end method

.method public getApiContext()Lcom/google/android/vending/remoting/api/VendingApiContext;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    return-object v0
.end method

.method public getBillingCountries(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataRequestProto;-><init>()V

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto;

    new-instance v4, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;

    invoke-direct {v4, p1}, Lcom/google/android/vending/remoting/api/VendingApi$CountriesConverter;-><init>(Lcom/android/volley/Response$Listener;)V

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 256
    return-void
.end method

.method public getInAppPurchaseInformation(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppPurchaseInformationResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 137
    return-void
.end method

.method public getMetadata(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;IILcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter "metadataRequest"
    .parameter "deviceConfigHash"
    .parameter "appVersion"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;",
            "II",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;>;"
    new-instance v0, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataRequestProto;IILcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V

    .line 107
    .local v0, request:Lcom/google/android/vending/remoting/api/GetMarketMetadataRequest;
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 108
    return-void
.end method

.method public recordBillingEvent(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 238
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingEventResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    .line 242
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 243
    return-void
.end method

.method public restoreApplications(Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$RestoreApplicationsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    .line 202
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 203
    return-void
.end method

.method public restoreInAppTransactions(Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$InAppRestoreTransactionsResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 152
    return-void
.end method

.method public syncContent(Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncRequestProto;

    const-class v3, Lcom/google/android/vending/remoting/protos/VendingProtos$ContentSyncResponseProto;

    iget-object v5, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/vending/remoting/api/VendingRequest;->make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;

    move-result-object v0

    .line 218
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    const-string v2, "X-Public-Android-Id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/vending/remoting/api/VendingRequest;->addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/vending/remoting/api/VendingRequest;->setAvoidBulkCancel()V

    .line 224
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApi;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 225
    return-void
.end method
