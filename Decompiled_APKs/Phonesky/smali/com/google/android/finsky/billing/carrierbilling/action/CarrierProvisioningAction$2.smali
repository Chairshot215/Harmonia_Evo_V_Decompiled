.class Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;->fetchProvisioning(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

.field final synthetic val$carrierId:Ljava/lang/String;

.field final synthetic val$errorRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;->this$0:Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction;

    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;->val$carrierId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 12
    .parameter "error"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 157
    const-string v8, "CarrierProvisioningAction encountered an error: %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object p1, v9, v11

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->getLegacyErrorCode(Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, legacyMessage:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, exceptionMessage:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, exceptionType:Ljava/lang/String;
    const-string v8, "%s/%s/%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v11

    aput-object v0, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, message:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 167
    .local v4, now:J
    sget-object v8, Lcom/google/android/finsky/config/G;->vendingCarrierProvisioningRetryMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v8}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 168
    .local v6, retryInterval:J
    sget-object v8, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    add-long v9, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 170
    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;->val$carrierId:Ljava/lang/String;

    invoke-static {v8, v11, v3}, Lcom/google/android/finsky/billing/BillingEventRecorder;->recordError(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;->val$errorRunnable:Ljava/lang/Runnable;

    if-eqz v8, :cond_0

    .line 176
    iget-object v8, p0, Lcom/google/android/finsky/billing/carrierbilling/action/CarrierProvisioningAction$2;->val$errorRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 178
    :cond_0
    return-void
.end method
