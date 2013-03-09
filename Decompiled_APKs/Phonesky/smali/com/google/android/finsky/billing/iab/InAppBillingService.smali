.class public Lcom/google/android/finsky/billing/iab/InAppBillingService;
.super Landroid/app/Service;
.source "InAppBillingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;,
        Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mBinder:Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/google/android/finsky/config/G;->iabV3VerboseLogEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 160
    new-instance v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mBinder:Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->isDocumentInLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/billing/iab/InAppBillingService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->makePurchaseIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->populateInAppPurchasesForPackage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/finsky/billing/iab/InAppBillingService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/billing/iab/InAppBillingService;Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->buildDetailsJson(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildDetailsJson(Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;)Ljava/lang/String;
    .locals 7
    .parameter "entry"

    .prologue
    const/4 v6, 0x0

    .line 558
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 560
    .local v0, details:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, docId:Ljava/lang/String;
    const-string v3, "productId"

    invoke-static {v1}, Lcom/google/android/finsky/utils/DocUtils;->extractSkuForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v3, "type"

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getInAppType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    const-string v3, "price"

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v3, "title"

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v3, "description"

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v1           #docId:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 566
    :catch_0
    move-exception v2

    .line 567
    .local v2, e:Lorg/json/JSONException;
    const-string v3, "Exception when creating json: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private buildDocId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "itemId"
    .parameter "itemType"
    .parameter "packageName"

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 4
    .parameter "version"

    .prologue
    const/4 v0, 0x3

    .line 387
    if-lt p1, v0, :cond_0

    if-le p1, v0, :cond_1

    .line 388
    :cond_0
    const-string v0, "Unsupported billing API version: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    .line 391
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0
.end method

.method private checkBillingEnabled(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 3
    .parameter "billingApiVersion"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->checkBillingApiVersionSupport(I)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    move-result-object v0

    .line 426
    .local v0, response:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    if-eq v0, v1, :cond_0

    .line 437
    .end local v0           #response:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    :goto_0
    return-object v0

    .line 429
    .restart local v0       #response:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    :cond_0
    if-nez p2, :cond_1

    .line 430
    const-string v1, "No packageName given!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0

    .line 433
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->isBillingEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 434
    const-string v1, "Billing unavailable for this package."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0

    .line 437
    :cond_2
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0
.end method

.method private checkTypeSupported(ILjava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 3
    .parameter "billingApiVersion"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 402
    const-string v0, "inapp"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subs"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    const-string v0, "Unknown item type specified %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    .line 413
    :goto_0
    return-object v0

    .line 407
    :cond_0
    const-string v0, "subs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const-string v0, "Subscriptions are not supported"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0

    .line 413
    :cond_1
    sget-object v0, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0
.end method

.method private computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3
    .parameter "packageInfo"

    .prologue
    .line 625
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 626
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/google/android/finsky/utils/Md5Util;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private consumeIabPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 11
    .parameter "packageName"
    .parameter "purchaseToken"

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 654
    new-instance v9, Ljava/util/concurrent/Semaphore;

    invoke-direct {v9, v10}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 655
    .local v9, semaphore:Ljava/util/concurrent/Semaphore;
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    .line 656
    .local v6, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    iget-object v3, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    .line 657
    .local v0, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-array v8, v2, [Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    aput-object v1, v8, v10

    .line 658
    .local v8, responseCode:[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    new-instance v4, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;

    invoke-direct {v4, p0, v6, v8, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$3;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/accounts/Account;[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;Ljava/util/concurrent/Semaphore;)V

    new-instance v5, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;

    invoke-direct {v5, p0, v8, v9}, Lcom/google/android/finsky/billing/iab/InAppBillingService$4;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;[Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;Ljava/util/concurrent/Semaphore;)V

    move-object v1, p2

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->consumePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 694
    const-wide/16 v1, 0x14

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-object v1

    .line 697
    :catch_0
    move-exception v7

    .line 698
    .local v7, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0

    .line 700
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_0
    aget-object v1, v8, v10

    goto :goto_0
.end method

.method private fetchSkuDetails(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .parameter "packageName"
    .parameter "skus"
    .parameter "type"
    .parameter "response"

    .prologue
    .line 510
    const-string v7, "ITEM_ID_LIST"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 511
    .local v6, skuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_2

    .line 512
    :cond_0
    const-string v7, "RESPONSE_CODE"

    sget-object v8, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p4, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 515
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 516
    .local v2, docIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v4, v7, :cond_3

    .line 517
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, p3, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->buildDocId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 519
    :cond_3
    new-instance v5, Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 520
    .local v5, semaphore:Ljava/util/concurrent/Semaphore;
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 521
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    .line 522
    .local v1, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v7, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;

    invoke-direct {v7, p0, p4, v5}, Lcom/google/android/finsky/billing/iab/InAppBillingService$1;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V

    new-instance v8, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;

    invoke-direct {v8, p0, p4, v5}, Lcom/google/android/finsky/billing/iab/InAppBillingService$2;-><init>(Lcom/google/android/finsky/billing/iab/InAppBillingService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2, v7, v8}, Lcom/google/android/finsky/api/DfeApi;->getDetails(Ljava/util/Collection;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 545
    const-wide/16 v7, 0x14

    :try_start_0
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v7, v8, v9}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 546
    const-string v7, "RESPONSE_CODE"

    sget-object v8, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p4, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v3

    .line 549
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v7, "RESPONSE_CODE"

    sget-object v8, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->responseCode()I

    move-result v8

    invoke-virtual {p4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private getInAppType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "docId"

    .prologue
    .line 582
    const-string v0, "inapp:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "inapp"

    .line 587
    :goto_0
    return-object v0

    .line 584
    :cond_0
    const-string v0, "subs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    const-string v0, "subs"

    goto :goto_0

    .line 587
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 465
    :goto_0
    return-object v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "cannot find package name: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 476
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    .line 477
    .local v1, appStates:Lcom/google/android/finsky/appstate/AppStates;
    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/AppStates;->blockingLoad()V

    .line 478
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/appstate/AppStates;->getApp(Ljava/lang/String;)Lcom/google/android/finsky/appstate/AppStates$AppState;

    move-result-object v0

    .line 479
    .local v0, appState:Lcom/google/android/finsky/appstate/AppStates$AppState;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v5, :cond_0

    .line 480
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    .line 481
    .local v3, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-virtual {v3}, Lcom/google/android/finsky/library/Libraries;->blockingLoad()V

    .line 482
    iget-object v5, v0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget-object v5, v5, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->certificateHashes:[Ljava/lang/String;

    invoke-virtual {v3, p1, v5}, Lcom/google/android/finsky/library/Libraries;->getAppOwners(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 484
    .local v4, ownerAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 485
    const-string v5, "%s: Account determined from library ownership."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/Account;

    .line 496
    .end local v3           #libraries:Lcom/google/android/finsky/library/Libraries;
    .end local v4           #ownerAccounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    :goto_0
    return-object v5

    .line 490
    :cond_0
    invoke-static {p0}, Lcom/google/android/finsky/api/AccountHandler;->getFirstAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    .line 491
    .local v2, defaultAccount:Landroid/accounts/Account;
    if-eqz v2, :cond_1

    .line 492
    const-string v5, "%s: Account from first account."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v2

    .line 493
    goto :goto_0

    .line 495
    :cond_1
    const-string v5, "%s: No account found."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isBillingEnabledForAccount(Landroid/accounts/Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 451
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/billing/InAppBillingSetting;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBillingEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->isBillingEnabledForAccount(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method private isDocumentInLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "itemType"
    .parameter "itemId"
    .parameter "packageName"

    .prologue
    .line 574
    invoke-direct {p0, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 575
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    .line 576
    .local v1, libraries:Lcom/google/android/finsky/library/Libraries;
    invoke-virtual {v1}, Lcom/google/android/finsky/library/Libraries;->blockingLoad()V

    .line 577
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    .line 578
    .local v2, library:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->buildDocId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppEntry(Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryInAppEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static varargs logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "function"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 715
    sget-boolean v0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    :cond_0
    return-void
.end method

.method public static logResponseBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "function"
    .parameter "response"

    .prologue
    .line 711
    const-string v0, "Response bundle: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    return-void
.end method

.method public static logResponseCode(Ljava/lang/String;Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;)V
    .locals 3
    .parameter "function"
    .parameter "responseCode"

    .prologue
    .line 707
    const-string v0, "Response code: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->logEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method private makePurchaseIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 610
    invoke-direct {p0, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 611
    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->computeSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    .line 615
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, p3, p4, p2}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->buildDocId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v0, p1

    move-object v2, p2

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/activities/IabActivity;->getIntent(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 618
    const-class v1, Lcom/google/android/finsky/activities/IabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 619
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 621
    return-object v0
.end method

.method private populateInAppPurchasesForPackage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "packageName"
    .parameter "currentPurchases"

    .prologue
    .line 634
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPreferredAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 635
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v5

    .line 636
    .local v5, library:Lcom/google/android/finsky/library/AccountLibrary;
    invoke-virtual {v5, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getInAppPurchasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 637
    .local v4, inAppList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryInAppEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v1, docIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v7, transactionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v6, signatureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/library/LibraryInAppEntry;

    .line 641
    .local v2, entry:Lcom/google/android/finsky/library/LibraryInAppEntry;
    iget-object v8, v2, Lcom/google/android/finsky/library/LibraryInAppEntry;->docId:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/finsky/utils/DocUtils;->extractSkuForInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v8, v2, Lcom/google/android/finsky/library/LibraryInAppEntry;->signedPurchaseData:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v8, v2, Lcom/google/android/finsky/library/LibraryInAppEntry;->signature:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    .end local v2           #entry:Lcom/google/android/finsky/library/LibraryInAppEntry;
    :cond_0
    const-string v8, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {p2, v8, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 646
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 647
    const-string v8, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {p2, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 648
    return-void
.end method

.method private validatePackageName(Ljava/lang/String;)Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 375
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, packages:[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v2, v1, v4

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_OK:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    .line 380
    :goto_0
    return-object v2

    .line 379
    :cond_0
    const-string v2, "Package name %s does not match the Uid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    sget-object v2, Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/google/android/finsky/billing/iab/InAppBillingService$ResponseCode;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mBinder:Lcom/google/android/finsky/billing/iab/InAppBillingService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/iab/InAppBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/iab/InAppBillingService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 167
    return-void
.end method
