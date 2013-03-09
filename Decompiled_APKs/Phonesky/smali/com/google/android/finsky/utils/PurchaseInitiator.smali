.class public Lcom/google/android/finsky/utils/PurchaseInitiator;
.super Ljava/lang/Object;
.source "PurchaseInitiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/volley/Response$Listener;
    .locals 6
    .parameter "account"
    .parameter "doc"
    .parameter "externalReferrer"
    .parameter "referrerCookie"
    .parameter "continueUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/PurchaseInitiator$1;-><init>(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createPurchaseErrorListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$ErrorListener;
    .locals 1
    .parameter "doc"

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseInitiator$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/PurchaseInitiator$2;-><init>(Lcom/google/android/finsky/api/model/Document;)V

    return-object v0
.end method

.method public static initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)V
    .locals 10
    .parameter "account"
    .parameter "doc"
    .parameter "externalReferrer"
    .parameter "continueUrl"
    .parameter "deliveryData"

    .prologue
    const/4 v8, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "Document does not contain AppDetails, cannot download: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    iget-object v4, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v9, "single_install"

    move-object v3, p4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 126
    return-void
.end method

.method public static makeFreePurchase(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "doc"
    .parameter "offerType"
    .parameter "externalReferrer"
    .parameter "referrerCookie"
    .parameter "continueUrl"

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    invoke-static {p0, p1, p3, p4, p5}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createFreePurchaseListener(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/volley/Response$Listener;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/finsky/utils/PurchaseInitiator;->createPurchaseErrorListener(Lcom/google/android/finsky/api/model/Document;)Lcom/android/volley/Response$ErrorListener;

    move-result-object v6

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 33
    return-void
.end method

.method public static processPurchaseStatusResponse(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;ZLjava/lang/String;)V
    .locals 8
    .parameter "account"
    .parameter "doc"
    .parameter "externalReferrer"
    .parameter "referrerCookie"
    .parameter "continueUrl"
    .parameter "response"
    .parameter "initiateAppDownload"
    .parameter "debugEventName"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 83
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasLibraryUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v2

    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v3

    invoke-interface {v2, p0, v3, p7}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v1

    .line 88
    .local v1, status:I
    if-ne v1, v6, :cond_1

    .line 89
    if-eqz p6, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 90
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasAppDeliveryData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {p5}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-static {p0, p1, p2, p4, v2}, Lcom/google/android/finsky/utils/PurchaseInitiator;->initiateDownload(Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;)V

    .line 103
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "purchaseFinished?doc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&status=%d&initiateAppDownload=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, logUrl:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    invoke-interface {v2, p2, p3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 94
    .end local v0           #logUrl:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/AppStates;->getInstallerDataStore()Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "No delivery data for %s, waiting for notification."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
