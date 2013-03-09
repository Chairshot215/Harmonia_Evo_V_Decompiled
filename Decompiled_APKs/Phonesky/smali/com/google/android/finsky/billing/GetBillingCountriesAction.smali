.class public Lcom/google/android/finsky/billing/GetBillingCountriesAction;
.super Ljava/lang/Object;
.source "GetBillingCountriesAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canSkip()Z
    .locals 4

    .prologue
    .line 30
    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_BILLING_COUNTRIES_REFRESH_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 31
    .local v0, lastRefresh:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->enoughTimePassed(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method enoughTimePassed(JJ)Z
    .locals 2
    .parameter "now"
    .parameter "lastRefresh"

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/finsky/config/G;->vendingBillingCountriesRefreshMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p3

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "account"
    .parameter "finishRunnable"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->canSkip()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 42
    :cond_0
    const-string v0, "Skip getting fresh list of billing countries."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/FinskyApp;->getVendingApi(Ljava/lang/String;)Lcom/google/android/vending/remoting/api/VendingApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction$1;-><init>(Lcom/google/android/finsky/billing/GetBillingCountriesAction;Ljava/lang/Runnable;)V

    new-instance v2, Lcom/google/android/finsky/billing/GetBillingCountriesAction$2;

    invoke-direct {v2, p0, p2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction$2;-><init>(Lcom/google/android/finsky/billing/GetBillingCountriesAction;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/remoting/api/VendingApi;->getBillingCountries(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_0
.end method
