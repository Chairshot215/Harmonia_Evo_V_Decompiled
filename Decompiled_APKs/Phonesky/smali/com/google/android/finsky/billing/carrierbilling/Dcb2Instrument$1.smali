.class final Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument$1;
.super Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingFop;
.source "Dcb2Instrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingFop;-><init>()V

    return-void
.end method


# virtual methods
.method public canAdd()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isRadioNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 10
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 68
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    .line 70
    .local v7, account:Landroid/accounts/Account;
    if-nez v7, :cond_0

    .line 71
    const-string v0, "Invalid account passed in parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    .line 75
    .local v4, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v9, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v9, v1, v7, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 77
    .local v9, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v3, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v3, v9}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    .line 78
    .local v3, asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    new-instance v5, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v0, v4}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    .line 80
    .local v5, analytics:Lcom/google/android/finsky/analytics/Analytics;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateCarrierBillingFlow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public get(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;
    .locals 6
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 88
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const v2, 0x7f070055

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/FinskyApp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, dcbDisplayName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setFormOfPayment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 92
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;

    invoke-direct {v1, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/Dcb2Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public getPrepareParams()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v2

    .line 109
    .local v2, storage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v1

    .line 110
    .local v1, provisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    if-nez v1, :cond_0

    .line 113
    new-instance v6, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    invoke-direct {v6}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->run(Ljava/lang/Runnable;)V

    .line 132
    :goto_0
    return-object v5

    .line 117
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 119
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "dcbch"

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getCurrentSimIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTransactionLimit()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 122
    .local v4, transactionLimit:Ljava/lang/Long;
    if-eqz v4, :cond_1

    .line 123
    const-string v5, "dcbtl"

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, subscriberCurrency:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 127
    const-string v5, "dcbsc"

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 131
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #subscriberCurrency:Ljava/lang/String;
    .end local v4           #transactionLimit:Ljava/lang/Long;
    :cond_3
    const-string v6, "Not provisioned, not including identifier with params"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
