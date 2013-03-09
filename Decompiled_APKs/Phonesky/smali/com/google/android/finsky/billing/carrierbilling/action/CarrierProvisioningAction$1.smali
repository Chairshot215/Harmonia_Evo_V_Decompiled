.class Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

.field final synthetic val$carrierId:Ljava/lang/String;

.field final synthetic val$successRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->val$carrierId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->val$successRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)V
    .locals 10
    .parameter "provisioning"

    .prologue
    const/4 v9, 0x0

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, now:J
    if-nez p1, :cond_1

    .line 126
    const-string v6, "Fetching provisioning returned null."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    sget-object v6, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRetryMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 128
    .local v4, retryInterval:J
    sget-object v6, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    add-long v7, v0, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 131
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->val$carrierId:Ljava/lang/String;

    const-string v7, "SERVER"

    invoke-static {v6, v9, v7}, Lcom/google/android/finsky/billing/BillingEventRecorder;->recordError(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    .end local v4           #retryInterval:J
    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->val$successRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    .line 149
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->val$successRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 151
    :cond_0
    return-void

    .line 135
    :cond_1
    sget-object v6, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRefreshFrequencyMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 137
    .local v2, refreshInterval:J
    sget-object v6, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    add-long v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 140
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    #getter for: Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->mDcbStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-static {v6}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->access$000(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;)Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->setProvisioning(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)V

    .line 142
    iget-object v6, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->val$carrierId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->isProvisioned()Z

    move-result v7

    invoke-static {v6, v9, v7}, Lcom/google/android/finsky/billing/BillingEventRecorder;->recordSuccess(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$1;->onResponse(Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;)V

    return-void
.end method
