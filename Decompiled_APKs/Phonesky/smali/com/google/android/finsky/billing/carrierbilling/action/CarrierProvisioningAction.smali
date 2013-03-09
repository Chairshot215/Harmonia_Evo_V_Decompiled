.class public Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"


# instance fields
.field private final mDcbApi:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

.field private final mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->createDcbApi()Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;-><init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;)V
    .locals 0
    .parameter "storage"
    .parameter "dcbApi"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    .line 44
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbApi:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    return-object v0
.end method

.method private fetchProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 1
    .parameter "acceptedTosVersion"
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;>;"
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbApi:Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/billing/carrierbilling/api/DcbApi;->getProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 108
    return-void
.end method

.method private fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "acceptedTosVersion"
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 112
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-virtual {v4}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    .line 113
    .local v3, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-nez v3, :cond_1

    .line 114
    if-eqz p3, :cond_0

    .line 115
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getId()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, carrierId:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 154
    .local v2, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;>;"
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;

    invoke-direct {v1, p0, v0, p3}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;-><init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 181
    .local v1, errorListener:Lcom/android/volley/Response$ErrorListener;
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->updateBillingPreferences(J)V

    goto :goto_0
.end method

.method public static shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z
    .locals 9
    .parameter "carrierBillingStorage"

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;JJJJ)Z

    move-result v0

    return v0
.end method

.method static shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;JJJJ)Z
    .locals 7
    .parameter "carrierBillingStorage"
    .parameter "now"
    .parameter "awakeTime"
    .parameter "lastCheck"
    .parameter "earliestCheck"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 197
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v2

    .line 198
    .local v2, params:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getGetProvisioningUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 199
    :cond_0
    const-string v3, "Required CarrierBillingParams missing. Shouldn\'t fetch provisioning."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 218
    :cond_1
    :goto_0
    return v3

    .line 203
    :cond_2
    sub-long v5, p1, p5

    cmp-long v5, v5, p3

    if-lez v5, :cond_4

    move v1, v3

    .line 204
    .local v1, hasBootedSinceLastCheck:Z
    :goto_1
    cmp-long v5, p1, p7

    if-lez v5, :cond_5

    move v0, v3

    .line 207
    .local v0, afterEarliestPerformTime:Z
    :goto_2
    if-nez v0, :cond_1

    .line 212
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isProvisioned(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v1, :cond_1

    :cond_3
    move v3, v4

    .line 218
    goto :goto_0

    .end local v0           #afterEarliestPerformTime:Z
    .end local v1           #hasBootedSinceLastCheck:Z
    :cond_4
    move v1, v4

    .line 203
    goto :goto_1

    .restart local v1       #hasBootedSinceLastCheck:Z
    :cond_5
    move v0, v4

    .line 204
    goto :goto_2
.end method

.method private updateBillingPreferences(J)V
    .locals 7
    .parameter "now"

    .prologue
    .line 225
    sget-object v2, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRefreshFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v2, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRetryMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 227
    .local v0, interval:J
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    add-long v3, p1, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 229
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 230
    return-void
.end method


# virtual methods
.method public forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "successRunnable"
    .parameter "errorRunnable"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public forceRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .parameter "successRunnable"
    .parameter "errorRunnable"
    .parameter "acceptedTosVersion"

    .prologue
    .line 102
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "finishRunnable"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->shouldFetchProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 84
    :cond_1
    const-string v0, "No need to fetch provisioning from carrier."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public runIfNotOnWifi(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->shouldRunIfNotOnWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->run(Ljava/lang/Runnable;)V

    .line 55
    :cond_0
    return-void
.end method

.method public shouldRunIfNotOnWifi(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 62
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    .local v0, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 65
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    :cond_0
    const/4 v2, 0x0

    .line 68
    :cond_1
    return v2
.end method
