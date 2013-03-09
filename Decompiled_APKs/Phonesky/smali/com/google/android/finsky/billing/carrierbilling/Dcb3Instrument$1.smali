.class final Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;
.super Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingFop;
.source "Dcb3Instrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->registerWithFactory(Lcom/google/android/finsky/billing/InstrumentFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingFop;-><init>()V

    return-void
.end method

.method private storeDcb3Status(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 2
    .parameter "instrument"

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->hasCarrierBillingStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->getCarrierBillingStatus()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;

    move-result-object v0

    .line 111
    .local v0, status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->storeDcbStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;)V

    .line 113
    .end local v0           #status:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierBillingInstrumentStatus;
    :cond_0
    return-void
.end method


# virtual methods
.method public canAdd()Z
    .locals 1

    .prologue
    .line 117
    #calls: Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->canAssociate()Z
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->access$000()Z

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Landroid/os/Bundle;)Lcom/google/android/finsky/billing/BillingFlow;
    .locals 10
    .parameter "context"
    .parameter "listener"
    .parameter "parameters"

    .prologue
    .line 73
    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v7

    .line 75
    .local v7, account:Landroid/accounts/Account;
    if-nez v7, :cond_0

    .line 76
    const-string v0, "Invalid account passed in parameters."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iget-object v1, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi(Ljava/lang/String;)Lcom/google/android/finsky/api/DfeApi;

    move-result-object v4

    .line 80
    .local v4, dfeApi:Lcom/google/android/finsky/api/DfeApi;
    new-instance v9, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    sget-object v0, Lcom/google/android/finsky/config/G;->checkoutAuthTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v9, v1, v7, v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 82
    .local v9, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v3, Lcom/google/android/finsky/billing/AsyncAuthenticator;

    invoke-direct {v3, v9}, Lcom/google/android/finsky/billing/AsyncAuthenticator;-><init>(Lcom/android/volley/toolbox/Authenticator;)V

    .line 83
    .local v3, asyncAuthenticator:Lcom/google/android/finsky/billing/AsyncAuthenticator;
    new-instance v5, Lcom/google/android/finsky/analytics/DfeAnalytics;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v5, v0, v4}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V

    .line 86
    .local v5, analytics:Lcom/google/android/finsky/analytics/Analytics;
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/billing/carrierbilling/flow/CreateDcb3Flow;-><init>(Lcom/google/android/finsky/billing/BillingFlowContext;Lcom/google/android/finsky/billing/BillingFlowListener;Lcom/google/android/finsky/billing/AsyncAuthenticator;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/analytics/Analytics;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public get(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)Lcom/google/android/finsky/billing/Instrument;
    .locals 6
    .parameter "checkoutOption"
    .parameter "displayIcon"

    .prologue
    .line 94
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
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

    .line 98
    .local v0, dcbDisplayName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->setFormOfPayment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 100
    .end local v0           #dcbDisplayName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasInstrument()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrument()Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;->storeDcb3Status(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 103
    :cond_1
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;

    invoke-direct {v1, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;-><init>(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public getCreateIntent(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Ljava/lang/String;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 9
    .parameter "instrument"
    .parameter "accountName"
    .parameter "backendId"
    .parameter "uiMode"
    .parameter "referrerUrl"
    .parameter "referrerListCookie"

    .prologue
    .line 139
    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/activities/FinskyCreateInstrumentActivity;->createIntent(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;ILcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 143
    .local v8, intent:Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "dcb_instrument"

    invoke-static {p1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string v0, "extra_paramters"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 148
    return-object v8
.end method

.method public getPrepareParams()Ljava/util/Map;
    .locals 1
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
    .line 127
    #calls: Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->getDcb3UserIdentifierParams()Ljava/util/Map;
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument;->access$100()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public updateStatus(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V
    .locals 0
    .parameter "instrument"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/Dcb3Instrument$1;->storeDcb3Status(Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 133
    return-void
.end method
