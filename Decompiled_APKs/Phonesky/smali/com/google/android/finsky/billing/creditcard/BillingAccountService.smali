.class public Lcom/google/android/finsky/billing/creditcard/BillingAccountService;
.super Landroid/app/Service;
.source "BillingAccountService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataErrorListener;,
        Lcom/google/android/finsky/billing/creditcard/BillingAccountService$GetMarketMetadataListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/api/DfeApi;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/toolbox/Authenticator;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->checkValidInstrument(Lcom/android/volley/toolbox/Authenticator;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/VolleyError;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->convertErrorCode(Lcom/android/volley/VolleyError;)I

    move-result v0

    return v0
.end method

.method private checkPromoOffers(Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 14
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v13, -0x4

    const/4 v12, 0x0

    .line 174
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v5, result:Landroid/os/Bundle;
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v12}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 176
    .local v7, semaphore:Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v1, p1, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 178
    .local v2, authenticator:Lcom/android/volley/toolbox/Authenticator;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 179
    .local v4, invalidCheckoutToken:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {v2}, Lcom/android/volley/toolbox/Authenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, authToken:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v9

    .line 181
    .local v9, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics(Ljava/lang/String;)Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v8

    .line 182
    .local v8, analytics:Lcom/google/android/finsky/analytics/Analytics;
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$2;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/util/concurrent/Semaphore;)V

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;

    invoke-direct {v1, p0, v5, v7}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$3;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Landroid/os/Bundle;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v9, v3, v0, v1}, Lcom/google/android/finsky/api/DfeApi;->checkPromoOffers(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 225
    const-wide/16 v0, 0x2d

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v0, v1, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string v0, "result_code"

    const/4 v1, -0x4

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, -0x3

    invoke-static {v8, v0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logOfferResultCode(Lcom/google/android/finsky/analytics/Analytics;I)V

    .line 233
    new-instance v0, Lcom/android/volley/AuthFailureError;

    invoke-direct {v0}, Lcom/android/volley/AuthFailureError;-><init>()V

    throw v0

    .line 228
    :catch_0
    move-exception v10

    .line 229
    .local v10, e:Ljava/lang/InterruptedException;
    const-string v0, "result_code"

    invoke-virtual {v5, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 235
    .end local v10           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v0, "result_code"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 236
    .local v11, resultCode:I
    invoke-static {v8, v11}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logOfferResultCode(Lcom/google/android/finsky/analytics/Analytics;I)V

    .line 237
    const-string v0, "CheckPromoOffers result: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v12

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    return-object v5
.end method

.method private checkValidInstrument(Lcom/android/volley/toolbox/Authenticator;Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;[ILjava/util/concurrent/Semaphore;)V
    .locals 8
    .parameter "authenticator"
    .parameter "dfeApi"
    .parameter "checkoutToken"
    .parameter "resultCodeOut"
    .parameter "semaphore"

    .prologue
    .line 298
    const/4 v7, 0x0

    new-instance v0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$4;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/android/volley/toolbox/Authenticator;Ljava/lang/String;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    new-instance v1, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;

    invoke-direct {v1, p0, p2, p4, p5}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$5;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;Lcom/google/android/finsky/api/DfeApi;[ILjava/util/concurrent/Semaphore;)V

    invoke-interface {p2, p3, v7, v0, v1}, Lcom/google/android/finsky/api/DfeApi;->checkInstrument(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 324
    return-void
.end method

.method private convertErrorCode(Lcom/android/volley/VolleyError;)I
    .locals 1
    .parameter "error"

    .prologue
    .line 327
    instance-of v0, p1, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, -0x1

    .line 336
    :goto_0
    return v0

    .line 329
    :cond_0
    instance-of v0, p1, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_1

    .line 330
    const/4 v0, -0x2

    goto :goto_0

    .line 331
    :cond_1
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_2

    .line 332
    const/4 v0, -0x3

    goto :goto_0

    .line 333
    :cond_2
    instance-of v0, p1, Lcom/android/volley/TimeoutError;

    if-eqz v0, :cond_3

    .line 334
    const/4 v0, -0x4

    goto :goto_0

    .line 336
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logOfferResultCode(Lcom/google/android/finsky/analytics/Analytics;I)V
    .locals 5
    .parameter "analytics"
    .parameter "resultCode"

    .prologue
    .line 242
    if-lez p1, :cond_0

    const-string v0, "promoOfferCheck"

    .line 244
    .local v0, tag:Ljava/lang/String;
    :goto_0
    const-string v1, "externalPackage"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void

    .line 242
    .end local v0           #tag:Ljava/lang/String;
    :cond_0
    const-string v0, "promoOfferCheckError"

    goto :goto_0
.end method

.method private static logResult(Lcom/google/android/finsky/api/DfeApi;I)V
    .locals 5
    .parameter "dfeApi"
    .parameter "result"

    .prologue
    .line 347
    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    .line 348
    .local v0, analytics:Lcom/google/android/finsky/analytics/Analytics;
    const-string v1, "externalPackage"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInstrument?result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/analytics/Analytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private static returnResult(Lcom/google/android/finsky/api/DfeApi;I[ILjava/util/concurrent/Semaphore;)V
    .locals 1
    .parameter "dfeApi"
    .parameter "result"
    .parameter "resultOut"
    .parameter "semaphore"

    .prologue
    .line 341
    invoke-static {p0, p1}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService;->logResult(Lcom/google/android/finsky/api/DfeApi;I)V

    .line 342
    const/4 v0, 0x0

    aput p1, p2, v0

    .line 343
    invoke-virtual {p3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 344
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/billing/creditcard/BillingAccountService$1;-><init>(Lcom/google/android/finsky/billing/creditcard/BillingAccountService;)V

    return-object v0
.end method
