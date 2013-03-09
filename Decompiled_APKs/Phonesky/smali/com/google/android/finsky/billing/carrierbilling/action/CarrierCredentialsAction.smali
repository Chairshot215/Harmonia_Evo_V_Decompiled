.class public Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;
.super Ljava/lang/Object;
.source "CarrierCredentialsAction.java"


# instance fields
.field private final mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)V
    .locals 0
    .parameter "dcbStorage"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "provisioningId"
    .parameter "password"
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 36
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->createDcbApi()Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    move-result-object v1

    .line 37
    .local v1, dcbApi:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;
    iget-object v5, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v4

    .line 38
    .local v4, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-nez v4, :cond_0

    .line 40
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 92
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getId()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, carrierId:Ljava/lang/String;
    new-instance v3, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;

    invoke-direct {v3, p0, v0, p3}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 67
    .local v3, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingCredentials;>;"
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;

    invoke-direct {v2, p0, v0, p4}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierCredentialsAction;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 91
    .local v2, errorListener:Lcom/android/volley/Response$ErrorListener;
    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_0
.end method
